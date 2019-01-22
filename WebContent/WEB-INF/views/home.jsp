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
            <a class="nav-link active" href="#">Home</a>
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
         <a class="btn btn-outline-light ml-4" href="/Shopping/CartController" role="button">Cart</a>
        
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

    <!--Content-->
    <div class="container">
      <div class="row">
        <!--Category-->
        <div class="col-lg-3 mt-3">
          <div class="line-behind-title-text">
            <h2 class="background"><span>Category</span></h2>
          </div>

          <div class="accordion" id="accordionExample">
            <div class="card">
              <div class="card-header" id="headingOne">
                <a class="card-link" data-toggle="collapse" href="#collapseOne">
                  MEN
                </a>
              </div>
              <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                <div>
                  <ul class="none-bullet">
                    <li><a href="#">JERSEY</a></li>
                    <li><a href="#">CLOTHING</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">SALE</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingTwo">
                <a class="card-link" data-toggle="collapse" href="#collapseTwo">
                  WOMEN
                </a>
              </div>
              <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                <div>
                  <ul class="none-bullet">
                    <li><a href="#">JERSEY</a></li>
                    <li><a href="#">CLOTHING</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">SALE</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="card">
              <div class="card-header" id="headingThree">
                <a class="card-link" data-toggle="collapse" href="#collapseThree">
                  KIDS
                </a>
              </div>
              <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                <div>
                  <ul class="none-bullet">
                    <li><a href="#">JERSEY</a></li>
                    <li><a href="#">CLOTHING</a></li>
                    <li><a href="#">SHOES</a></li>
                    <li><a href="#">SALE</a></li>
                  </ul>
                </div>
              </div>
            </div>


          </div>
        </div>
        <!--products-->
        <div class="col-lg-7">
          <div class="line-behind-title-text mt-3">
            <h2 class="background"><span>products</span></h2>
          </div>
          <!--Cards-->
          <form name="submitForm" method="POST" action="/Shopping/HomeController" >
          <div class="row">
                 
            <div class="col-lg-4 col-md-6 mb-3">
              <div class="card">
                <img class="card-img-top" src="assets/images/1.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName1") %></h5>
                  <p class="card-text">$<%=  request.getAttribute("fPrice1") %></p>
           
    					<input class="btn btn-primary"  type="submit" name="action" value = "p1">
<!--     					<a href="javascript:document.submitForm.submit()" class="btn btn-primary" >Add to cart </a> -->
					
<!--                   <a href="/Shopping/HomeController" class="btn btn-primary" name="productId1" value="123" type="submit" onclick="">Add to cart </a> -->
                 
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="card">
                <img class="card-img-top" src="assets/images/2.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName2") %></h5>
                  <p class="card-text" >$<%=  request.getAttribute("fPrice2") %></p>

<!--     <input type="hidden" name="action" value = "p2"> -->
<input class="btn btn-primary"  type="submit" name="action" value = "p2">
<!--     <a href="javascript:document.submitForm.submit()" class="btn btn-primary" >Add to cart </a> -->

                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="card">
                <img class="card-img-top" src="assets/images/3.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName3") %></h5>
                  <p class="card-text">$<%=  request.getAttribute("fPrice3") %></p>
                  <input class="btn btn-primary"  type="submit" name="action" value = "p3">
<!--                   <a href="#" class="btn btn-primary">Add to cart</a> -->
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-3">
              <div class="card">
                <img class="card-img-top" src="assets/images/4.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName4") %></h5>
                  <p class="card-text">$<%=  request.getAttribute("fPrice4") %></p>
                   <input class="btn btn-primary"  type="submit" name="action" value = "p4">
<!--                   <a href="#" class="btn btn-primary">Add to cart</a> -->
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="card">
                <img class="card-img-top" src="assets/images/5.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName5") %></h5>
                  <p class="card-text">$<%=  request.getAttribute("fPrice5") %></p>
                   <input class="btn btn-primary"  type="submit" name="action" value = "p5">
<!--                   <a href="#" class="btn btn-primary">Add to cart</a> -->
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6">
              <div class="card">
                <img class="card-img-top" src="assets/images/6.PNG" alt="Card image cap">
                <div class="card-body">
                  <h5 class="card-title"><%=  request.getAttribute("fName6") %></h5>
                  <p class="card-text">$<%=  request.getAttribute("fPrice6") %></p>
                    <input class="btn btn-primary"  type="submit" name="action" value = "p6">
<!--                   <a href="#" class="btn btn-primary">Add to cart</a> -->
                </div>
              </div>
            </div>
        
          </div>
          </form>
          <!--Page navigation-->
          <nav class="mt-2" aria-label="Pagge navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                  <span class="sr-only">Previous</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                  <span class="sr-only">Next</span>
                </a>
              </li>
            </ul>
          </nav>
          <!--Hot Products-->
          <div class="line-behind-title-text mt-5">
              <h2 class="background"><span>hot products</span></h2>
            </div>
          <div id="recommended-item-carouse" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s1.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s2.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s3.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="carousel-item ">
                <div class="row">
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s4.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s5.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="card bg-dark">
                      <img class="card-img-top" src="assets/images/s6.PNG" alt="Card image cap">
                      <div class="card-body card-body-hot-product bg-dark-hot">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">$20.0</p>
                        <a href="#" class="btn btn-primary">Add to cart</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <a class="carousel-control-prev" href="#recommended-item-carouse" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#recommended-item-carouse" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        <!--advertisement-->
        <div class="col-lg-2 mt-5">
          <div class="container">
            <div class="row">
              <div class="col-lg-12 col-md-6 mt-3">
                <div>
                  <a href="https://www.nike.com/tw/zh_tw/?cp=ahns_kw_nike_br!tw!null!txt!g!device!Core%20Brand%20-%20GN%20-%20Pure%20-%20XCategory%20-%20Nike%20Taiwan%20-%20TM%20-%20General%20-%20EN_CH%20-%20Exact!nike!Exact&k_clickid=_k_EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE_k_&gclid=EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE"
                    target="_blank">
                    <img class="img-fluid" src="assets/images/d1.png" alt="error">
                  </a>
                </div>
              </div>
              <div class="col-lg-12 col-md-6 mt-3">
                <div>
                  <a href="https://www.nike.com/tw/zh_tw/?cp=ahns_kw_nike_br!tw!null!txt!g!device!Core%20Brand%20-%20GN%20-%20Pure%20-%20XCategory%20-%20Nike%20Taiwan%20-%20TM%20-%20General%20-%20EN_CH%20-%20Exact!nike!Exact&k_clickid=_k_EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE_k_&gclid=EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE"
                    target="_blank">
                    <img class="img-fluid" src="assets/images/d2.png" alt="error">
                  </a>
                </div>
              </div>
              <div class="col-lg-12 col-md-6 mt-3">
                <div>
                  <a href="https://www.nike.com/tw/zh_tw/?cp=ahns_kw_nike_br!tw!null!txt!g!device!Core%20Brand%20-%20GN%20-%20Pure%20-%20XCategory%20-%20Nike%20Taiwan%20-%20TM%20-%20General%20-%20EN_CH%20-%20Exact!nike!Exact&k_clickid=_k_EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE_k_&gclid=EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE"
                    target="_blank">
                    <img class="img-fluid" src="assets/images/d3.png" alt="error">
                  </a>
                </div>
              </div>
              <div class="col-lg-12 col-md-6 mt-3">
                <div>
                  <a href="https://www.nike.com/tw/zh_tw/?cp=ahns_kw_nike_br!tw!null!txt!g!device!Core%20Brand%20-%20GN%20-%20Pure%20-%20XCategory%20-%20Nike%20Taiwan%20-%20TM%20-%20General%20-%20EN_CH%20-%20Exact!nike!Exact&k_clickid=_k_EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE_k_&gclid=EAIaIQobChMIs5y2-PKs3gIVByQrCh2eqABWEAAYASAAEgJ3S_D_BwE"
                    target="_blank">
                    <img class="img-fluid" src="assets/images/d4.png" alt="error">
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!--Comment box-->
      <div class="center">
          <div class="line-behind-title-text mt-1">
              <h2 class="background"><span>Comment</span></h2>
            </div>
        <form>
          <div class="form-group">
            <div class="row">
              <div class="col-lg-6 mt-3">
                <input type="text" class="form-control" id="exampleInputName" placeholder="Name">
              </div>
              <div class="col-lg-6 mt-3">
                <input type="email" class="form-control" id="exampleInputEmail" placeholder="Email">
              </div>
            </div>
          </div>
          <div class="form-group mt-3">
            <input type="text" class="form-control" id="exampleInputSubject" placeholder="Subject">
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" rows="6" placeholder="Message"></textarea>
          </div>
          <button type="submit" class="rounded mx-auto d-block btn btn-primary">Submit</button>
        </form>
        
      </div>
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

