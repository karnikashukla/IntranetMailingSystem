<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import = "java.io.*,java.util.*" %>


<!DOCTYPE HTML>
<html>

    <head>
        <title>Intranet Mailing System</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Glance Design Dashboard Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript">
            addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
            window.scrollTo(0, 1);
            }
        </script>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />

        <!-- Custom CSS -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />

        <!-- font-awesome icons CSS -->
        <link href="css/font-awesome.css" rel="stylesheet">
        <!-- //font-awesome icons CSS-->

        <!-- side nav css file -->
        <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css' />
        <!-- //side nav css file -->

        <!-- js-->
        <script src="js/jquery-1.11.1.min.js"></script>
        <script src="js/modernizr.custom.js"></script>

        <!--webfonts-->
        <link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
        <!--//webfonts-->

        <!-- chart -->
        <script src="js/Chart.js"></script>
        <!-- //chart -->

        <!-- Metis Menu -->
        <script src="js/metisMenu.min.js"></script>
        <script src="js/custom.js"></script>
        <link href="css/custom.css" rel="stylesheet">
        <!--//Metis Menu -->
        <!-- requried-jsfiles-for owl -->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <script src="js/owl.carousel.js"></script>
        <script>
            $(document).ready(function () {
                $("#owl-demo").owlCarousel({
                    items: 3,
                    lazyLoad: true,
                    autoPlay: true,
                    pagination: true,
                    nav: true,
                });
            });
        </script>
        <!-- //requried-jsfiles-for owl -->
    </head>

    <body class="cbp-spmenu-push">
        <div class="main-content">
            <div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
                <!--left-fixed -navigation-->
                <aside class="sidebar-left">
                    <nav class="navbar navbar-inverse">
                        <div class="navbar-header">
                            <h1><a class="navbar-brand" href="Main.jsp"><span class="glyphicon glyphicon-envelope"></span>  MAIL<span class="dashboard_text"></span></a></h1>
                        </div>
                        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                            <ul class="sidebar-menu">
                               <li class="treeview">
                                <a href="Admin_dashboard.jsp">
                                    <i class="fa fa-dashboard"></i><span>Dashboard</span>
                                </a>
                            </li><br>
                            <li class="treeview">
                                <a href="tables.jsp">
                                    <i class="fa fa-table"></i> 
                                    <span>Contacts</span>
                                </a>
                            </li><br>
                                <li class="treeview">
                                    <a href="#">
                                        <i class="fa fa-envelope"></i> <span>Mailbox </span>
                                        <i class="fa fa-angle-left pull-right"></i><small class="label pull-right label-info1"></small><span class="label label-primary1 pull-right"></span></a>
                                    <ul class="treeview-menu">
                                        <li><a href="Admin_inbox.jsp"><i class="fa fa-angle-right"></i> Mail Inbox </a></li>
                                        <li><a href="Admin_compose.jsp"><i class="fa fa-angle-right"></i> Compose Mail </a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>
                </aside>
            </div>
            <!--left-fixed -navigation-->

            <!-- header-starts -->
            <div class="sticky-header header-section ">

                <div class="header-right">


                    <!--search-box-->
                    <div class="search-box">
                        <form class="input" method="GET" action="Search.jsp">
                            <input class="sb-search-input input__field--madoka" name="searchItem" placeholder="Search..." type="search" id="input-31" style=" width: 110%" />
                        </form>
                    </div>
                    <!--//end-search-box-->

                    <div class="profile_details">
                        <ul>
                            <li class="dropdown profile_details_drop">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                    
                                    <div class="profile_img">
                                        <span class="prfil-img"><img src="" alt=""> </span>
                                        <div class="user-name">
                                            <p><%= session.getAttribute("currentSessionUser")%></p>
                                            <span>Administrator</span>
                                        </div>
                                        <i class="fa fa-angle-down lnr"></i>
                                        <i class="fa fa-angle-up lnr"></i>
                                        <div class="clearfix"></div>
                                    </div>
                                </a>
                                <li class="dropdown">
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
            <!-- //header-ends -->
            <!-- main content start-->
            <div id="page-wrapper">
                <div class="main-page">
                    <div class="tables">
                        <h2 class="title1">User Details</h2>
                        <div class="panel-body widget-shadow">
                            <div style="overflow-x:auto;">
                                <table border="5" style="font-family: 'serif'; width: 80%; text-align: center">
                                    <tr style="background-color: black; color: white">
                                        <td style="padding: 15px">ID</td>
                                        <td style="padding: 15px">Username</td>
                                        <td style="padding: 15px">Email Address</td>
                                    </tr>
                                    <%
                                        Connection conn = null;
                                        int count = 0;
                                        //setting the connection
                                        try {
                                            Class.forName("com.mysql.jdbc.Driver");
                                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mailing_data?serverTimezone=UTC", "root", "");
                                            System.out.println("Connection Sucessfull");
                                            Statement stmt = conn.createStatement();
                                            String sql = "select * from tbl_users";
                                            ResultSet rs = stmt.executeQuery(sql);
                            while (rs.next()) {%>
                                    <tr>
                                        <td style="padding: 15px"><%= rs.getString("Id")%></td>
                                        <td style="padding: 15px"><%= rs.getString("f_name") + " " + rs.getString("l_name")%></td>
                                        <td style="padding: 15px"><a href="Admin_compose.jsp"><%= rs.getString("email") + "\n"%></td>
                                    </tr>

                                    <% }
                                        } catch (Exception e) {
                                            System.out.println("Error : " + e.toString());
                                        }
                                    %>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- new added graphs chart js-->

            <!-- Classie -->
            <!-- for toggle left push menu script -->
            <script src="js/classie.js"></script>
            <script>
                var menuLeft = document.getElementById('cbp-spmenu-s1'),
                        showLeftPush = document.getElementById('showLeftPush'),
                        body = document.body;

                showLeftPush.onclick = function () {
                    classie.toggle(this, 'active');
                    classie.toggle(body, 'cbp-spmenu-push-toright');
                    classie.toggle(menuLeft, 'cbp-spmenu-open');
                    disableOther('showLeftPush');
                };


                function disableOther(button) {
                    if (button !== 'showLeftPush') {
                        classie.toggle(showLeftPush, 'disabled');
                    }
                }
            </script>
            <!-- //Classie -->
            <!-- //for toggle left push menu script -->

            <!--scrolling js-->
            <script src="js/jquery.nicescroll.js"></script>
            <script src="js/scripts.js"></script>
            <!--//scrolling js-->
            <!-- side nav js -->
            <script src='js/SidebarNav.min.js' type='text/javascript'></script>
            <script>
                $('.sidebar-menu').SidebarNav()
            </script>
            <!-- //side nav js -->
            <!-- Bootstrap Core JavaScript -->
            <script src="js/bootstrap.js">
            </script>
            <!-- //Bootstrap Core JavaScript -->

    </body>

</html>