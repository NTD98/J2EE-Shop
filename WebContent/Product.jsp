<%-- 
    Document   : Product
    Created on : Dec 23, 2016, 9:34:53 AM
    Author     : Admin Kute
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Cart"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE | Product</title>
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
<!-- the jScrollPane script -->
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
    </head>
    <body>
        
 
       <%
            ProductDAO productDAO = new ProductDAO();
            long categoryID = 0;
            if (request.getParameter("categoryID") != null) {
                categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            int pages = 0, firstResult = 0, maxResult = 0, total = 0, pagesize=10;
            if (request.getParameter("pages") != null) {
                pages = (int) Integer.parseInt(request.getParameter("pages"));
            }
            total = productDAO.countProductByCategory(categoryID);
            if (total <= pagesize) {
                firstResult = 1;
                maxResult = total;
            }else{
                firstResult = (pages - 1) * pagesize;
                maxResult = pagesize;
            }
            ArrayList<Product> listProduct = productDAO.getListProductByNav(categoryID, firstResult, maxResult);
        %>        
        <jsp:include page="header.jsp"></jsp:include>
 <div class="container">
<div class="women_main">
	<div class="col-md-9 w_content">       
            
           

                       
      
            
	
	    
		<!-- grids_of_4 -->
		<div class="grids_of_4">
             <% for (Product p : listProduct) {   %> 
		  <div class="grid1_of_4 simpleCart_shelfItem">
                      
				<div class="content_box"><a href="Single.jsp?product=<%=p.getProductID()%>">
			   	  <div class="view view-fifth">
			   	   	 <img src="<%=p.getProductImage()%>" class="img-responsive" alt="<%=p.getProductName()%>"/>
				   	   	<div class="mask1">
	                        <div class="info"> </div>
			            </div>
				   	  </a>
				   </div>
				    <h5><a href="Single.jsp?product=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
				    <h6><%=p.getProductDescription()%></h6>
				     <div class="size_1">
				     	<span class="item_price"><%=p.getProductPrice()%></span>
				       <select class="item_Size">
						<option value="Small">L</option>
						<option value="Medium">S</option>
						<option value="Large">M</option>	
						<option value="Large">XL</option>	
		      		    </select>
		      		    <div class="clearfix"></div>
		      		  </div>
		      		  <div class="size_2">
		      		    <div class="size_2-left"> 
					       <input type="text" class="item_quantity quantity_1" value="1" />
					    </div>
                                      
			    	    <div class="clearfix"> </div>
			    	 </div>
			    	 <div class="size_2" style="height: 20px;width: auto;margin-top: 10px;">
		      		    <div class="size_2-left"> 
		      		    <a href="CartServlet?command=plus&productID=<%=p.getProductID()%>"
                                         class="item_add add3">THÊM GIỎ HÀNG</a>
			    	    <div class="clearfix"> </div>
                                         </div>
                                         </div>
                                    
			     </div>
			</div>
			
 <%
            }
 %>
	<div class="clearfix"></div>
</div>
        <ul class="start">
                    <li><a href="#"><i></i></a></li>
                    <%for(int i=1;i<=(total/pagesize)+1;i++){%>
                        <li class="arrow"><a href="Product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                    <%}%>
                    <li><a href="#"><i class="next"> </i></a></li>
                </ul>
</div>
</div>
    
	
        
        
        <jsp:include page="footer.jsp"></jsp:include>
     </body>
 </html>
