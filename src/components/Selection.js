import React, { useState } from 'react'

const Selection = ({ setTimeTableData }) => {


    const [data, setdata] = useState(
        {
            "title": "fetch_data",
            "branch": "",
            "sem": "",
            "date": ""
        })

    const changeHandler = (e) => {
        const name = e.target.name
        let value = e.target.value
        console.log(value)
        setdata({ ...data, [name]: value })
    }



    const formateDate = (str) => {
        return str.split("-").reverse().join("/")
    }

    const openConnection = (info) => {
        const socket = new WebSocket('ws://localhost:5000');
        socket.addEventListener('open', function (event) {
            socket.send(JSON.stringify(info));
        });

        socket.addEventListener('message', function (event) {
            const d = JSON.parse(event.data)
            setTimeTableData(d)
            console.log(d[1])
        });
    }

    const submitHandler = (e) => {
        e.preventDefault()
        const newData = { ...data, "date": formateDate(data.date) }
        console.log(newData)
        openConnection(newData)
    }
    return (
        <>
            <form onSubmit={submitHandler} >
                <div className='branch'>
                    <label htmlFor='Branch'>Branch</label>
                    <select
                        value={data.branch} onChange={changeHandler}
                        name='branch' id='branch' >
                        <option value='9'>CSE</option>
                        <option value="IT">IT</option>
                        <option value="ETC">ETC</option>
                        <option value="8">EI</option>
                        <option value="Mechanical">Mechanical</option>
                        <option value="Civil">Civil</option>
                    </select>
                </div>

                <div className='sem'>
                    <label htmlFor='Semester' >Semester</label>
                    <input
                        value={data.sem} onChange={changeHandler}
                        name='sem' id='sem'
                        type="number"
                        min="1" max="8"
                        placeholder="Enter semester"
                    />
                </div>

                <div className='date'>
                    <label htmlFor='Date' >Date</label>
                    <input
                        type="date"
                        value={data.date} onChange={changeHandler}
                        name='date' id='date' />
                </div>

                <button type="submit">Submit</button>
            </form>

        </>
    )
}


export default Selection