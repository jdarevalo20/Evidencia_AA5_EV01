<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bienvenido a MilColores</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4, #fad0c4, #ff9a9e);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #333;
        }

        .welcome-container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 600px;
        }

        .welcome-container h1 {
            color: #ff6b6b;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .welcome-container p {
            font-size: 1.2em;
            line-height: 1.5;
            margin-bottom: 15px;
            color: #555;
        }

        /* Mensaje de éxito personalizado */
        .success-message {
            font-size: 1.5em;
            color: #28a745; /* Verde llamativo */
            font-weight: bold;
            background-color: #d4edda; /* Fondo verde claro */
            padding: 10px;
            border: 2px solid #155724; /* Borde verde oscuro */
            border-radius: 8px;
            margin-bottom: 20px;
        }

        .welcome-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1em;
            color: #fff;
            background-color: #007BFF;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
            margin-top: 20px;
        }

        .welcome-button:hover {
            background-color: #0056b3;
        }

        @media (max-width: 768px) {
            .welcome-container {
                padding: 20px;
            }

            .welcome-container h1 {
                font-size: 2em;
            }

            .welcome-container p {
                font-size: 1em;
            }
        }
    </style>
</head>
<body>

    <div class="welcome-container">
        <h1>Bienvenido a MilColores</h1>

        <!-- Mostrar el mensaje de ingreso exitoso si existe -->
        <%
            String mensaje = (String) request.getAttribute("mensaje");
            if (mensaje != null) {
        %>
            <div class="success-message"><%= mensaje %></div>
        <%
            }
        %>

        <p>MilColores es una tienda de accesorios que ofrece una amplia variedad de productos coloridos y de alta calidad, diseñados para complementar y realzar cualquier estilo personal.</p>
        <p>Su misión es brindar a los clientes opciones únicas y asequibles para expresar su individualidad a través de accesorios modernos y elegantes.</p>

        <!-- Botón para ir a compras.jsp -->
        <a href="compras.jsp" class="welcome-button">Ir a Compras</a>
    </div>

</body>
</html>

