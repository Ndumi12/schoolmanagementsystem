/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package school.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import school.dao.PersonDAO;

/**
 *
 * @author Labs Admin
 */
@WebServlet(urlPatterns = {"/PersonServlet"})
public class PersonServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PersonDAO personDAO = new PersonDAO();
        PrintWriter printWriter = response.getWriter();
        try{
            personDAO.getConnection();
            RequestDispatcher dispatcher = null;
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            switch(request.getParameter("decission")){
                case "register":
                    
                    //int userID,int cellnumber, int previousgrade, String name, String surname, String gender, 
                   //String schoolname, String schoolcode, String subjectcode, String username, String password, 
                   //String emailaddress
                    personDAO.register(Integer.parseInt(request.getParameter("userID")), Integer.parseInt(request.getParameter("cellnumber")), 
                            Integer.parseInt(request.getParameter("previousgrade")),request.getParameter("name"),request.getParameter("surname"), 
                                    request.getParameter("gender"), request.getParameter("schoolname"), request.getParameter("schoolcode"), 
                                    request.getParameter("subjectcode"), request.getParameter("username"), request.getParameter("password"),
                                    request.getParameter("emailaddress"));
                    dispatcher = request.getRequestDispatcher("/index.hmtl");
                    dispatcher.forward(request, response);
                    break;
                default:
                    break;
            }
        }catch(IOException | SQLException |ClassNotFoundException error){
            printWriter.println("<p>Eroor...</p>" + error.getMessage());
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
}















