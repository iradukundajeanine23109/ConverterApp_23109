<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>ConverterApp</title>
</head>
<body>
<h1>Converter</h1>
<form method="post" action="converter" id="conversionForm">
  <div class="form-group">
    <label for="baseten">Enter Base 10 Number</label>
    <input id="baseten" type="number" name="baseten" value="${baseten}">
  </div>
  <div>
    <input type="button" value="Binary" onclick="setConversionType('binary')">
    <input type="button" value="Hexa" onclick="setConversionType('hexa')">
    <input type="button" value="Octal" onclick="setConversionType('octal')">
  </div>
  <input type="hidden" name="conversionType" id="conversionType" value="">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      margin: 0;
      padding: 0;
    }

    h1 {
      text-align: center;
      margin-top: 50px;
    }

    form {
      width: 300px;
      margin: 0 auto;
      background-color: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      font-weight: bold;
      margin-bottom: 5px;
    }

    input[type="number"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }

    input[type="button"] {
      background-color: #007bff;
      color: #fff;
      border: none;
      border-radius: 5px;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      margin-right: 10px;
    }

    input[type="button"]:hover {
      background-color: #0056b3;
    }

    h2 {
      text-align: center;
      margin-top: 30px;
    }

    h3 {
      text-align: center;
      margin-top: 10px;
    }

    ul {
      list-style-type: none;
      padding: 0;
      margin-top: 20px;
      text-align: center;
    }

    li {
      color: cornflowerblue;
    }
  </style>
</form>
<div>
  <h2>Result</h2>
  <h3>Number: ${baseten}</h3>
  <h3>Result: ${result}</h3>
</div>

<div>
  <ul>
    <li style="color: cornflowerblue">${message}</li>
  </ul>
</div>
<script>
  function setConversionType(type) {
    document.getElementById('conversionType').value = type;
    document.getElementById('conversionForm').submit();
  }
</script>
</body>
</html>