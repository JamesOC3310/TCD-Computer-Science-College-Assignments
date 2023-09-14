import {useState, useEffect} from 'react'
import { Link, useNavigate } from 'react-router-dom'
import './Login.css'
import {auth, logInWithEmailAndPassword,  signInWithGoogle} from "./firebase";
import { useAuthState } from "react-firebase-hooks/auth";
import forge from 'node-forge';



function Login() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [user, loading, error] = useAuthState(auth);
    const [publicKey, setPublicKey] = useState(null);    //const pubKey = crypto.createECDH('secp521r1');

    
    //let tempPublicKey = pubKey.generateKeys();
    const navigate = useNavigate();
    useEffect(() => {
      if (loading) {
        // maybe trigger a loading screen
        return;
      }
      if (user) {
        const keypair = forge.pki.rsa.generateKeyPair({ bits: 2048 });
        const publicKey = forge.pki.publicKeyToPem(keypair.publicKey);
        setPublicKey(publicKey);
        navigate('/dashboard');
      }
      if (user) navigate("/dashboard");
    }, [user, loading, error, navigate]);

    

    return (
      <div className="login">
        <div className="login__container">
          <input
            type="text"
            className="login__textBox"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            placeholder="E-mail Address"
          />
          <input
            type="password"
            className="login__textBox"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            placeholder="Password"
          />
          <button
            className="login__btn"
            onClick={() => logInWithEmailAndPassword(email, password)}
            
          >
            Login
          </button>
          <button className="login__btn login__google" onClick={signInWithGoogle}>
            Login with Google
          </button>
          <div>
            <Link to="/reset">Forgot Password</Link>
          </div>
          <div>
            Don't have an account? <Link to="/register">Register</Link> now.
          </div>
          {publicKey && <div>{publicKey}</div>}
        </div>
      </div>
    );
  }
  export default Login;