<!DOCTYPE html>
<html>

<head>
    <title>Intranet Mailing System</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />

    <link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

    <!-- bootstrap cdn -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <!--/Style-CSS -->
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
    <script>
        function Login() {
            window.open("User_Login.jsp");
        }
    </script>

</head>

<body>
    <section class="w3l-forms-main-61">
        <div class="form-inner" >
            
                <div class="d-grid top-form">
                    <div class="logo">
                        <a class="brand-logo" href="Main.jsp"><span><span class="fa fa-viadeo"
									aria-hidden="true"></span>Intranet Mailing System</span></a>
                    </div>
                    <hr>
                </div>
                <div class="form-bg-blur">
                    <div class="form-61">
			<div class="card-body" >
                        <h4 class="form-head">Registration</h4>
			
                        <!-- form start here -->
                        <form action="RegistrationServlet" method="POST">
                             <div class="row">
                                <div class="col-md-6">
                                    <p class="text-head">First Name </p>
                                    <input type="text" name="fname" class="input" required autofocus/>
                                </div>
                                <div class="col-md-6">
                                    <p class="text-head">Last Name</p>
                                    <input type="text" name="lname" class="input" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p class="text-head">Email ID</p>
                                    <input type="email" name="email" class="input" required />
                                </div>
                            </div>
                             <div class="row">
                                <div class="col-md-12">
                                    <p class="text-head">Alternate Email ID</p>
                                    <input type="email" name="altr_email" class="input" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="text-head">Contact Number</p>
                                    <input type="text" name="phn_number" class="input form-control item" maxlength = "10" minlength = "10" required/>
                                </div>
                                <div class="col-md-6">
                                    <p class="text-head">Birthdate</p>
                                    <input type="date" name="bdate" class="input" required />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <p class="text-head">Create Password</p>
                                    <input type="password" name="create_pass" class="input form-control item" maxlength = "8" minlength = "4" pattern = "^[a-zA-Z0-9_.-]*$" required />
                                </div>
                                <div class="col-md-6">
                                    <p class="text-head">Confirm Password</p>
                                    <input type="password" name="password" class="input" required />
                                </div>
                            </div>
                            <div class="row">
                                <p class="text-left" style="color: red">Password should include at least one capital letter , one numeric value and length should be between 4 to 8 characters.!</p>
                            </div>
                    </div>
                    <div class="row justify-content-center">
                        <button type="submit" class="signupbutton btn" style="width: 300px; align-items: center;">Register</button>
                    </div>
           
                    <!-- form end here -->   
        </div>
               
    </section>
</body>

</html>