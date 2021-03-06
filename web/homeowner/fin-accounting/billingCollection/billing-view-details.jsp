<%-- 
    Document   : dashboard
    Created on : Oct 29, 2017, 4:59:47 PM
    Author     : Ivy
--%>

<%@page import="model.Billing"%>
<%@page import="model.User"%>
<%@page import="model.Homeowner"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.dao.BillingDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String feedback = "";
String isPaid = (String)request.getAttribute("isPaid");

if(isPaid != null)
if(isPaid.equals("true")){
    feedback = "Payments successful.";
}

String hoId = request.getParameter("userid");
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String mname = request.getParameter("mname");
ArrayList<Billing> bills = BillingDAO.getBillings(hoId);

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="../../base-homeowner.jsp" %>
    </head>
    <body>
        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">
            
            <!-- Links (sit on top) -->
            <div class="w3-container">
                <h1>Billing, Collection & Payments </h1><!--
              <div class="w3-row w3-large w3-light-grey">
                <div class="w3-col s4">
                  <a href="billing-view.jsp" class="w3-button w3-block w3-grey">View Billings</a>
                </div>
                  <!--
                <div class="w3-col s4">
                  <a href="billing-generate.jsp" class="w3-button w3-block">Generate Billings</a>
                </div>
                <div class="w3-col s4">
                  <a href="billing-update.jsp" class="w3-button w3-block">Update Payments</a>
                </div>
                  
              </div>-->
            </div>
            

            <div class="w3-container">
                <a href="/hoamis/HomeownerMain?action=directory"><h4><<< Back to Directory of Homeowners</h4></a>
            <h2 style="text-align: center; float: left;">View Billings of <%= lname+", "+fname+" "+mname %></h2>
            
            </div>
            <div class="w3-container">
                <h3><%= feedback %></h3>
                
            <table class="w3-table w3-striped w3-white w3-hoverable" id="userTable">
                <tr>
                    <!--
                    <th>Billing ID</th>
                    <th>Block</th>
                    <th>Lot</th>
                    <th>Precedent Billing</th>
                    <th>Total Due</th>
                    <th>Total Paid</th>
                    -->
                    <th>Billing ID</th>
                    <th>Date Issued</th>
                    <th>Date Due</th>
                    <!--<th>Precedent Billing ID</th>-->
                    <th style="text-align: right;">Total Due</th>
                    <th style="text-align: right;">Total Paid</th>
                    <!--<th style="text-align: right;">Carried Over Balance</th>-->
                    
                </tr>
            <% 
                
                for(int i = 0; i < bills.size(); i++){     
            %>
            <tr class="<% if(BillingDAO.isOverdue(bills.get(i).getBillingID())) out.print("w3-red"); %>" onmouseover="this.style.cursor='pointer'" onclick="location.href='/hoamis/HomeownerMain?action=billingTrxDetails&billingID=<%= bills.get(i).getBillingID()%>&totalDue=<%= bills.get(i).getTotalDue()%>&totalPaid=<%= bills.get(i).getTotalPaid()%>&userid=<%= hoId %>&fname=<%= fname %>&lname=<%= lname %>&mname=<%= mname %>&dateIssued=<%= bills.get(i).getDateIssued() %>&dateDue=<%= bills.get(i).getDateDue()%>'">
                    <td><%= bills.get(i).getBillingID()%></td>
                    <td><%= bills.get(i).getDateIssued()%></td>
                    <td><%= bills.get(i).getDateDue()%></td>
                    <!--<td><%= bills.get(i).getPrecedentBilling() %></td>-->
                    <td style="text-align: right;"><%= bills.get(i).getTotalDue()%></td>
                    <td style="text-align: right;"><%= bills.get(i).getTotalPaid()%></td>
                    <!--<td style="text-align: right;"><%= bills.get(i).getTotalDue()-bills.get(i).getTotalPaid()%></td>-->
                </tr>
            
            <% } %>
            </table>
            </div>
    
    </body>
</html>
