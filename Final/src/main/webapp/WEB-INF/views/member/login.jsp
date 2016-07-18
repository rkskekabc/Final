<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" />
<script src="<c:url value="/resources/js/jquery-2.2.4.min.js"></c:url>"></script>
<style>
	html,body{height:100%}
	body{margin:0}
	#wrap{min-height:100%}
	#footer{margin-top:-1em;height:1em}
	
	#nav{
		background-color: white;
		padding-top: 30px;
	}
	
	a{
		font-weight: bold;
	}
</style>
<body>
<div class="row">
	<div class="col-md-12" style="height:10px; background-color: #6DD66D"></div>
</div>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<nav class="navbar navbar-default" style="border-color: white;">
		  <div id="nav" class="container-fluid">
		    <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header" style="margin-right: 80px;">
		      <a class="navbar-brand" href="/" style="color: #6DD66D">Green Cycle</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="#">서비스안내</a></li>
		        <li><a href="#">요금안내</a></li>
		        <li><a href="#">고객센터</a></li>
		        <li><a href="#" style="color: #6DD66D">Station찾기/예약</a></li>
		        <li><a href="/member/mypage" style="color: #6DD66D">마이페이지</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><button id="login" type="button" class="btn btn-default btn-xs" style="margin-top: 15px">로그인</button>&nbsp;</li>
		        <li><button id="signup" type="button" class="btn btn-default btn-xs" style="margin-top: 15px">회원가입</button></li>
		      </ul>
		    </div><!-- /.navbar-collapse -->
		  </div><!-- /.container-fluid -->
		</nav>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	<div class="col-md-12" style="height:1px; background-color: #D8D8D8"></div>
</div>
<div id="wrap">
<div class="row" style="margin-top: 10px">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h1 style="color: #BDBDBD">로그인</h1>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row" style="margin-top: 120px">
	<div class="col-md-4"></div>
	<div class="col-md-4">
		<form action="/member/doLogin" method="post" class="form-horizontal">
			<div class="form-group">
				<label for="inputName" class="col-md-3 control-label"></label>
				<div class="col-md-9">
					<input type="text" name="m_id" class="form-control" style="width: 80%" placeholder="아이디"/>
				</div>
			</div>
			<div class="form-group">
				<label for="inputName" class="col-md-3 control-label"></label>
				<div class="col-md-9">
					<input type="text" name="m_pw" class="form-control" style="width: 80%" placeholder="비밀번호"/>
				</div>
			</div>
			<br/>
			<div class="col-md-3"></div>
			<div class="col-md-9">
				<input type="submit" value="로그인" class="btn btn-success btn-lg" style="width: 80%"/>
			</div>
		</form>
		<br/><br/><br/>
		<a href="/member/signup" style="margin-right: 8%; margin-left: 30%">회원가입</a>
		<a href="#" style="margin-right: 8%">아이디찾기</a>
		<a href="#">비밀번호찾기</a>
	</div>
	<div class="col-md-4"></div>
</div>
</div>
<div id="footer" class="row">
	<div class="col-md-12" style="height:150px; background-color: #424242; margin-top: 10px"></div>
</div>
</body>
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
<script>
	$(document).ready(function() {
		$("#login").on("click", function() {
			$(location).attr('href', "/member/login");
		});
		
		$("#signup").on("click", function() {
			$(location).attr('href', "/member/signup");
		});
	})
</script>
</html>