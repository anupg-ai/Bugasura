<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Login Page</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background: #f0f2f5;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .login-container {
      background: white;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 2px 10px rgba(0,0,0,0.1);
      width: 300px;
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    input[type="text"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 8px 0;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    button {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      border: none;
      color: white;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #0056b3;
    }
    .message {
      margin-top: 15px;
      text-align: center;
      color: green;
    }
  </style>
</head>
<body>

  <div class="login-container">
    <h2>Login</h2>
    <form onsubmit="return login(event)">
      <input type="text" id="username" placeholder="Username" required>
      <input type="password" id="password" placeholder="Password" required>
      <button type="submit">Login</button>
    </form>
    <div class="message" id="message"></div>
  </div>

  <script>
    function login(event) {
      event.preventDefault();
      const username = document.getElementById("username").value;
      const password = document.getElementById("password").value;

      // Dummy check (replace with actual logic or API call)
      if (username === "admin" && password === "password") {
        document.getElementById("message").innerText = "Login successful!";
      } else {
        document.getElementById("message").innerText = "Invalid credentials.";
        document.getElementById("message").style.color = "red";
      }
    }
  </script>

</body>
</html>
