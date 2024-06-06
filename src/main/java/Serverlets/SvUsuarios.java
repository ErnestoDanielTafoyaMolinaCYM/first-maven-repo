package Serverlets;

import Models.Controladora;
import Models.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import groovy.json.JsonBuilder;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.eclipse.persistence.platform.database.MySQLPlatform;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            List<User> listaUsuarios = new ArrayList<>();
            listaUsuarios = control.getUsers();

            
            HttpSession sesion = request.getSession();
            sesion.setAttribute("lista", listaUsuarios);
            
            response.sendRedirect("partials/ShowUsers.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            String dni = request.getParameter("dni");
            String nombre = request.getParameter("nombre")  ;
            String apellido = request.getParameter("apellido");
            String telefono = request.getParameter("telefono");
            
            User user = new User();
            
            user.setDni(dni);
            user.setNombre(nombre);
            user.setApellido(apellido);
            user.setTelefono(telefono);
            
            control.createUser(user);
            response.setStatus(200);
            response.sendRedirect("index.jsp");

    }
    @Override
    protected void doDelete(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        
        response.sendRedirect("index.jsp");
        
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
