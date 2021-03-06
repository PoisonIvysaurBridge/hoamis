package servlet;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import model.dao.DatabaseUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Vehicle;

/**
 *
 * @author Patrisha
 */
@WebServlet(urlPatterns = {"/RecordVehicleServlet"})
public class RecordVehicleServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RecordVehicleServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RecordVehicleServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
       Connection conn = DatabaseUtils.retrieveConnection();
        String owner = request.getParameter("owner");
        System.out.println("OWNER"+owner);
        String plate = request.getParameter("platenum");
        System.out.println("PLATE NUM "+plate);
        String model = request.getParameter("model");
        String make = request.getParameter("make");
        String year = request.getParameter("year");
        int banned = Integer.parseInt(request.getParameter("banned"));
        
        Vehicle sample = new Vehicle(owner, plate, model, make, year, banned);
        String sql = "INSERT INTO vehicles VALUES (?, ?, ?, ?, ?)";
        
        try{            
            PreparedStatement pStmt = conn.prepareStatement(sql);
            request.setAttribute("vehicleSample", sample);
            
            pStmt.setString(1, sample.getPlate());
            pStmt.setString(2, sample.getModel());
            pStmt.setString(3, sample.getMake());
            pStmt.setString(4, sample.getYear());
            pStmt.setInt(5, sample.getBanned());
            
            int isInserted = pStmt.executeUpdate();
            if (isInserted != 0){
                System.out.println("Vehicle Added!");
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }
        String sql2 = "INSERT INTO user_vehicles VALUES (?, ?, NULL, NULL, NULL, NULL)";
        
        try{            
            PreparedStatement pStmt2 = conn.prepareStatement(sql2);
            request.setAttribute("vehicleSample", sample);
            pStmt2.setString(1, sample.getPlate());
            pStmt2.setString(2, sample.getOwner());
            
            
            
            int isInserted = pStmt2.executeUpdate();
            if (isInserted != 0){
                System.out.println("Vehicle Added 2!");
            }
        }catch(SQLException e){
            System.out.println(e.getMessage());
        }finally{
            if(conn != null){
                try{
                    conn.close();
                }catch(Exception e){
            }
            /*ResultSet rs = pStmt.executeQuery();
            while(rs.next()){
                System.out.println("Student ID: " + rs.getInt(1));
                System.out.println("Name: " + rs.getString(2));
                System.out.println("Course: " + rs.getString(3));
                System.out.println("Year: " + rs.getInt(4));
                System.out.println("");
            }*/
        
            }
        }
        request.getRequestDispatcher("officer/security/vehicleAdmin/RecordVehicle.jsp").forward(request, response);
        
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
