import React, {useState} from 'react'
import StatusButton from './StatusButton'

function TimeSlot() {
    const [color, setColor] = useState("white")
    const [isActive, setActive] = useState(true)
    const [reason, setReason] = useState(false)
    const [status, setStatus] = useState({
        curStatus:"",
        reason:""
    })
    const clickHandler = () => {
        setActive(cur => !cur)
    }
    const changeHandler = (e) => {
        const value = e.target.value
        console.log(value)
    }
    const submitHandler = (e) => {
        const value = e.target.parentNode.childNodes[2].value
        setStatus({...status,
        reason:value})
        console.log(status)
    }
  return (
    <div className={`slot ${color}`} >
        <div className='class-details'>
            <h4>Code</h4>
            <h5>Time</h5>
        </div>
    {isActive ? 
    (
        <>
        { reason ? ( <>
        <label>Reason:</label>
        <input type="text" onChange={changeHandler} />
        <button type="submit" onClick={submitHandler}>ok</button>
        </>
        ) : (<></>)
        }
        <div className='slot-btn'>
            <StatusButton 
                setColor={setColor} 
                setReason={setReason}
                status={status} 
                setStatus={setStatus} />
        </div>
        </>
    ) : (<></>)
    }
    </div>
  )
}

export default TimeSlot