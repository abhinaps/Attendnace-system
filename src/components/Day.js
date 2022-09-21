import React from 'react'
import TimeSlot from './TimeSlot'

function Day({ name, timeslots }) {
  console.log(timeslots)
  const slots = timeslots
  return (
    <div className='day-container'>
      <div className='day-name'><h3>{name}</h3></div>
      <div className='day'>
        {slots.map((slot, index) => (
          <TimeSlot data={slot} key={index} />
        ))}
      </div>
    </div>
  )
}

export default Day