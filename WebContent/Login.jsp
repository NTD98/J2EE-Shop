<%-- 
    Document   : Login
    Created on : Jan 4, 2017, 9:50:42 AM
    Author     : Admin Kute
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE | Login</title>
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
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    </head>
    <body>
                    <jsp:include page="header.jsp"></jsp:include>
                    <div class="single_top">
	 <div class="container"> 
	    <div class="register">
			  <div class="col-md-6 login-right">
			  	<h3>ĐĂNG NHẬP</h3>
				<p>If you have an account with us, please log in.</p>
                                <form action="UsersServlet" method="POST">
                                 <%if(session.getAttribute("error")!=null){%>
                                <div>
                                   <p style="color:red"><%=session.getAttribute("error")%></p>
                               </div> 
                               <%}%>
				  <div>
					<span>Email<label>*</label></span>
					<input type="text" name="email">
				  </div>
				  <div>
					<span>Mật khẩu<label>*</label></span>
					<input type="password" name="pass"> 
				  </div>
				  <input type="hidden" value="login" name="command">
                                        <input type="submit" value="Đăng Nhập">
			    </form>
			   </div>
			    <div class="col-md-6 login-left">
			  	 <h3>NEW CUSTOMERS</h3>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
				 <a class="acount-btn" href="Register.jsp">Create an Account</a>
			   </div>	
			   <div class="clearfix"> </div>
		</div>
     </div>
</div>      
                    <jsp:include page="footer.jsp"></jsp:include>


    </body>
</html>
