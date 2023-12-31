import './App.css';
import {BrowserRouter,Routes, Route} from 'react-router-dom'
import Login from './Login';
import Register from './Register';
import Reset from './Reset';
import Dashboard from './Dashboard';

function App() {
  return (
    <div className="app">
      <BrowserRouter>
        <Routes>
          <Route exact path="/" element={<Login/>} />
          <Route exact path="/register" element={<Register/>} />
          <Route exact path="/reset" element={<Reset/>} />
          <Route exact path="/dashboard" element={<Dashboard/>} />
        </Routes>
      </BrowserRouter>

    </div>
  );
}
export default App;


