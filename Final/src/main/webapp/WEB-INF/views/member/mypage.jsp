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
	
	.nav-pills>li.active>a,.nav-pills>li.active>a:focus,.nav-pills>li.active>a:hover{
		background-color:#eeeeee;
		color:#5cb85c;
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
		        <li><button id="logout" type="button" class="btn btn-default btn-xs" style="margin-top: 15px">로그아웃</button>&nbsp;</li>
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
<div class="row" style="margin-top: 10px; margin-bottom: 1%">
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<h1 style="color: #BDBDBD">마이페이지</h1>
	</div>
	<div class="col-md-2"></div>
</div>
<div class="row">
	  <div class="col-md-2"></div>
	  <div class="col-md-2" style="background-color: #eeeeee; padding-top:1%; padding-bottom: 20%">
		  <ul class="nav nav-pills nav-stacked" role="tablist">
		    <li role="presentation" class="active"><a href="/member/mypage" aria-controls="myinfo" role="tab"><span style="font-size: medium">내 정보</span></a></li>
		    <li role="presentation"><a href="/member/mygroup" aria-controls="mygroup" role="tab"><span style="color: #aaaaaa; font-size: medium">내 동아리</span></a></li>
		    <li role="presentation"><a href="/member/paylist" aria-controls="paylist" role="tab"><span style="color: #aaaaaa; font-size: medium">결제내역</span></a></li>
			<li role="presentation"><a href="/member/mileage" aria-controls="mileage" role="tab"><span style="color: #aaaaaa; font-size: medium">마일리지</span></a></li>
		  </ul>
	  </div>
	  <!-- Tab panes -->
	  <div class="col-md-6">
		  <table class="table table-striped">
		  	<tr>
		  		<th>번호</th><th>제목</th><th>작성자</th><th>작성일</th>
		  	</tr>
		  	<tr>
		  		<td>1</td>
		  	</tr>
		  </table>
	  </div>
	  <div class="col-md-2"></div>
  </div>
</div>
<div id="footer" class="row">
	<div class="col-md-12" style="height:150px; background-color: #424242; margin-top: 10px"></div>
</div>
</body>
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
<script>
	$(document).ready(function() {
		$("#signup").on("click", function() {
			$(location).attr('href', "/member/signup");
		});
	})
</script>
</body>
</html>