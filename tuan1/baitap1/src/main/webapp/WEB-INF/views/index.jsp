<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP - Hello World</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      text-align: center;
      background-color: #f2f2f2;
    }

    h2 {
      color: #333;
    }

    form {
      width: 300px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    label {
      display: block;
      margin-top: 20px;
    }

    p {
      color:black;
      font-weight: bold;
    }
  </style>
</head>
<body>
<h2>USD to VND Converter</h2>
<form action="/convert" method="get">
  USD: <input type="text" name="usd" required min="1"/><br/>
  Rate: <input type="text" name="rate" required min="2300"/><br/>
  <input type="submit" value="Convert"/>
</form>
<label>
  <h2>Conversion Result</h2>
  <p>VND Amount: ${number}${wrong}</p>
</label>
</body>
</html>
