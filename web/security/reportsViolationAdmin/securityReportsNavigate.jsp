<%-- 
    Document   : securityReportsNavigate
    Created on : 11 28, 17, 12:22:25 AM
    Author     : Jennifer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
 String username = (String) session.getAttribute("hey");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Security Reports & Violations</title>
    </head>
    <body><center>
        <h1>Security Reports & Violations</h1><br>
        <h2><I>Choose what type of incident:</I></h3>
         
        <!-- FOR THE SECURITY PERSONNEL -->
        <button><a href="SecurityMain?action=user1">User & User Incident</button></a>&nbsp; &nbsp; 
        <button><a href="SecurityMain?action=user2">User & An Other Party Incident</button></a><br>
        <button><a href="SecurityMain?action=vehicle1">Vehicle & A User Incident</button></a>&nbsp; &nbsp; 
        <button><a href="SecurityMain?action=vehicle2">Vehicle & Vehicle Incident</button></a><br>
    </center>    
    </body>
</html>
