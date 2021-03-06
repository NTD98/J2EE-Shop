<%-- 
    Document   : Index
    Created on : Dec 15, 2016, 9:56:14 AM
    Author     : Admin Kute
--%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Shop J2EE</title>
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
    <%
    	ProductDAO productDAO = new ProductDAO();
	    ArrayList<Product> listProduct = productDAO.getListProduct();
	    CategoryDAO categoryDAO = new CategoryDAO();
	    ArrayList<Category> listCategory = categoryDAO.getListCategory();
	    String[] list1 = new String[100];
	    //String[] list1;
	    int number;
	    for(Category category : listCategory){
	        //count++;
	        //number = (int)(long)category.getCategoryID();
	        //list1[number] = category.getCategoryName();
	    }
    %>
        <jsp:include page="header.jsp"></jsp:include>
        <jsp:include page="banner.jsp"></jsp:include>
        <div class="content_top">
	<h3 class="m_1">Latest Products</h3>
	<div class="container">
	   <div class="box_1">
	       <div class="col-md-7">
			    <div class="section group">
						<div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
							<div class="shop-holder">
		                         <div class="product-img">
		                            <a href="#">
		                                <img width="225" height="265" src="<%=listProduct.get(1).getProductImage().toString()%>" class="img-responsive"  alt="item4">		                            </a>
		                            <a href="" class="button item_add"></a>		                         </div>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <div><a href="#" rel="tag"><%=listProduct.get(1).getProductName().toString()%></a></div>
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(1).getProductID()%>"><%=listProduct.get(1).getProductDescription()%></a></h3>
		                            <span class="amount item_price">$<%=listProduct.get(1).getProductPrice() %></span>
		                    </div>
						</div>
						<div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
							<div class="shop-holder">
		                         <div class="product-img">
		                            <a href="#">
		                                <img width="225" height="265" src="<%=listProduct.get(2).getProductImage().toString()%>" class="img-responsive"  alt="item4">		                            </a>
		                            <a href="" class="button item_add"></a>		                         </div>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <div><a href="#" rel="tag"><%=listProduct.get(2).getProductName().toString()%></a></div>
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(2).getProductID()%>"><%=listProduct.get(2).getProductDescription()%></a></h3>
		                            <span class="amount item_price">$<%=listProduct.get(2).getProductPrice() %></span>
		                    </div>
						</div>
						<div class="col_1_of_3 span_1_of_3 simpleCart_shelfItem">
							<div class="shop-holder">
		                         <div class="product-img">
		                            <a href="#">
		                                <img width="225" height="265" src="<%=listProduct.get(3).getProductImage().toString()%>" class="img-responsive"  alt="item4">		                            </a>
		                            <a href="" class="button item_add"></a>		                         </div>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <div><a href="#" rel="tag"><%=listProduct.get(3).getProductName().toString()%></a></div>
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(3).getProductID()%>"><%=listProduct.get(3).getProductDescription()%></a></h3>
		                            <span class="amount item_price">$<%=listProduct.get(3).getProductPrice() %></span>
		                    </div>
						</div>
						<div class="clearfix"></div> 
				</div>
		</div>
		<div class="col-md-5 row_3">
			<div class="about-block-content">
		       <div class="border-add"></div>
				<h4>Best Service</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati beatae quam voluptatibus deleniti ipsa consequatur!</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
				<p>		        	</p></div>
				<img src="images/pic9.jpg" class="img-responsive" alt=""/>
	    </div>
		<div class="clearfix"></div>
	</div>
</div>
</div>
<div class="content_bottom">
<div class="container">
	<h2 class="m_3">Blogs</h2>
	<div class="grid_1">
		<div class="col-md-6 blog_1"><a href="#">
			<div class="item-inner"> 
				<img src="images/pic7.jpg" class="img-responsive" alt=""/>																	
					<div class="date-comments">
						<div class="time"><span class="date"><span class="word1">14</span> <span class="word2">Jan</span> </span></div>											 
						<div class="comments">
						<span><span class="word1">0</span>
						<span class="word2">comment</span></span>
						</div>
					 </div>
			</div>   
		</a></div>
		<div class="col-md-6 row_2"><a href="#">
			<div class="item-inner"> 
				<img src="images/pic8.jpg" class="img-responsive" alt=""/>																	
					<div class="date-comments">
						<div class="time"><span class="date"><span class="word1">14</span> <span class="word2">Jan</span> </span></div>											 
						<div class="comments">
						<span><span class="word1">0</span>
						<span class="word2">comment</span></span>
						</div>
					 </div>
			</div>   
	    </a></div>
		<div class="clearfix"></div>
	</div>
</div>	
</div>
<div class="content_bottom-grid">
	<div class="col-md-6 row_4"></div>
	 <div class="col-md-6">
		<div class="row_5">
						<div class="col_1_of_3 span_1_of_3">
							<div class="shop-holder1">
		                        <a href="#"><img src="<%=listProduct.get(4).getProductImage().toString()%>" class="img-responsive" alt=""/></a>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(4).getProductID()%>"><%=listProduct.get(4).getProductName()%></a></h3>
		                            <span><span class="amount">$<%=listProduct.get(4).getProductPrice() %></span></span>
		                    </div>
						</div>
						<div class="col_1_of_3 span_1_of_3">
							<div class="shop-holder1">
		                        <a href="#"><img src="<%=listProduct.get(5).getProductImage().toString()%>" class="img-responsive" alt=""/></a>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(5).getProductID()%>"><%=listProduct.get(5).getProductName()%></a></h3>
		                            <span><span class="amount">$<%=listProduct.get(5).getProductPrice() %></span></span>
		                    </div>
						</div>
						<div class="col_1_of_3 span_1_of_3">
							<div class="shop-holder1">
		                        <a href="#"><img src="<%=listProduct.get(6).getProductImage().toString()%>" class="img-responsive" alt=""/></a>
		                    </div>
		                    <div class="shop-content" style="height: 80px;">
		                            <h3><a href="Single.jsp?product=<%=listProduct.get(6).getProductID()%>"><%=listProduct.get(6).getProductName()%></a></h3>
		                            <span><span class="amount">$<%=listProduct.get(6).getProductPrice() %></span></span>
		                    </div>
						</div>
						<div class="clearfix"></div> 
					</div>
	</div>
	<div class="clearfix"> </div>
</div>
        
        
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
