package Serverlets;

import Models.Controladora;
import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {
    
    Controladora userController = new Controladora();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {}
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_userEdit = Integer.parseInt(request.getParameter("id_usuarioEdit"));
        User user = userController.getUser(id_userEdit);
        
        System.out.println("el usuario es: " + user.toString());
        
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarioEditar", user);
        
        response.sendRedirect("partials/EditarUsuario.jsp");
        
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
            
            userController.editUser(user);
            
            response.setStatus(200);
            response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
