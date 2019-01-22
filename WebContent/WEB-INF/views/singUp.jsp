<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body style="background-color: #252522">


<div class="container" >
	<div class="row">
		<div align="center" style="background-color :#5386ff;border-style:groove; border-radius:100px; padding:40px; margin:100px;">
			<img src= "./images/Untitled1.png" />	
			<form method="post" action=""  enctype="application/x-www-form-urlencoded" onsubmit="return validate">
			  <div class="form-group">
				<label for="username">使用者名稱</label>
				<input class="form-control"  type="text" name="username" id="username" placeholder="請輸入使用者名稱" required />
			  </div>
			  <div class="form-group">
			  	<label for="password">密碼</label>
			  	<input class="form-control" type="password" name="password" id="password" placeholder="請輸入密碼" required/>
			  </div>	
			   
			    <a class="nav-link" href="/Shopping/SingUpController">註冊</a>
			  
			</form>
		</div>
	</div>	
</div>

</body>
</html>