<%-- 
    Document   : userReport
    Created on : 11 25, 17, 11:48:50 PM
    Author     : Jennifer
--%>

<%@page import="model.User"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.dao.DatabaseUtils"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3c//dtd html 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <style>
        table, th, td {
            border: 1px solid black;
        }
        </style>
        
        <%
        try{
            User loginUser = (User) session.getAttribute("loginUser");
            Connection conn = DatabaseUtils.retrieveConnection();
            
            
            String userID = (String) session.getAttribute("userID");
            String sql = "SELECT userID, fname FROM USERS";
            String sql2 = "SELECT userID FROM SECURITYPERSONNEL";
            String sql3 = "SELECT userID FROM BOARDMEMBER";
            String sql4 = "SELECT policyID FROM POLICIES";
            String sql5 = "SELECT mappointID FROM MAPPOINT";
            String sql6 = "SELECT statusID, status FROM REF_VIOLATIONSTATUS";
            String sql7 = "SELECT trxID FROM TRXREFERENCES";
            
            PreparedStatement ps = conn.prepareStatement(sql);
            PreparedStatement ps2 = conn.prepareStatement(sql);
            PreparedStatement ps3 = conn.prepareStatement(sql2);
            PreparedStatement ps4 = conn.prepareStatement(sql3);
            PreparedStatement ps5 = conn.prepareStatement(sql4);
            PreparedStatement ps6 = conn.prepareStatement(sql5);
            PreparedStatement ps7 = conn.prepareStatement(sql6);
            PreparedStatement ps8 = conn.prepareStatement(sql7);
            
            ResultSet rs = ps.executeQuery(); 
            ResultSet rs2 = ps2.executeQuery();
            ResultSet rs3 = ps3.executeQuery();
            ResultSet rs4 = ps4.executeQuery();
            ResultSet rs5 = ps5.executeQuery();
            ResultSet rs6 = ps6.executeQuery();
            ResultSet rs7 = ps7.executeQuery();
            ResultSet rs8 = ps8.executeQuery();
            
        %>
        
        </script>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Security Reports and Violations Module</title>
        </head>
    <body>
    <center>
        <!--FORM FOR CREATING USER REPORT STARTS HERE-->
        <h2> Create a User Security Report</h2>
        <form action="addUserReport" method="POST" align="center" id="userForm">
            <table align="center">
                <tr>
                    <td>Security Personnel ID: </td>
                    <td><input type="text" name="securityID" readonly="" value="<%= loginUser.getUserID() %>"></td>
                    
                </tr>
                <tr>
                    <td>Complainant's User ID: </td>
                    <td><select name = "complainantUserID" required>
                        <option value=""> --Choose User's ID-- </option>
                        <%
                        while(rs.next()){
                        String id = rs.getString("userID");
                        %>
                        <option value="<%=id %>"><%=id %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Accused User's ID: </td>
                    <td><select name = "accusedUserID" required>
                        <option value=""> --Choose User's ID-- </option>
                        <%
                        while(rs2.next()){
                        String id2 = rs2.getString("userID");
                        %>
                        <option value="<%=id2 %>"><%=id2 %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Complaint: </td><td><textarea name='complaint'required></textarea>
                <input type="hidden" value="1" name="incidentTypeID"></td>
                </tr>
                <tr>
                    <td>Board Member ID: </td>
                    <td><select name = "boardmemberid" required>
                        <option value=""> --Choose BM's ID-- </option>
                        <%
                        while(rs4.next()){
                        String id4 = rs4.getString("userID");
                        %>
                        <option value="<%=id4 %>"><%=id4 %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Violated Policy ID: </td>
                    <td><select name = "violatedPolicyID" required>
                        <option value=""> --Choose Policy ID-- </option>
                        <%
                        while(rs5.next()){
                        String id5 = rs5.getString("policyID");
                        %>
                        <option value="<%=id5 %>"><%=id5 %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Violation Status: </td>
                    <td><select name = "status" required>
                        <option value=""> --Choose Status ID-- </option>
                        <%
                        while(rs7.next()){
                        String id7 = rs7.getString("statusID");
                        String idz = rs7.getString("status");
                        %>
                        <option value="<%=id7 %>"><%=idz %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Transaction ID: </td>
                    <td><select name = "trxID" required>
                        <option value=""> --Choose Status ID-- </option>
                        <%
                        while(rs8.next()){
                        String id8 = rs8.getString("trxID");
                        %>
                        <option value="<%=id8 %>"><%=id8 %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                <tr>
                    <td>Map Point ID: </td>
                    <td><select name = "mappointID" required>
                        <option value=""> --Choose Map Point ID-- </option>
                        <%
                        while(rs6.next()){
                        String id6 = rs6.getString("mappointID");
                        %>
                        <option value="<%=id6 %>"><%=id6 %></option>
                        <%
                        }
                        %>
                    </select></td>
                </tr>
                
            </table>
               <a href="homepageSecurityRep.jsp"><button type ="button"> Go Back</button></a> &nbsp; &nbsp; <input type="submit" value="Submit">
                </center>
        </form>
        
        <%
        }
        catch(Exception e)
        {
             out.println("wrong entry"+e);
        }
%>

    </body>

</html>