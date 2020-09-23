<%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            hitsCount = 1;
         } else {
            /* return visit */
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
%>
<!DOCTYPE html>
<html>

<head>
	<title>Intranet Mailing System</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	
	<link href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800" rel="stylesheet">

	<!--/Style-CSS -->
	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />

	<script>
		function Registration(){
			window.location.href = "User_Registration.jsp";
		}
	</script>
	
</head>

<body>
	<section class="w3l-forms-main-61">
		<div class="form-inner">
			<div class="wrapper">
				<div class="d-grid top-form">
					<div class="logo">
						<a class="brand-logo" href="Main.jsp"><span><span class="fa fa-viadeo"
									aria-hidden="true"></span>Intranet Mailing System</span></a>
					
				</div>
				</div>
				<div class="form-bg-blur">
					<div class="form-61">
						<h4 class="form-head">Login</h4>

						<form method="POST">
							<div class="">
								<p class="text-head">Username</p>
								<input type="text" name="username" class="input" />
							</div>
							<div class="">
								<p class="text-head">Password</p>
								<input type="password" name="password" class="input" />
							</div>
				                            <button type="submit" class="signinbutton btn" formaction="UserLoginServlet">Login</button>
                                                            <button type="submit" class="signupbutton btn" formaction="User_Registration.jsp">Register</button> <br>
                                                            <p class="signup">Forgot password?<a href="#forgot" class="signuplink">Click here</a></p>
						</form>
					</div>
				</div>
			</div>
			
		</div>
	</section>
</body>

</html>