/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Empleado;
import Modelo.EmpleadoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
public class Controlador extends HttpServlet {

    Empleado em = new Empleado();
    EmpleadoDAO edao = new EmpleadoDAO();
    int ide;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
         if (accion != null) {
                String user = request.getParameter("txtUser");
                String dni = request.getParameter("txtDni");
                Empleado empleadoValidado = edao.Validar(user, dni);
                if (empleadoValidado != null) {
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
         }
                
        if (menu != null) {
        if (menu.equals("Empleado")) {
            
            
            switch (accion) {
                
                
                case "Listar":
                    List<Empleado> lista = edao.listar();
                    request.setAttribute("Empleado", lista);
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
                    break;

                case "Agregar":
                    String Dni = request.getParameter("txtDni");
                    String Nom = request.getParameter("txtNom");
                    String Tel = request.getParameter("txtTel");
                    String Estado = request.getParameter("txtEstado");
                    String User = request.getParameter("txtUser");
                    em.setDni(Dni);
                    em.setNom(Nom);
                    em.setTel(Tel);
                    em.setEstado(Estado);
                    em.setUser(User);
                    edao.agregar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar");
                    break;

                case "Editar":
                    ide = Integer.parseInt(request.getParameter("Id_Empleado"));
                    Empleado e = edao.listarId(ide);
                    request.setAttribute("Empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String Dni1 = request.getParameter("txtDni");
                    String Nom1 = request.getParameter("txtNom");
                    String Tel1 = request.getParameter("txtTel");
                    String Estado1 = request.getParameter("txtEstado");
                    String User1 = request.getParameter("txtUser");
                    em.setDni(Dni1);
                    em.setNom(Nom1);
                    em.setTel(Tel1);
                    em.setEstado(Estado1);
                    em.setUser(User1);
                    em.setId_Empleado(ide);
                    edao.actualizar(em);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Delete":
                    ide = Integer.parseInt(request.getParameter("Id_Empleado"));
                    edao.delete(ide);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                default:
                    throw new AssertionError();
            }
            request.getRequestDispatcher("Empleados.jsp").forward(request, response);
        }
        if (menu.equals("Productos")) {
            request.getRequestDispatcher("Productos.jsp").forward(request, response);
        }
        if (menu.equals("RegistrarVenta")) {
            request.getRequestDispatcher("RegistrarVenta.jsp").forward(request, response);
        }
        if (menu.equals("RegistrarCita")) {
            request.getRequestDispatcher("RegistrarCita.jsp").forward(request, response);
        }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmpleadoDAO dao = new EmpleadoDAO();
        List<Empleado> lista = dao.listar();
        request.setAttribute("Empleado", lista);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Empleados.jsp");
        dispatcher.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
