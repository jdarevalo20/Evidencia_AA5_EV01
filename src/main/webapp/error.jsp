<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error de Inicio de Sesión - MilColores</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ff6b6b, #f7bb97, #ff6b6b);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }

        .error-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            text-align: center;
            max-width: 500px;
        }

        .error-container h1 {
            font-size: 4em;
            color: #ff6b6b;
            margin-bottom: 20px;
        }

        .error-container h2 {
            font-size: 2em;
            color: #f7bb97;
            margin-bottom: 20px;
        }

        .error-container p {
            font-size: 1.2em;
            color: #555;
            margin-bottom: 30px;
        }

        /* Estilo para el mensaje de error en color verde */
        .error-message {
            font-size: 1.5em;
            color: #28a745; /* Verde llamativo */
            font-weight: bold;
            background-color: #d4edda; /* Fondo verde claro */
            padding: 10px;
            border: 2px solid #155724; /* Borde verde oscuro */
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .error-container a {
            font-size: 1.1em;
            color: #fff;
            background-color: #ff6b6b;
            padding: 10px 20px;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s;
            display: block;
            margin: 10px 0;
        }

        .error-container a:hover {
            background-color: #e55a5a;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h1>¡Ups!</h1>
        <h2>Credenciales inválidas</h2>

        <!-- Mostrar mensaje de error en verde si existe -->
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <p class="error-message"><%= error %></p>
        <%
            }
        %>

        <p>El nombre de usuario o la contraseña que has ingresado son incorrectos. Por favor, intenta de nuevo.</p>
        <!-- Botón para volver al inicio de sesión -->
        <a href="usuarios.jsp">Volver al Inicio de Sesión</a>
        <!-- Botón para registrar nuevo usuario -->
        <a href="registrar_nuevo_usuario.jsp">Registrar Nuevo Usuario</a>
    </div>

</body>
</html>
