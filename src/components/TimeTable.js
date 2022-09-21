import React from 'react'
import Day from './Day'


function TimeTable({ timeTableData }) {
  const daysName = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  return (
    <div>
      {daysName.map((day, index) => (
        <Day name={day} key={day} timeslots={timeTableData[index + 1]} />
      ))}
    </div>
  )
}

export default TimeTable
