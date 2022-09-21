import React from 'react'
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome'
import { faCheck, faMusic, faShuffle, faXmark } from '@fortawesome/free-solid-svg-icons'

function StatusButton({setColor, setReason, status, setStatus}) {
  const clickHandlercomplete = () => {
    setColor("green")
    setReason(false)
    setStatus({...status,
      curStatus:"completed",
    })
  }
  const clickHandlerreshulded = () => {
    setColor("yellow")
    setReason(true)
    setStatus({...status,
      curStatus:"reshulded",
    })
  }
  const clickHandlernottaken = () => {
    setColor("red")
    setReason(true)
    setStatus({...status,
      curStatus:"not taken",
    })
  }
  return (
    <>
    <div 
        onClick={clickHandlercomplete}    
        className='statusbtn btn-check'
    >
            <FontAwesomeIcon icon={faCheck} />
    </div>
    <div
        onClick={clickHandlerreshulded}    
        className='statusbtn btn-shuffle'
    >
            <FontAwesomeIcon icon={faShuffle} />
    </div>
    <div
        onClick={clickHandlernottaken}   
        className='statusbtn btn-cross'
    >
            <FontAwesomeIcon icon={faXmark} />
    </div>
    </>
  )
}

export default StatusButton