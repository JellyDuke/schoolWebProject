<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<style>
#img{
  	background-image: url('https://cdn.pixabay.com/photo/2017/07/19/01/41/clouds-2517653_640.jpg');
  	background-size: cover;
  	background-position: center; 
  	box-sizing: border-box;
}


.container{
}

.text-center{
	border: 1px solid black;
	border-radius: 7px;
	box-sizing: border-box;
}
</style>
<body>
	<%@ include file="menu.jsp" %>
	<%! String greeting="웹 쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web Market!"; %>
	<div class="jumbotron" id="img" class="avc">
		<div class="container">
			<h1 class="display-3" style="color: white ">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class="container">
			<h3 class="text-center" style="">
				<%= tagline %>
			</h3>
			<% Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if(hour/12 == 0){
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour+"시" + ":" + minute+'분'+":"+second+"초"+" " + am_pm;
				out.println("현재 접속 시간 : " + CT + "\n");%>
				
				<div class="row">
				</div>
			<hr>
	</div>
	<%@ include file="footer.jsp" %>
	
</body>
</html>