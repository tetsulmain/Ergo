/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ergo.servlet;

import ergo.businesslogic.FollowupService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Kimberly Oshiro
 */
public class FollowUpServlet extends HttpServlet {
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
        //do a check on the user being logged in?
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
        
        String note = request.getParameter("note").trim();
        String comments = request.getParameter("comments").trim();
        String recommendations = request.getParameter("recommendations").trim();
        
        if(note.isEmpty() || note == null || comments.isEmpty() || comments == null || recommendations.isEmpty() ||  recommendations == null){
            request.setAttribute("message", "Please fill in at least one field before submitting the form");
            //Have a place to send the response to, still don't know where to send this to. Where do we go I don't know   
        }
       
        //check them individually? Unless this isn't that big of a deal. 
     
        FollowupService fs = new FollowupService();
        if((fs.insert(note, comments, recommendations)) == 1){
            //success message here
        }
        else{
            //error message here, I guess. 
        }
        response.sendRedirect("page");//somepage/ where do we send everything I can't find pages help me 
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
