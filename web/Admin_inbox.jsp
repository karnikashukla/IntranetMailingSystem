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
        $(document).ready(function() {
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
                        <h1><a class="navbar-brand" href="Admin_dashboard.jsp"><span class="glyphicon glyphicon-envelope"></span>  MAIL<span class="dashboard_text"></span></a></h1>
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
                    <form class="input">
                        <input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
                        <label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
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
                                        <p><%=session.getAttribute("currentSessionUser")%></p>
                                        <span>Administrator</span>
                                    </div>
                                    <i class="fa fa-angle-down lnr"></i>
                                    <i class="fa fa-angle-up lnr"></i>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                            <ul class="dropdown-menu drp-mnu">
                                <li> <a href="#"><i class="fa fa-user"></i> My Account</a> </li>
                                <li> <a href="Main.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
                            </ul>
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
                <h2 class="title1">Mail Page</h2>
                <div class="col-md-4 compose-left">
                    <div class="folder widget-shadow">
                        <ul>
                            <li class="head"><i class="fa fa-folder" aria-hidden="true"></i>Folders</li>
                            <li><a href="Admin_inbox.html"><i class="fa fa-inbox"></i>Inbox <span></span></a></li>
                            <li><a href="#"><i class="fa fa fa-envelope-o"></i>Sent </a></li>
                            <li><a href="#"><i class="fa fa-file-text-o"></i>Drafts <span></span></a> </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-8 compose-right widget-shadow">
                    <div class="panel-default">
                        <div class="panel-heading">
                            Inbox
                        </div>
                        <div class="inbox-page">
                            <div class="inbox-row widget-shadow" id="accordion" role="tablist" aria-multiselectable="true">
                                <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                                <div class="mail mail-name">
                                    <h6>Zeel</h6>
                                </div>
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                    <div class="mail">
                                        <p>Hello , Good evening !!</p>
                                    </div>
                                </a>
                                <div class="mail-right dots_drop">
                                    <div class="dropdown">
                                        <a href="#" data-toggle="dropdown" aria-expanded="false">
                                            <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                        </a>
                                        <ul class="dropdown-menu float-right">
                                            <li>
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                    <i class="fa fa-reply mail-icon"></i> Reply
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="font-red" title="">
                                                    <i class="fa fa-trash-o mail-icon"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="mail-right">
                                    <p>30th Nov</p>
                                </div>
                                <div class="clearfix"> </div>
                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                    <div class="mail-body">
                                        <p>Have a good day.</p>
                                        <form>
                                            <input type="text" placeholder="Reply to sender" required="">
                                            <input type="submit" value="Send">
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="inbox-row widget-shadow" id="accordion1" role="tablist" aria-multiselectable="true">
                                <div class="mail "> <input type="checkbox" class="checkbox"> </div>
                                <div class="mail mail-name">
                                    <h6>Karagra</h6>
                                </div>
                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                    <div class="mail">
                                        <p>Have a great day.</p>
                                    </div>
                                </a>
                                <div class="mail-right dots_drop">
                                    <div class="dropdown">
                                        <a href="#" data-toggle="dropdown" aria-expanded="false">
                                            <p><i class="fa fa-ellipsis-v mail-icon"></i></p>
                                        </a>
                                        <ul class="dropdown-menu float-right">
                                            <li>
                                                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                    <i class="fa fa-reply mail-icon"></i> Reply
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" class="font-red" title="">
                                                    <i class="fa fa-trash-o mail-icon"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- side nav js -->
                <script src='js/SidebarNav.min.js' type='text/javascript'></script>
                <script>
                    $('.sidebar-menu').SidebarNav()
                </script>
                <!-- //side nav js -->

                <!-- Classie -->
                <!-- for toggle left push menu script -->
                <script src="js/classie.js"></script>
                <script>
                    var menuLeft = document.getElementById('cbp-spmenu-s1'),
                        showLeftPush = document.getElementById('showLeftPush'),
                        body = document.body;

                    showLeftPush.onclick = function() {
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

                <!-- Bootstrap Core JavaScript -->
                <script src="js/bootstrap.js">
                </script>

</body>

</html>