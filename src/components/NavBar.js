import React from 'react'
import logoimg from '../images/ietlogo.png'
function NavBar() {
  return (
    <div className='navBar'>
    <a href='/'>
      <img className='logo' src={logoimg} alt='Institute of Engineering & Technology'></img>
    </a>
    </div>
  )
}

export default NavBar