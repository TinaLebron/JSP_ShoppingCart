<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="tw.com.Controller.Temp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Bootstrap CSS -->
  <link rel="stylesheet" href="css/bootstrap.css">

  <link rel="stylesheet" href="css/styles.css">
  <!-- font-awesome CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/main.css">


</head>
<body>
<div class="container">
    <!--Navbar Top-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
      <a class="navbar-brand" href="#">TLSport</a>

      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link " href="/Shopping/HomeController">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/Shopping/ContactController">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/Shopping">Sing up</a>
          </li>
        </ul>
      </div>
      
         <span class="header-icons-noti" style="right: 0px;">
         		<%
					//获取cookie
			    Cookie[] cookies = request.getCookies();
         	int count = 0;
         	    if(cookies!=null && cookies.length>0) {
         	    
         	    	for(Cookie tempCookie : cookies){
         	    		String key = tempCookie.getName();
         	    		if("myProduct1".equals(key)){
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		else if("myProduct2".equals(key)) {
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		else if("myProduct3".equals(key)) {
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		else if("myProduct4".equals(key)) {
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		else if("myProduct5".equals(key)) {
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		else if("myProduct6".equals(key)) {
         	    			System.out.println("cookies value: " +tempCookie.getValue() + "\n");
         	    			count++;
         	    		}
         	    		
         	    	}
         	   	out.print(count) ;
         	   
         	}
			%>
         </span>
         	
         <a class="btn btn-outline-light ml-4 active" href="#" role="button">Cart</a>
        
    </nav>
    

    <!---Carousel-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item ">
          <img class="d-block w-100" src="assets/images/new_1.jpg" alt="First slide">
        </div>
        <div class="carousel-item active">
          <img class="d-block w-100" src="assets/images/new_2.jpg" alt="Second slide">
        </div>
        <div class="carousel-item">
          <img class="d-block w-100" src="assets/images/new_3.jpg" alt="Third slide">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>

	
		<br/><br/>
			<!-- Cart item -->
			
				<div class="wrap-table-shopping-cart bgwhite">
					<table class="table-shopping-cart">
						<tr class="table-head">
							<th class="column-1" style="color:White"></th>
							<th class="column-2" style="color:White">Product</th>
							<th class="column-3" style="color:White">Price</th>
							<th class="column-4 p-l-70" style="color:White">Quantity</th>
							<th class="column-5" style="color:White">Totalf</th>
						</tr>
 <%
					//cookies2 = request.getCookies();
						    if(cookies!=null && cookies.length>0) {
						    	
						    	Temp temp = new Temp();
						    	String content = 		"<<tr class='table-row'><td class='column-1'><div class='cart-img-product b-rad-4 o-f-hidden'></div></td>" +
                                        "<td class='column-2' style='color:White'>%s</td>" +
                                        "<td class='column-3' style='color:White'>%s</td>" +
                                    "<td class='column-4' style='color:White'><div class='flex-w bo5 of-hidden w-size17'><button class='btn-num-product-down color1 flex-c-m size7 bg8 eff2' style='color:White'><i class='fs-12 fa fa-minus' aria-hidden='true'></i></button><input class='size8 m-text18 t-center num-product' type='number' name='num-product1' value='1'>"+
                                        "<button class='btn-num-product-up color1 flex-c-m size7 bg8 eff2' style='color:White'><i class='fs-12 fa fa-plus' aria-hidden='true'></i></button></div></td><td class='column-5' style='color:White'>$1399</td></tr>" ;
						    	
						    	for(Cookie tempCookie : cookies){
						    		String key = tempCookie.getName();
						    		String val = tempCookie.getValue();
						  
						    		
						    		if("myProduct1".equals(key)){
						    			System.out.println("product  id : " + val  + "\n");
						    			System.out.println("---------------------myProduct1");
						    			out.print(String.format(	content,				    	       	    	
		                                    temp.GetProducts().get(0).getfName(),temp.GetProducts().get(0).getfPrice()));
			         	    		}
			         	    		else if("myProduct2".equals(key)) {
			         	    			System.out.println("product  id : " + val  + "\n");
			         	    			System.out.println("---------------------myProduct2");
			         	    			out.print(String.format(					    	    
			         	    					content ,
		                                    temp.GetProducts().get(1).getfName(),temp.GetProducts().get(1).getfPrice()));
			         	    		}
			         	    		else if("myProduct3".equals(key)) {
			         	    			System.out.println("product  id : " + val  + "\n");
			         	    			System.out.println("---------------------myProduct2");
			         	    			out.print(String.format(					    	    
			         	    					content ,
		                                    temp.GetProducts().get(2).getfName(),temp.GetProducts().get(2).getfPrice()));
			         	    		}
			         	    		else if("myProduct4".equals(key)) {
			         	    			System.out.println("product  id : " + val  + "\n");
			         	    			System.out.println("---------------------myProduct2");
			         	    			out.print(String.format(					    	    
			         	    					content ,
		                                    temp.GetProducts().get(3).getfName(),temp.GetProducts().get(3).getfPrice()));
			         	    		}
			         	    		else if("myProduct5".equals(key)) {
			         	    			System.out.println("product  id : " + val  + "\n");
			         	    			System.out.println("---------------------myProduct2");
			         	    			out.print(String.format(					    	    
			         	    					content ,
		                                    temp.GetProducts().get(4).getfName(),temp.GetProducts().get(4).getfPrice()));
			         	    		}
			         	    		else if("myProduct6".equals(key)) {
			         	    			System.out.println("product  id : " + val  + "\n");
			         	    			System.out.println("---------------------myProduct2");
			         	    			out.print(String.format(					    	    
			         	    					content ,
		                                    temp.GetProducts().get(5).getfName(),temp.GetProducts().get(5).getfPrice()));
			         	    		}
			         

						    	}
						    	out.flush();
						}

		
						%>
					</table>
				</div>
			

			<div class="flex-w flex-sb-m p-t-25 p-b-80 bo8 p-l-60 p-lr-15-sm">
				

				
					
					<span class="m-text22 w-size19 w-full-sm" style="color:White">
						Total:
					</span>

					<span class="m-text21 w-size20 w-full-sm" style="color:White">
						$3597.00
					</span>
					<br/><br/>
					<!-- Button -->
					<a class="btn btn-outline-light ml-4" href="/Shopping/CartController" role="button">Update Cart</a>
					<br/><br/><br/>
			        <footer>
			            <p style="color:White">&copy; @DateTime.Now.Year - udn.com All Rights Reserved. | Tina Terms of Use | Privacy Policy | CA Privacy Rights</p>
			        </footer>
			
			</div>
		</div>

 



<!--===============================================================================================-->
	<script type="text/javascript" src="./js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="./js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="module" src="./js/popper.min.js"></script>
	<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="./js/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect2')
		});
	</script>
<!--===============================================================================================-->
	<script src="./js/main.js"></script>

</body>
</html>