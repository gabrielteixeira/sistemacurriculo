/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fean.controle;

import br.com.fean.DAO.CurriculoDAO;
import br.com.fean.modelo.Curriculo;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rafael
 */
@WebServlet(name = "CurriculoServlet", urlPatterns = {"/CadastroCurriculojsp"})
public class CurriculoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String logradouro = request.getParameter("cidade") + "," + request.getParameter("estado") + "," + request.getParameter("endereco");
         Curriculo curriculo = new Curriculo(
                request.getParameter("NM_NOME"),
                request.getParameter("I_CPF"),
                request.getParameter("I_RG"),
                logradouro,
                request.getParameter("NM_EMAIL"));
                //Integer.parseInt(request.getParameter("ID_NIVEL_ESCOLARIDADE")),
                //Integer.parseInt(request.getParameter("ID_EMPREGO_ATUAL")),
                //request.getParameter("NM_COMO_NOS_ACHOU"));

                
        CurriculoDAO curriculoDAO = new CurriculoDAO();        
        if (curriculoDAO.cadastrarCurriculo(curriculo)) {
            response.sendRedirect("CadastroSucessojsp.jsp");
        } else {
            response.sendRedirect("CadastroFalhajsp.jsp");
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
        processRequest(request, response);
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
