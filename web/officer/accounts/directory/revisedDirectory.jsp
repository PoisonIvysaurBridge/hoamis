<%-- 
    Document   : revisedDirectory
    Created on : 11 30, 17, 11:57:09 PM
    Author     : Yuta
--%>

<%@page import="model.dao.DirectoryDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
ArrayList<User> homeowners = DirectoryDAO.getHomeowners();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Directory</title>
        <%@include file="../../base-officer.jsp" %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="w3-container" style="margin-left:300px;margin-top:43px;">
            <h1>Directory</h1>
            <table class="w3-table w3-stripped w3-white w3-hoverable">
                <tr>
                    <th>Picture</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>See Further Information</th>
                </tr>
                <% for(User u : homeowners){ %>
                <tr>
                    <td><img src="<%= u.getPhoto().getDocumentLocation()%>" width="80" height="80"></td>
                    <td><%= u.getfName()%></td>
                    <td><%= u.getlName()%></td>
                    <td><a href="Directory?userid=<%= u.getUserID()%>"><button class="w3-button w3-teal w3-round">Go</button></a></td>
                </tr>
                <% } %>
            </table>
        </div>
    </body>
</html>
