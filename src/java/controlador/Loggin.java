package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.CConsultas;
import modelo.Usuario;

@WebServlet(name = "Loggin", urlPatterns = {"/Loggin"})
public class Loggin extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            CConsultas cons = new CConsultas();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            HttpSession sesion = request.getSession();
            if(cons.access(email, password)){
                Usuario u = new Usuario();
                u = cons.getUsuario(email, password);
                sesion.setAttribute("usuario", u);
                response.sendRedirect("index.jsp");
            }else{
                response.sendRedirect("sesion.jsp");
                out.println("<script>");
                out.println("alert('Problema en el procesado de la query');");
                out.println("location='sesion.jsp';");
                out.println("</script>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
