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

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        try (PrintWriter out = response.getWriter()) {
            HttpSession sesion = request.getSession();
            sesion.removeAttribute("usuario");
            response.sendRedirect("index.jsp");
            out.print("<html>");
            out.print("<script>");
            out.print("alert(\"Tienes que iniciar sesion primero\");");    
            out.print("location.href=\"index.jsp\";");
            out.print("</script>");
            out.print("</html>");
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        try (PrintWriter out = response.getWriter()) {
            CConsultas cons = new CConsultas();
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            HttpSession sesion = request.getSession();
            if(cons.access(email, password)){
                Usuario u = new Usuario();
                u = cons.getUsuario(email, password);
                sesion.setAttribute("usuario", u);
                if(u.getRol() == 1){
                    out.print("<script>");
                    out.print("alert(\"Bienvenido admin \");");    
                    out.print("location.href=\"index.jsp\";");
                    out.print("</script>");
                }else{
                    response.sendRedirect("index.jsp");
                }
            }else{
                out.print("<script>");
                out.print("alert(\"Correo y/o contraseña invalida\");");    
                out.print("location.href=\"sesion.jsp\";");
                out.print("</script>");
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
