import React from 'react';
// const socket = new WebSocket('ws://localhost:5000');

const connection = () => {

    const openConnection = () => {
        const socket = new WebSocket('ws://localhost:5000');
        socket.addEventListener('open', function (event) {
            socket.send(JSON.stringify({
                "title": "fetch_data",
                "branch": 6,
                "sem": 9,
                "date": "05/05/2000"
            }));
        });

        socket.addEventListener('message', function (event) {
            const d = JSON.stringify(event.data)
            console.log(d);
        });

        // const contactServer = () => {
        //     socket.send(JSON.stringify({
        //         "title": "fetch_data",
        //         "branch": 6,
        //         "sem": 9,
        //         "date": "05/05/2000"
        //     }));
        // }
    }

    return (
        <div>
            <button onClick={openConnection}>Click Here</button>
        </div>
    )
}


export default connection