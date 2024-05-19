/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Productos;
import Modelo.ProductosDAO;
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
public class ControladorProductos extends HttpServlet {

    Productos pr=new Productos();
    ProductosDAO pdao=new ProductosDAO();
    int pde;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if (menu.equals("Productos")) {
             switch (accion) {

                case "Listar":
                    List<Productos> lista = pdao.listar();
                    System.out.println("Número de productos listados en el servlet: " + lista.size());
                    request.setAttribute("productos", lista);
                    request.getRequestDispatcher("Productos.jsp").forward(request, response);
                    break;

                case "Agregar":
                    String Nombre = request.getParameter("txtNombre");
                    Double Precio = Double.valueOf(request.getParameter("txtPrecio"));
                    int Stock = Integer.parseInt(request.getParameter("txtStock"));
                    String Estado = request.getParameter("txtEstado");
                    pr.setNombre(Nombre);
                    pr.setPrecio(Precio);
                    pr.setStock(Stock);
                    pr.setEstado(Estado);
                    pdao.agregar(pr);
                    request.getRequestDispatcher("ControladorProductos?menu=Productos&accion=Listar").forward(request, response);
                    break;

                case "Editar":
                 
                    break;
                case "Actualizar":
                   
                    break;
                case "Delete":
                  
                    break;
                default:
                    throw new AssertionError();
            }
            
            request.getRequestDispatcher("Productos.jsp").forward(request, response);
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              
        List<Productos> lista = pdao.listar();
        request.setAttribute("productos", lista);
        RequestDispatcher dispatcher = request.getRequestDispatcher("Productos.jsp");
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
