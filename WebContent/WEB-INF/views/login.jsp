<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

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
			   
			  <button type="submit" class="btn btn-default">送出</button>
			  <br/>
			  
			</form>
			<br/>
			<div>
			  		<button type="submit" href="/Shopping/SingUpController">註冊</button>
			  </div>
			
		</div>
	</div>	
</div>

</body>
</html>

</body>
</html>