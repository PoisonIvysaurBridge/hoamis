<%-- 
    Document   : base
    Created on : Oct 29, 2017, 2:18:19 PM
    Author     : Ivy Lim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Comfortaa">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Base Page</title>
        <style>
        html,body,h1,h2,h3,h4,h5 {font-family: "Comfortaa", sans-serif}
        </style>
    </head>
    <body class="w3-light-grey">

        <!-- Top container -->
        <div class="w3-bar w3-top w3-green w3-large" style="z-index:4">
          <button class="w3-bar-item w3-button w3-hide-large w3-hover-none w3-hover-text-light-grey" onclick="w3_open();"><i class="fa fa-bars"></i>  Menu</button>
          <span class="w3-bar-item w3-right">HOAMIS</span>
        </div>

        <!-- Side bar-->
        <nav class="w3-sidebar w3-collapse w3-dark-gray w3-animate-left" style="z-index:3;width:300px;" id="mySidebar"><br>
          <div class="w3-container w3-row">
            <div class="w3-col s4">
              <img src="https://poorishaadi.com/user-icon-png-pnglogocom.png" class="w3-circle w3-margin-right" style="width:46px; margin-top:20px;">
            </div>
            <div class="w3-col s8 w3-bar">
                <h4><span>Welcome, <strong><%= "user goes here"%></strong></span></h4>
              <p>Homeowner account</p>
              <a href="#" class="w3-bar-item w3-button">Log out</a>
            </div>
          </div>
          <hr>
          <div class="w3-container">
            <h5>Dashboard</h5>
          </div>
          <!-- SIDE BAR MENU OPTIONS -->
          <div class="w3-bar-block">
            <a href="#" class="w3-bar-item w3-button w3-padding-16 w3-hide-large w3-dark-grey w3-hover-black" onclick="w3_close()" title="close menu"><i class="fa fa-remove fa-fw"></i>  Close Menu</a>
            <a href="#" class="w3-bar-item w3-button w3-padding w3-blue"><i class="fa fa-home fa-fw"></i>  Overview</a>
            
            <div class="w3-bar-item w3-button" onclick="myAccFunc('account')">
                <i class="fa fa-user fa-fw"></i>   Account <i class="fa fa-caret-down"></i></div>
                <div id="account" class="w3-hide w3-white w3-card-4">
                  <a href="#" class="w3-bar-item w3-button">Directory</a>
                  <a href="#" class="w3-bar-item w3-button">Dues & Fees</a>
                  <a href="#" class="w3-bar-item w3-button">Registration</a>
                  <a href="#" class="w3-bar-item w3-button">Vacation & Moving Out</a>
            </div>
            <div class="w3-bar-item w3-button" onclick="myAccFunc('finance')">
                <i class="fa fa-money fa-fw"></i>  Finance <i class="fa fa-caret-down"></i></div>
                <div id="finance" class="w3-hide w3-white w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Billing & Collection</a>
                    <a href="#" class="w3-bar-item w3-button">Financial Documents & Administration</a>
                    <a href="#" class="w3-bar-item w3-button">Accounting</a>
                    <a href="#" class="w3-bar-item w3-button">Financial Reports</a>
            </div>
            <div class="w3-bar-item w3-button" onclick="myAccFunc('facilities')">
                <i class="fa fa-university fa-fw"></i>  Reserve Facilities  <i class="fa fa-caret-down"></i></div>
                <div id="facilities" class="w3-hide w3-white w3-card-4">
                    <a href="#" class="w3-bar-item w3-button">Facilities & Inventory Management</a>
                    <a href="#" class="w3-bar-item w3-button">Reserve Facilities</a>
                    <a href="#" class="w3-bar-item w3-button">Reserve Equipment & Inventory</a>
            </div>
            <div class="w3-bar-item w3-button" onclick="myAccFunc('activities')">
                <i class="fa fa-users fa-fw"></i>  Community Activities  <i class="fa fa-caret-down"></i></div>
                <div id="activities" class="w3-hide w3-white w3-card-4">
                  <a href="#" class="w3-bar-item w3-button">Bulletin Board</a>
                  <a href="#" class="w3-bar-item w3-button">Community Forum</a>
                  <a href="#" class="w3-bar-item w3-button">Community Groups</a>
                  <a href="#" class="w3-bar-item w3-button">Events</a>
                  <a href="#" class="w3-bar-item w3-button">Public Information Reference</a>
                  <a href="#" class="w3-bar-item w3-button">Business Establishment & Services</a>
                  <a href="#" class="w3-bar-item w3-button">Election & Voting</a>
                  <a href="#" class="w3-bar-item w3-button">Community Map</a>
                  <a href="#" class="w3-bar-item w3-button">Grievance & Complaints</a>
                  
            </div>
            <div class="w3-bar-item w3-button" onclick="myAccFunc('maintenance')">
                <i class="fa fa-wrench fa-fw"></i>  Community Maintenance  <i class="fa fa-caret-down"></i></div>
                <div id="maintenance" class="w3-hide w3-white w3-card-4">
                  <a href="#" class="w3-bar-item w3-button">Maintenance Request</a>
                  <a href="#" class="w3-bar-item w3-button">Services Monitoring and Billing</a>
                  <a href="#" class="w3-bar-item w3-button">Service Provider Administration</a>
                  <a href="#" class="w3-bar-item w3-button">Construction Permit</a>
            </div>
            <div class="w3-bar-item w3-button" onclick="myAccFunc('security')">
                <i class="fa fa-lock fa-fw"></i>  Security  <i class="fa fa-caret-down"></i></div>
                <div id="security" class="w3-hide w3-white w3-card-4">
                  <a href="#" class="w3-bar-item w3-button">Visitor Pass</a>
                  <a href="#" class="w3-bar-item w3-button">Vehicle Pass</a>
                  <a href="#" class="w3-bar-item w3-button">Security Reports & Violations</a>
            </div>
            <br><br><br><br><br><br>
        </nav>


        <!-- Overlay effect when opening sidebar on small screens -->
        <div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">
            

            <div class="w3-container w3-blue">
              <h1>My Page</h1>
            </div>

            <img src="img_car.jpg" alt="Car" style="width:100%">

            <div class="w3-container">
            <h2>Sidebar Navigation Example</h2>
            <p>The sidebar with is set with "style="width:25%".</p>
            <p>The left margin of the page content is set to the same value.</p>
            </div>

            
          <!-- Header -->
          <header class="w3-container" style="padding-top:22px">
            <h5><b><i class="fa fa-dashboard"></i> My Dashboard</b></h5>
          </header>

          <div class="w3-row-padding w3-margin-bottom">
            <div class="w3-quarter">
              <div class="w3-container w3-red w3-padding-16">
                <div class="w3-left"><i class="fa fa-comment w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>52</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Messages</h4>
              </div>
            </div>
            <div class="w3-quarter">
              <div class="w3-container w3-blue w3-padding-16">
                <div class="w3-left"><i class="fa fa-eye w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>99</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Views</h4>
              </div>
            </div>
            <div class="w3-quarter">
              <div class="w3-container w3-teal w3-padding-16">
                <div class="w3-left"><i class="fa fa-share-alt w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>23</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Shares</h4>
              </div>
            </div>
            <div class="w3-quarter">
              <div class="w3-container w3-orange w3-text-white w3-padding-16">
                <div class="w3-left"><i class="fa fa-users w3-xxxlarge"></i></div>
                <div class="w3-right">
                  <h3>50</h3>
                </div>
                <div class="w3-clear"></div>
                <h4>Users</h4>
              </div>
            </div>
          </div>

          <div class="w3-panel">
            <div class="w3-row-padding" style="margin:0 -16px">
              <div class="w3-third">
                <h5>Regions</h5>
                <img src="/w3images/region.jpg" style="width:100%" alt="Google Regional Map">
              </div>
              <div class="w3-twothird">
                <h5>Feeds</h5>
                <table class="w3-table w3-striped w3-white">
                  <tr>
                    <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
                    <td>New record, over 90 views.</td>
                    <td><i>10 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
                    <td>Database error.</td>
                    <td><i>15 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
                    <td>New record, over 40 users.</td>
                    <td><i>17 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
                    <td>New comments.</td>
                    <td><i>25 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
                    <td>Check transactions.</td>
                    <td><i>28 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
                    <td>CPU overload.</td>
                    <td><i>35 mins</i></td>
                  </tr>
                  <tr>
                    <td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
                    <td>New shares.</td>
                    <td><i>39 mins</i></td>
                  </tr>
                </table>
              </div>
            </div>
          </div>
          <hr>
          <div class="w3-container">
            <h5>General Stats</h5>
            <p>New Visitors</p>
            <div class="w3-grey">
              <div class="w3-container w3-center w3-padding w3-green" style="width:25%">+25%</div>
            </div>

            <p>New Users</p>
            <div class="w3-grey">
              <div class="w3-container w3-center w3-padding w3-orange" style="width:50%">50%</div>
            </div>

            <p>Bounce Rate</p>
            <div class="w3-grey">
              <div class="w3-container w3-center w3-padding w3-red" style="width:75%">75%</div>
            </div>
          </div>
          <hr>

          <div class="w3-container">
            <h5>Countries</h5>
            <table class="w3-table w3-striped w3-bordered w3-border w3-hoverable w3-white">
              <tr>
                <td>United States</td>
                <td>65%</td>
              </tr>
              <tr>
                <td>UK</td>
                <td>15.7%</td>
              </tr>
              <tr>
                <td>Russia</td>
                <td>5.6%</td>
              </tr>
              <tr>
                <td>Spain</td>
                <td>2.1%</td>
              </tr>
              <tr>
                <td>India</td>
                <td>1.9%</td>
              </tr>
              <tr>
                <td>France</td>
                <td>1.5%</td>
              </tr>
            </table><br>
            <button class="w3-button w3-dark-grey">More Countries  <i class="fa fa-arrow-right"></i></button>
          </div>
          <hr>
          <div class="w3-container">
            <h5>Recent Users</h5>
            <ul class="w3-ul w3-card-4 w3-white">
              <li class="w3-padding-16">
                <img src="/w3images/avatar2.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                <span class="w3-xlarge">Mike</span><br>
              </li>
              <li class="w3-padding-16">
                <img src="/w3images/avatar5.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                <span class="w3-xlarge">Jill</span><br>
              </li>
              <li class="w3-padding-16">
                <img src="/w3images/avatar6.png" class="w3-left w3-circle w3-margin-right" style="width:35px">
                <span class="w3-xlarge">Jane</span><br>
              </li>
            </ul>
          </div>
          <hr>

          <div class="w3-container">
            <h5>Recent Comments</h5>
            <div class="w3-row">
              <div class="w3-col m2 text-center">
                <img class="w3-circle" src="/w3images/avatar3.png" style="width:96px;height:96px">
              </div>
              <div class="w3-col m10 w3-container">
                <h4>John <span class="w3-opacity w3-medium">Sep 29, 2014, 9:12 PM</span></h4>
                <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><br>
              </div>
            </div>

            <div class="w3-row">
              <div class="w3-col m2 text-center">
                <img class="w3-circle" src="/w3images/avatar1.png" style="width:96px;height:96px">
              </div>
              <div class="w3-col m10 w3-container">
                <h4>Bo <span class="w3-opacity w3-medium">Sep 28, 2014, 10:15 PM</span></h4>
                <p>Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><br>
              </div>
            </div>
          </div>
          <br>
          <div class="w3-container w3-dark-grey w3-padding-32">
            <div class="w3-row">
              <div class="w3-container w3-third">
                <h5 class="w3-bottombar w3-border-green">Demographic</h5>
                <p>Language</p>
                <p>Country</p>
                <p>City</p>
              </div>
              <div class="w3-container w3-third">
                <h5 class="w3-bottombar w3-border-red">System</h5>
                <p>Browser</p>
                <p>OS</p>
                <p>More</p>
              </div>
              <div class="w3-container w3-third">
                <h5 class="w3-bottombar w3-border-orange">Target</h5>
                <p>Users</p>
                <p>Active</p>
                <p>Geo</p>
                <p>Interests</p>
              </div>
            </div>
          </div>

          <!-- Footer -->
          <footer class="w3-container w3-padding-16 w3-light-grey">
            <h4>FOOTER</h4>
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
          </footer>

          <!-- End page content -->
        </div>

        <script>
        // Get the Sidebar
        var mySidebar = document.getElementById("mySidebar");

        // Get the DIV with overlay effect
        var overlayBg = document.getElementById("myOverlay");

        // Toggle between showing and hiding the sidebar, and add overlay effect
        function w3_open() {
            if (mySidebar.style.display === 'block') {
                mySidebar.style.display = 'none';
                overlayBg.style.display = "none";
            } else {
                mySidebar.style.display = 'block';
                overlayBg.style.display = "block";
            }
        }

        // Close the sidebar with the close button
        function w3_close() {
            mySidebar.style.display = "none";
            overlayBg.style.display = "none";
        }
        
        // Accordion effect in sidebar 
        function myAccFunc(id) {
            var x = document.getElementById(id);
            if (x.className.indexOf("w3-show") == -1) {
                x.className += " w3-show";
                x.previousElementSibling.className += " w3-dark-grey";
            } else { 
                x.className = x.className.replace(" w3-show", "");
                x.previousElementSibling.className = 
                x.previousElementSibling.className.replace(" w3-dark-grey", "");
            }
        }
        </script>

    </body>
</html>