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
		<p>C_202008094_����ȣ </p>
		<!-- Categories widget-->
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                       <c:choose>
                       
                       	<c:when test = "${sessionScope.loginId == null }">
                        <div class="card-header" style="text-align: center;">�α��� �� �̿� ���ּ���!</div>
                      	  <div class="card-body">
                            <div class="input-group">
                                <a href="/memberLoginForm" class="btn btn-primary" style="width: 100%;">�α���</a>
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
												<%-- ��ϵ� �������� ���� ��� --%>
			                        			<img class="img-profile" alt="������" src="resources/memberprofile/�⺻�̹�2��.jpg">
			                        		</c:when>
			                        		<c:otherwise>
			                        			<%-- ��ϵ� �������� �ִ� ��� --%>
					                            <img class="img-profile" alt="������" src="resources/memberprofile/${sessionScope.loginProfile}">
			                        		</c:otherwise>
			                        	</c:choose>
                            		</c:when>
                            		<c:otherwise>
                            			<img class="img-profile" alt="������" src="${sessionScope.loginProfile}">
                            		</c:otherwise>
                            	</c:choose>

								'${sessionScope.loginName}'�� ȯ���մϴ�.

                            </div>
                          </div>
                          </c:otherwise>
                          
						</c:choose>
                    </div>
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">ȸ���޴�</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">���ų���</a></li>
                                        <li><a href="#!">HTML</a></li>
                                        <li><a href="#!">Freebies</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-4">
                                    <ul class="list-unstyled mb-0">
                                        <li><a href="#!">ȸ������</a></li>
                                        <li><a href="#!">�α׾ƿ�</a></li>
                                        <li><a href="#!">Tutorials</a></li>
                                    </ul>
                                </div>
                                
                            </div>
                        </div>
                    </div>
	</footer>
	
</body>
</html>