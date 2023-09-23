/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.crudjakarta.servelets;

import com.mycompany.crudjakarta.modelo.ModelController;
import com.mycompany.crudjakarta.modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author gr0v3r
 */
@WebServlet(name = "SvUsuario", urlPatterns = {"/SvUsuario"})
public class SvUsuario extends HttpServlet {
    ModelController mdController = new ModelController();
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
        //processRequest(request, response);
        
        List<Usuario> listaUsuario = new ArrayList<>();
        
        listaUsuario = mdController.traerUsuario();
        
        HttpSession misesion= request.getSession();
        misesion.setAttribute("listaUsuarios", listaUsuario);
        
        response.sendRedirect("mostratUsuarios.jsp");
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
        //processRequest(request, response);
        
        String ci = request.getParameter("ci");
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        
        //System.out.println("CI: "+ci);
        //System.out.println("Nombre: "+nombre);
        //System.out.println("Apellido: "+apellido);
        //System.out.println("telefono: "+telefono);
        
        Usuario user = new Usuario();
        
        user.setCi(ci);
        user.setNombre(nombre);
        user.setApellido(apellido);
        user.setTelefono(telefono);
        
        mdController.crearUsuario(user);
        response.sendRedirect("index.jsp");
    }
    
    /*protected void doDelete(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        String ci = request.getParameter("ci");
        
        System.out.println("CI a eliminar"+ ci);
    }*/
    

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
