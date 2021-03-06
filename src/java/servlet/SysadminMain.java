/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;

/**
 *
 * @author Yuta
 */
@WebServlet(name = "SysadminMain", urlPatterns = {"/SysadminMain"})
public class SysadminMain extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        User loginUser = (User) session.getAttribute("loginUser");
        if(loginUser != null){
            if(loginUser.getUsertype() != 4){
                response.sendError(403, "You have no permission for this Page");
            }else{
                if(request.getParameter("action") == null || request.getParameter("action").equals("")){
                    request.getRequestDispatcher("sysadmin/dashboard.jsp").forward(request, response);
                }else{
                    String action = request.getParameter("action");
                    String forward = "sysadmin/dashboard.jsp";
                    if(action.equals("userManagement")){
                        forward = "sysadmin/userMgt/users.jsp";
                    }
                    request.getRequestDispatcher(forward).forward(request, response);
                }
                /*
                out.print("<p>This is SysadminMain.java</p>");
                out.print("<p>First Name:" + loginUser.getfName()  + "</p>");
                out.print("<p>Last Name: " + loginUser.getlName() + "</p>");
                */
            }
        }else{
            response.sendRedirect("Login");
        }
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
            throws ServletException, IOException {}
}
