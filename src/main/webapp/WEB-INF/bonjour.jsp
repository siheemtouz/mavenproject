<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Test</title>
    <style>
        /* CSS styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="file"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <c:if test="${ !empty fichier }">
            <p>
                <c:out value="Le fichier ${ fichier } (${ description }) a été uploadé !" />
            </p>
        </c:if>
        <form method="post" action="bonjour" enctype="multipart/form-data">
            <p>
                <label for="description">Description du fichier : </label>
                <input type="text" name="description" id="description" />
            </p>
            <p>
                <label for="fichier">Fichier à envoyer : </label>
                <input type="file" name="fichier" id="fichier" />
            </p>
            <input type="submit" value="Envoyer" />
        </form>
    </div>
</body>
</html>
