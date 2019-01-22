<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
            <a class="nav-link" href="/Shopping/HomeController">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="#">Contact</a>
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
         	
         <a class="btn btn-outline-light ml-4" href="/Shopping/CartController" role="button">Cart</a>
        
    </nav>
    <!--Content-->
    <div class="container">
      
        <h2 style="color:White">Contact</h2>

		<address>
		    <strong style="color:White">Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
		    <strong style="color:White">Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
		</address>
		<br />
		 <footer>
            <p style="color:White">&copy; @DateTime.Now.Year - udn.com All Rights Reserved. | Tina Terms of Use | Privacy Policy | CA Privacy Rights</p>
        </footer>
    </div>
    
  </div>
  
        
  
  
   <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script  src="./js/jquery.min.js"></script>
  <script type="module" src="./js/popper.min.js"></script>
  <script  src="./js/bootstrap.min.js"></script>
	
	
	
</body>
</html>