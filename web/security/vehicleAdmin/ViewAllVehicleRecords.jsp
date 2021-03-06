<%-- 
    Document   : ViewAllVehicleRecords
    Created on : Nov 25, 2017, 3:24:58 PM
    Author     : Patrisha
--%>
<%@page import="model.dao.DatabaseUtils"%>
<%@ page import="java.util.*" %>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Records</title>
    </head>
        <style>
        input[type="text"], [type="date"]{
            width: 30%;
            padding: 12px 20px;
            border-radius: 4px;
            box-sizing: border-box;
        }
        select {
            width: 30%;
            padding: 16px 20px;
            border: none;
            border-radius: 4px;
            background-color: #f1f1f1;
        }
        input[type=submit]{
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 16px 32px;
            text-decoration: none;
            margin: 4px 2px;
            cursor: pointer;
        } 
        </style>
    <body>
        <!--connection to the db-->
        <%! String driverName = "com.mysql.jdbc.Driver";%>
        <%!String url = "jdbc:mysql://localhost:3306/hoamis";%>
        <%!String user = "root";%>
        <%!String psw = "password";%>
         <a href ="SecurityMain"> << Go back home </a>
        <h2> View All Records </h2>
        <!--shows the table which contains all vehicle records-->
        <table width="700px" align="center"
               style="border:1px solid #000000;">
            <tr>
                <td colspan=7 align="center"
                    style="background-color:teal">
                    <b>Vehicle Records</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Owner</b></td>
                <td><b>Sticker ID</b></td>
                <td><b>Plate No.</b></td>
                <td><b>Model</b></td>
                <td><b>Make</b></td>
                <td><b>Year</b></td>
                <td><b>Banned</b></td>
            </tr>
            <%
            Connection con = null;
            PreparedStatement ps = null;
            Class.forName(driverName);
            con = DatabaseUtils.retrieveConnection();
            String sql = "select uv.userid, uv.stickerid, uv.stickerissuedby, v.platenum, v.model, v.make, YEAR(v.year), b.name from vehicles v left join banned_ref b on v.banned = b.banned left join user_vehicles uv on v.platenum = uv.plateNum";
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery(); 
            %>
            <%
            while(rs.next()){
            String user = rs.getString("userid");
            int sticker = rs.getInt("stickerid");
            String platenum = rs.getString("platenum"); 
            String model = rs.getString("model");
            String make = rs.getString("make");
            String year = rs.getString("YEAR(v.year)");
            String name = rs.getString("name");
            %>
             <tr style="background-color:#eeffee;">
                <td><%=user%></td>
                <td><%=sticker%></td>
                <td><%=platenum%></td>
                <td><%=model%></td>
                <td><%=make%></td>
                <td><%=year%></td>
                <td><%=name%></td>
            </tr>
            <%
            }
            %>
     
</html>
