<%-- 
    Document   : Admin_Change_Password_otp
    Created on : 29 Aug, 2020, 12:33:17 AM
    Author     : karnika
--%>
<%
    request.getAttribute("generated_otp");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
						<h4 class="form-head"></h4>

						<form action="AdminChangePasswordOTP" method="POST">
							<div class="">
								<p class="text-head">Enter OTP</p>
								<input type="text" name="otp" class="input" required />
							</div>
							
							<button type="submit" class="signinbutton btn">Confirm</button>
 							<br>
                                                </form>
					</div>
				</div>
			</div>
			
		</div>
	</section>
</body>

</html>
