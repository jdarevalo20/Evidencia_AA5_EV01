package servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SVingreso_usuarios")
public class SVingreso_usuarios extends HttpServlet {
    private static final String USERNAME = "arevalo";
    private static final String PASSWORD = "1234";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Obtener los parámetros del formulario de login
        String username = request.getParameter("nombreUsuario");
        String password = request.getParameter("contrasena");

        // Validar las credenciales
        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
            // Establecer el mensaje de éxito en el request
            request.setAttribute("mensaje", "¡Ingreso exitoso!");

            // Reenviar la solicitud a bienvenida.jsp
            request.getRequestDispatcher("bienvenida.jsp").forward(request, response);
        } else {
            // Establecer el mensaje de error en el request
            request.setAttribute("error", "Credenciales inválidas");

            // Reenviar la solicitud a error.jsp con el mensaje de error
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
}
