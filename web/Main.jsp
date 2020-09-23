<html>

<head>
    <title>Intranet Mailing System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />

    <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <!--/Style-CSS -->
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
   

    <!--//Style-CSS -->
    <script>
        function openUrlAdmin() {
            window.location.href = "Admin_Login.jsp";
        }

        function openUrlUser() {
            window.location.href = "User_Login.jsp";
        }
    </script>
</head>

<body>
    <section class="w3l-forms-main-61" >
        <div class="form-inner">
            <div class="wrapper">
                <div class="d-grid top-form">
                     <div class="logo">
                        <a class="brand-logo" href="Main.html"><span><span class="fa fa-viadeo" aria-hidden="true"></span>Intranet Mailing System</span>
                        </a>
                     </div>
                    <div class="form-bg-blur">
                    <div class="form-61">
                                  <div class="card-body"> 
                                        <!-- style="color: white;" -->
                                        <div class="row">
                                        <div class="col-md-6">
                                                <img src="images/admin.jpg" width="100" height="100" onclick="openUrlAdmin()" /><br><br> 
                                                <p class="text-center" style="padding-right: 5px; color: white">ADMIN</p>
                                            </div>
                                            <div class="col-md-4">
                                                <img src="images/user_1.jpg" width="100" height="100" onclick="openUrlUser()" /><br><br> 
                                                <p class="text-center" style="padding-left: 30px; color:white">USER</p>
                                            </div>
                                        </div>
                                    </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</body>

</html>