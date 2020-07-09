package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelo.CConsultas;
import modelo.Servicio;

@WebServlet(name = "Cesta", urlPatterns = {"/Cesta"})
public class Cesta extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession sesion = request.getSession();
        ArrayList<Servicio> cesta = (ArrayList)sesion.getAttribute("cesta");
        if(cesta == null){
            cesta = new ArrayList();
        }
        int idserv = Integer.parseInt(request.getParameter("idservicio"));
        Servicio serv = new Servicio();
        CConsultas cons = new CConsultas();
        serv = cons.getServicio(idserv);
        cesta.add(serv);
        sesion.setAttribute("cesta", cesta);
        
        response.sendRedirect("carrito.jsp");
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
    }
}
