import React, { useState } from 'react'
import './Styles/App.scss'
import TimeTable from "./components/TimeTable";
import NavBar from './components/NavBar';
import Footer from './components/Footer';
import Login from './components/Login';
import Connection from './client/connection';
import Selection from './components/Selection';

function App() {

  const [timeTableData, setTimeTableData] = useState({})


  return (
    <div className="App">
      <NavBar />
      {/* <Login /> */}
      <Selection setTimeTableData={setTimeTableData} />
      {/* <TimeTable timeTableData={timeTableData} /> */}
      <Footer />
    </div>
  );
}

export default App;
