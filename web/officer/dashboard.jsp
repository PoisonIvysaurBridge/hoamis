<%-- 
    Document   : dashboard
    Created on : Oct 29, 2017, 4:59:47 PM
    Author     : Ivy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="base-officer.jsp" %>
    </head>
    <body>
        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">
    
          <!-- Header -->
          <header class="w3-container" style="padding-top:22px">
            <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
          </header>
          <style>.w3-third{margin-top:20px;}</style>
          
          <div class="w3-row-padding w3-margin-bottom">
              <a href="OfficerMain?action=directory">
            <div class="w3-third">
              <div class="w3-container w3-pink w3-padding-16">
                <div class="w3-left"><i class="fa fa-user w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3></h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Account</h4>
              </div>
            </div>
              </a>
            <a href="OfficerMain?action=billingView">
            <div class="w3-third">
              <div class="w3-container w3-blue w3-padding-16">
                <div class="w3-left"><i class="fa fa-money w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3></h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Finance</h4>
              </div>
            </div>
            </a>
              <!--
            <div class="w3-third">
              <div class="w3-container w3-teal w3-padding-16">
                <div class="w3-left"><i class="fa fa-university w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>23</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Facilities</h4>
              </div>
            </div>
            -->
            <a href="OfficerMain?action=document">
            <div class="w3-third">
              <div class="w3-container w3-deep-purple w3-padding-16">
                <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3></h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Community</h4>
              </div>
            </div>
            </a>
              <!--
            <div class="w3-third">
              <div class="w3-container w3-light-green w3-text-white w3-padding-16">
                <div class="w3-left"><i class="fa fa-wrench w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>23</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Maintenance</h4>
              </div>
            </div>
              -->
              <a href="OfficerMain?action=security">
            <div class="w3-third">
              <div class="w3-container w3-orange w3-text-white w3-padding-16">
                <div class="w3-left"><i class="fa fa-lock w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3></h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Security</h4>
              </div>
            </div>
              </a>      
          </div>

          <!-- Footer --><!--
          <footer class="w3-container w3-padding-16 w3-light-grey">
            <h4>FOOTER</h4>
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
          </footer>-->

          <!-- End page content -->
        </div>
    </body>
</html>
