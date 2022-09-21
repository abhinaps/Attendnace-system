"""
This server help to connect application to database,
it use the flask module to get and send response to 
client, it also use mysql.connector for connect to database
server.
"""
import datetime
import websockets
import asyncio
import mysql.connector
import json

class Database:

    def __init__(self):
        self.connection = mysql.connector.connect(host="localhost",
                        database="ietdavv_db1",
                        user = "root",
                        password="rootpassword",
                        auth_plugin="mysql_native_password"
        )
        self.mycursor = self.connection.cursor()

    def fetch_data(self,query:str,args:tuple) -> list[tuple]:
        # fetch data from database
        self.mycursor.execute(query,args)
        data = self.mycursor.fetchall()
        return data

    def add_status(self,date:datetime,subject_id:int) -> None:
        # use to add row in status table
        query = "insert into status_table(date,subject_id,status,message) values (%s,%s,%s,%s)"
        self.mycursor.execute(query,(date,subject_id,1,""))
        self.connection.commit()

    def create_json_data(self,class_id:list,date:datetime) -> dict:
        # create response in json formate
        json_data = {}
        for i in class_id:
            data = self.fetch_data("select * from class_info_table where id = %s",(i[1],))
            for n in data:
                subject_fac_info = self.fetch_data("select subject_id,fac_id from class_table where id = %s",(n[1],))
                subject_info = self.fetch_data("select * from subject_table where id = %s",(subject_fac_info[0][0],))
                fac_info = self.fetch_data("select * from faculty_table where id = %s",(subject_fac_info[0][1],))
                room_info = self.fetch_data("select * from room_table where id = %s",(data[0][2],))
                time_slot_info = self.fetch_data("select * from time_slot_table where id = %s",(data[0][3],))
                status = self.fetch_data("select * from status_table where date = %s and subject_id = %s",(date,i[1],))
                if status == []:
                    self.add_status(date,i[1])
                    status = [[date,i[1],1,""]]                
                value = {"subject_info":{
                                        "name":subject_info[0][2],
                                        "code":subject_info[0][1],
                                        "theory_credit":subject_info[0][3],
                                        "practical_credit":subject_info[0][4]
                                    },
                                    "faculty_info":{
                                        "title":fac_info[0][1],
                                        "name":fac_info[0][2]+fac_info[0][3]
                                    },
                                    "room_no":{
                                        "room_no":room_info[0][1],
                                        "block":room_info[0][2],
                                        "capacity":room_info[0][3]
                                    },
                                    "time":{
                                        "start_time":str(time_slot_info[0][1]),
                                        "end_time":str(time_slot_info[0][2])
                                    },
                                    "status":status[0][2],
                                    "msg":status[0][3]
                                }
                if i[0] in json_data:
                    json_data[i[0]].append(value)
                else:
                    json_data[i[0]] = [value]
        return json_data

    def find_subject(self,json_data:dict) -> dict:
        # read json data and create response
        type = json_data["title"]
        if type == "fetch_data":
            branch = int(json_data["branch"])
            sem = int(json_data["sem"])            
            date = json_data["date"]
            d,m,y = map(int,date.split("/"))
            date = datetime.date(y,m,d)
            id = self.fetch_data("select id from branch_sem_table where branch = %s and sem = %s",(branch,sem))
            print(id)
            class_ids = self.fetch_data("select day,class_id from day_branch_table where branch_sem_id = %s",(id[0][0],))
            data = self.create_json_data(class_ids,date)
            return data
        elif type == "user_pass":
            pass
        else:
            pass

class server:
    def __init__(self:object) -> None:
        """ Server is working on python websocket which is simple socket but use
            different protocol instead of http , it use ws://localhost
        """
        self.dbase = Database()
        print("start the server....")
        self.server = websockets.serve(self.handler, "localhost", 5000)
        asyncio.get_event_loop().run_until_complete(self.server)
        asyncio.get_event_loop().run_forever()

    async def handler(self:object,websocket:object,path) -> None:
        data = await websocket.recv()
        data = json.loads(data)
        print(f"Got the data {data}")
        return_data = self.dbase.find_subject(data)
        print(f"return data: {return_data}")
        await websocket.send(json.dumps(return_data))

if __name__ == "__main__":
    node = server()
    print("server is now running.....")
    start_server = websockets.serve(node.handler, "localhost", 5000)
    