<%-- 
    Document   : Register
    Created on : Jan 4, 2017, 9:26:02 AM
    Author     : Admin Kute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE | Register</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Buy_shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/simpleCart.min.js"> </script>
<!-- Custom Theme files -->
<!--webfont-->
<!-- <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'> -->
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript">
              $(document).ready(function () {
                   var x_timer;
                   $("#email").keyup(function (e) {
                        clearTimeout(x_timer);
                        var user_name = $(this).val();
                        x_timer = setTimeout(function () {
                            check_username_ajax(user_name);
                        }, 1000);
                        });
                   function check_username_ajax(email) {
                        $("#user-result").html('<img src="images/ajax-loader.png" />');
                        $.post('CheckEmailServlet', {'email':email}, function (data) {
                            $("#user-result").html(data);
                         });
                   }
               });
        </script>
    </head>
    <body>
    <jsp:include page="header.jsp"></jsp:include>
<div class="single_top">
	 <div class="container"> 
	     <div class="register">
		  	  <form action="UsersServlet" method="POST"> 
				 <div class="register-top-grid" >
					<h3>PERSONAL INFORMATION</h3>
					 <div>
						<span>Họ và tên<label>*</label></span>
						<input type="text" name="fullname" required="yes"> 
					 </div>
					 
					 <div>
						 <span>Email<label>*</label></span>
						 <input type="text" name="email" id="email" required="yes"> 
					 </div>
					 </div>
				     <div class="register-bottom-grid">
						    <h3>LOGIN INFORMATION</h3>
							 <div>
								<span>Password<label>*</label></span>
								<input type="password" name="pass" required="yes">
							 </div>
							 <div>
								<span>Nhập lại Password<label>*</label></span>
								<input type="password" name="pass" required="yes">
							 </div>
							 <div class="clearfix"> </div>
					 </div>
				<div class="clearfix"> </div>
				<div class="register-but">
					  <input type="hidden" value="insert" name="command">
                                            <input type="submit" value="ĐĂNG KÝ"> 
					   <div class="clearfix"> </div>
				</div>
				</form>
		   </div>
     </div>
</div>
                
                
                <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
