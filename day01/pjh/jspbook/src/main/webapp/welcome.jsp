 <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel = "stylesheet" href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
<title>Welcome</title>
</head>
<body>
	<nav class = "navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class = "navbar-brand" href="./welcome.jsp"> Home</a>
			</div>
		</div>
	</nav>
	<%! String greeting = "Welcome to Web Shopping Mall" ;
		String tagline = "Welcome to Web Market!";
	%>
	<div class = "jumbotron" style="background-image: url('https://media.istockphoto.com/id/1406960186/ko/%EC%82%AC%EC%A7%84/%EB%89%B4%EC%9A%95%EC%8B%9C%EC%9D%98-%EC%8A%A4%EC%B9%B4%EC%9D%B4%EB%9D%BC%EC%9D%B8-%EB%AF%B8%EA%B5%AD.webp?b=1&s=612x612&w=0&k=20&c=OQBQNZj-MiBPvcY2YBRJTYvk8kaSTFyrTP25M9v4ATQ=');">
		<div class="container">
			<h1 class = "display-3" style="font-weight: bold;">
				<%= greeting %>
			</h1>
		</div>
	</div>
	<div class = "container">
		<div class = "text-center">
			<h3>
				<%= tagline %>
			</h3>
		</div>
		<hr>
	</div>
	<footer class="container">
		<p>&copy: webmarket</p>
		<br>
		<p>C_202008094_박주호 </p>
		<!-- Categories widget-->
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                       <c:choose>
                       
                       	<c:when test = "${sessionScope.loginId == null }">
                        <div class="card-header" style="text-align: center;">로그인 후 이용 해주세요!</div>
                      	  <div class="card-body">
                            <div class="input-group">
                                <a href="/memberLoginForm" class="btn btn-primary" style="width: 100%;">로그인</a>
                            </div>
                          </div>
                          </c:when>
                          
                          <c:otherwise>
                          <div class="card-header" style="text-align: center;">MOVIE PROJECT</div>
                      	  <div class="card-body">
                            <div class="loginInfo">
                            	<c:choose>
                            	
                            		<c:when test="${sessionScope.loginState == 'YC' }">
			                        	<c:choose>
			                        		<c:when test="${sessionScope.loginProfile == null }">
												<%-- 등록된 프로필이 없는 경우 --%>
			                        			<img class="img-profile" alt="프로필" src="resources/memberprofile/기본이미2지.jpg">
			                        		</c:when>
			                        		<c:otherwise>
			                        			<%-- 등록된 프로필이 있는 경우 --%>
					                            <img class="img-profile" alt="프로필" src="resources/memberprofile/${sessionScope.loginProfile}">
			                        		</c:otherwise>
			                        	</c:choose>
                            		</c:when>
                            		<c:otherwise>
                            			<img class="img-profile" alt="프로필" src="${sessionScope.loginProfile}">
                            		</c:otherwise>
                            	</c:choose>

								'${sessionScope.loginName}'님 환영합니다.

                            </div>
                          </div>
                          </c:otherwise>
                          
						</c:choose>
                    </div>
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">회원메뉴</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">예매내역</a></li>
                                        <li><a href="#!">HTML</a></li>
                                        <li><a href="#!">Freebies</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">회원정보</a></li>
                                        <li><a href="#!">로그아웃</a></li>
                                        <li><a href="#!">Tutorials</a></li>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
	</footer>
	
</body>
</html>