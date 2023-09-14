/* eslint-disable no-unused-vars */
import React, { useEffect, useState } from "react";
import { useAuthState } from "react-firebase-hooks/auth";
import { useNavigate } from "react-router-dom";
import "./Dashboard.css";
import { auth, db, logout } from "./firebase";
import { query, collection, getDocs, where } from "firebase/firestore";
import CryptoJS from "crypto-js";
import {ref,uploadBytesResumable, getDownloadURL } from "firebase/storage";
import storage from "./firebase";
import crypto from 'crypto-browserify';




function Dashboard() {


  const [password, setPassword] = useState('');
  const [encryptedFile, setEncryptedFile] = useState(null);
  
  const handleFileInputChange = (event) => {
    setFile(event.target.files[0]);
  };

  const handlePasswordInputChange = (event) => {
    setPassword(event.target.value);
  };

  const handleEncryptClick = () => {
    const reader = new FileReader();
    reader.onload = () => {
    const fileData = new Uint8Array(reader.result);
    const salt = crypto.randomBytes(16); // Generate a random salt
    const iterations = 100000; // Number of iterations (recommended value)
    const keyLength = 32; // 256-bit key length (recommended value)
    const password = 'QBcuM%V0A6aCcinfX25dDkC3*IhEnoal'; // Replace with your own password

    crypto.pbkdf2(password, salt, iterations, keyLength, 'sha256', (err, key) => {
      if (err) {
        throw err;
      }

      const iv = crypto.randomBytes(16);
      const cipher = crypto.createCipheriv('aes-256-cbc', password, iv);
      const encryptedData = Buffer.concat([iv, cipher.update(fileData), cipher.final()]);
      const encryptedFile = new Blob([encryptedData], { type: file.type });
      setEncryptedFile(encryptedFile);
    });
    };
    reader.readAsArrayBuffer(file);
  };
  
  function handleUpload() {
    if (!file) 
    {
      alert("Please choose a file first!")

    }

    //Read file
     
    // progress can be paused and resumed. It also exposes progress updates.
    // Receives the storage reference and the file to upload.
    const storageRef = ref(storage, `/files/${file.name}`)
    const uploadTask = uploadBytesResumable(storageRef, file);

    uploadTask.on(
                  "state_changed",
                  (snapshot) => {
                      const percent = Math.round(
                          (snapshot.bytesTransferred / snapshot.totalBytes) * 100
                      );
       
                      // update progress
                      setPercent(percent);
                  },
                  (err) => console.log(err),
                  () => {
                      // download url
                      getDownloadURL(uploadTask.snapshot.ref).then((url) => {
                          console.log(url);
                      });
                  }
              );
        
  }

  

  
  

  // function encryptUploadedFile(input) {
  //   // Get a reference to the file input
  //   const fileInput = document.querySelector('input');

  //   // Listen for the change event so we can capture the file
  //   fileInput.addEventListener('change', (e) => {
  //       // Get a reference to the file
  //       const file = e.target.files[0];

  //       // Encode the file using the FileReader API
  //       const reader = new FileReader();
  //       reader.onloadend = () => {
  //           // Use a regex to remove data url part
  //           const base64String = reader.result
  //               .replace('data:', '')
  //               .replace(/^.+,/, '');

  //           console.log(base64String);
  //           // Logs wL2dvYWwgbW9yZ...
  //       };
  //       reader.readAsDataURL(file);
  //   });
  // }
  // function handleEncryptedFileUpload(evt) {
  //   // Check for the File API support.
  //   if (window.File && window.FileReader && window.FileList && window.Blob) {
  //     // eslint-disable-next-line no-undef
  //     document.getElementById('files').addEventListener('change', handleFileSelect, false);
  //   } 
  //   else 
  //   {
  //     alert('The File APIs are not fully supported in this browser.');
  //   }

  //   const f = evt.target.files[0]; // FileList object
  //   const reader = new FileReader();
  // // Closure to capture the file information.
  // reader.onload = (function(theFile) {
  //   return function(e) {
  //     const binaryData = e.target.result;
  //     //Converting Binary Data to base 64
  //     const base64String = window.btoa(binaryData);
  //     //showing file converted to base64
  //     document.getElementById('base64').value = base64String;
  //     alert('File converted to base64 successfuly!\nCheck in Textarea');
  //   };
  // })(f);
  // // Read in the image file as a data URL.
  // reader.readAsBinaryString(f);
  // //   return new Promise((resolve, reject) => {
  // //   if (!file) 
  // //   {
  // //     alert("Please choose a file first!")

  // //   }

    

  // //   //Read file
  // //   const reader = new FileReader();
  // // reader.onload = async (e) => {
  // //   const fileData = e.target.result;

  // //   // Encrypt the file
  // //   const encryptedData = CryptoJS.AES.encrypt(fileData, secretPass).toString();

  // //   resolve({ encryptedData, fileData });
  // //    
  // //   // progress can be paused and resumed. It also exposes progress updates.
  // //   // Receives the storage reference and the file to upload.
  // //   const storageRef = ref(storage, `/files/${file.name}`)
  // //   const uploadTask = uploadBytesResumable(storageRef, file);

  // //   uploadTask.on(
  // //                 "state_changed",
  // //                 (snapshot) => {
  // //                     const percent = Math.round(
  // //                         (snapshot.bytesTransferred / snapshot.totalBytes) * 100
  // //                     );
  // //      
  // //                     // update progress
  // //                     setPercent(percent);
  // //                 },
  // //                 (err) => console.log(err),
  // //                 () => {
  // //                     // download url
  // //                     getDownloadURL(uploadTask.snapshot.ref).then((url) => {
  // //                         console.log(url);
  // //                     });
  // //                 }
  // //             );
  // //     };
  // //    });
  // }

  // State to store uploaded file
  const [file, setFile] = useState("");
 
  // progress
  const [percent, setPercent] = useState(0);


  
  // Handle file upload event and update state
  function handleChange(event)
   {
      setFile(event.target.files[0]);
   }

  const [text, setText] = useState("");
  const [screen, setScreen] = useState("encrypt");

  const [encrptedData, setEncrptedData] = useState("");
  const [decrptedData, setDecrptedData] = useState("");

  const secretPass = "XkhZG4fW2t2W";

  

  // code to use FileReader to get base64 of files
  const getBase64OfFile = async (file) => {
    return new Promise((resolve, reject) => {
      const fr = new FileReader();
      
      fr.addEventListener('load', () => {
        resolve(fr.result.split('base64,')[1]);
      });
      
      fr.addEventListener('error', (err) => {
        reject(err);
      });
      
      if (!file || !(file instanceof Blob)) {
        reject(new Error('Invalid file type.'));
      }
      
      fr.readAsDataURL(file);
    });
  }

  // const handleFileUpload = async (e) => {
    
  //   const file = e.target.files[0];
  //   if (file.length === 0) {
  //     console.error('No files selected');
  //     return;
  //   }
  //   try {
  //     const base64String = await getBase64OfFile(file);
  //     const secretPass = "mySecretPassword";
  //     const encryptedData = CryptoJS.AES.encrypt(base64String, secretPass).toString();
  //     console.log("Encrypted data:", encryptedData);
  //     // Do something with the encrypted data
  //   } catch (err) {
  //     console.error(err);
  //   }
  // };



document.addEventListener('DOMContentLoaded', () => {
  const op = document.querySelector('#base64ofFile');
  const btn = document.querySelector('#getBase64');
  const fileInput = document.querySelector('#myFile');

  btn && btn.addEventListener('click', () => {
    const file = fileInput.files[0];
    file && getBase64OfFile(file, (data) => {
      op.innerText = data;
    });
  })
});


  const encryptData = () => {
    const data = CryptoJS.AES.encrypt(
      JSON.stringify(text),
      secretPass
    ).toString();

    setEncrptedData(data);
    
  };

  const decryptData = () => {
    const bytes = CryptoJS.AES.decrypt(text, secretPass);
    const data = JSON.parse(bytes.toString(CryptoJS.enc.Utf8));
    setDecrptedData(data);
  };

  const switchScreen = (type) => {
    setText("");
    setEncrptedData("");
    setDecrptedData("");
    setScreen(type);
  };

  const handleClick = () => {
    if (!text) return;

    if (screen === "encrypt") encryptData();
    else decryptData();
  };

  const [user, loading] = useAuthState(auth);
  const [name, setName] = useState("");
  const navigate = useNavigate();
  const fetchUserName = async () => {
    try {
      const q = query(collection(db, "users"), where("uid", "==", user?.uid));
      const doc = await getDocs(q);
      const data = doc.docs[0].data();
      setName(data.name);
    } catch (err) {
      console.error(err);
      alert("An error occured while fetching user data");
    }


  };
  useEffect(() => {
    if (loading) return;
    if (!user) return navigate("/");
    fetchUserName();
  // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [user, loading]);
  return (
    <div className="dashboard">
      <div className="container">
      <h1 className="profile-header">Profile Page: Member of Group 15</h1>
      <div>
        <button
          className="btn btn-left"
          style={{
            backgroundColor: screen === "encrypt" ? "#5e35b1" : "#5e35b130",
          }}
          onClick={() => {
            switchScreen("encrypt");
          }}
        >
          Encrypt
        </button>

        <button
          className="btn btn-right"
          style={{
            backgroundColor: screen === "decrypt" ? "#1e88e5" : "#1e88e530",
          }}
          onClick={() => {
            switchScreen("decrypt");
          }}
        >
          Decrypt
        </button>
      </div>

      <div className="card">
        <input
          value={text}
          onChange={({ target }) => {
            setText(target.value);
          }}
          name="text"
          type="text"
          placeholder={
            screen === "encrypt" ? "Enter Text" : "Enter Encrypted Data"
          }
        />

        <button className="btn submit-btn" onClick={handleClick}>
          {screen === "encrypt" ? "Encrypt" : "Decrypt"}
        </button>
      </div>

      {encrptedData || decrptedData ? (
        <div className="content">
          <label>{screen === "encrypt" ? "Encrypted" : "Decrypted"} Data</label>
          <p>{screen === "encrypt" ? encrptedData : decrptedData}</p>
        </div>
      ) : null}
    </div>

 {/* 

    <div class="row">
  <form class="col-4" name="file-upload">
    <div class="form-group">
      <label>File</label>
      <input type="file" class="form-control" name="myFile" id="myFile" />
    </div>
    <button 
      type="button" id="getBase64"
      onClick={handleFileUpload}
      
      >Generate Base64</button>
  </form>
  <div class="col-8">
    <div class="form-group">
      <label>Base64 of File</label>
      <textarea
        class="form-control" rows="5"
        id="base64ofFile"
        placeholder="Base64 will appear here"
        ></textarea>
    </div>
  </div>
</div>

      */}


<div>
      <label>
        Choose a file to encrypt:
        <input type="file" onChange={handleFileInputChange} />
      </label>
      <br />
      <label>
        Password:
        <input type="password" value={password} onChange={handlePasswordInputChange} />
      </label>
      <br />
      <button onClick={handleEncryptClick}>Encrypt</button>
      {encryptedFile && (
        <a href={URL.createObjectURL(encryptedFile)} download="encrypted-file">Download Encrypted File</a>
      )}
    </div>



        <div>  
            <input type="file" onChange={handleChange} accept="/image/*" />
            <button onClick={handleUpload}>Upload to Firebase</button>
            <p>{percent} % done</p>
        </div>

      
        

  
       <div className="dashboard__container">
        Logged in as
         <div>{name}</div>
         <div>{user?.email}</div>
         <button className="dashboard__btn" onClick={logout}>
          Logout
         </button>
       </div>
     </div>

     
  );
}
export default Dashboard;
