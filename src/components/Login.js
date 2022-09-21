import React, { useState } from 'react'

function Login() {
  const [username, setUsername] = useState(null)
  const [password, setPassword] = useState(null)

  const submitHandler = async(e) => {
     await setUsername(e.target.parentNode.childNodes[0].childNodes[1].childNodes[0].value)
     await setPassword(e.target.parentNode.childNodes[1].childNodes[1].childNodes[0].value)
     console.log(username, password) 
    }

  return (
    <div className='login'>
      <div className='container'>
        <div className='username-container'>
            <label>Username</label>
            <div>
            <input type='text'></input> 
            </div>
        </div>
        <div className='password-container'>
            <label>Password</label>
            <div>
            <input type='password'></input>
            </div>
        </div>
        <div className='submit-btn' onClick={submitHandler}>
          Submit
        </div>
      </div>
    </div>
  )
}

export default Login