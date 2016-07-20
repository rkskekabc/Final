<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false"%>
<html>
<head>
	<title>Home</title>
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
		      	<c:choose>
		      		<c:when test="${member == null}">
		      			<li><button id="login" type="button" class="btn btn-default btn-xs" style="margin-top: 15px">로그인</button>&nbsp;</li>
		      		</c:when>
		      		<c:when test="${member != null}">
		      			<li><label class="label label-info" style="margin-top: 15px">${member.m_name}님, 안녕하세요!</label>&nbsp;</li>
		        		<li><button id="logout" type="button" class="btn btn-default btn-xs" style="margin-top: 15px" data-toggle="modal" data-target="#logoutmodal">로그아웃</button>&nbsp;</li>
		      		</c:when>
		      	</c:choose>
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
	<div class="col-md-4">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
		  <!-- Indicators -->
		  <ol class="carousel-indicators">
		    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		    <li data-target="#myCarousel" data-slide-to="1"></li>
		    <li data-target="#myCarousel" data-slide-to="2"></li>
		  </ol>
		
		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="item active">
		      <img src="<c:url value="/resources/images/Tulips.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	첫번째 사진
		      </div>
		    </div>
		    <div class="item">
		      <img src="<c:url value="/resources/images/Hydrangeas.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	두번째 사진
		      </div>
		    </div>
		    <div class="item">
		      <img src="<c:url value="/resources/images/Chrysanthemum.jpg"></c:url>" alt="cycle" style="width: 100%; height: auto;">
		      <div class="carousel-caption">
		        	세번째 사진
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<div class="col-md-4">
		<a href="#" class="thumbnail">
			<img src="<c:url value="/resources/images/Koala.jpg"></c:url>" alt="cycle" style="width: 85%; height: auto;">
		</a>
	</div>
	<div class="col-md-2"></div>
</div>
<br/>
<div class="row">
	<div class="col-md-2"></div>
	<div class="col-md-4">
		<div class="btn-group" role="group">
			<button type="button" id="myButton" class="btn btn-info" style="width: 100%; padding: 15px; margin-bottom: 10px; font-size: 25px; font-weight: bold;">Station 검색 바로가기</button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/Desert.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/Jellyfish.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/Lighthouse.jpg"></c:url>" width="100%" height="20%"></img></button>
			<button type="button" class="btn btn-default" style="width: 25%;"><img src="<c:url value="/resources/images/Penguins.jpg"></c:url>" width="100%" height="20%"></img></button>
		</div>
	</div>
	<div class="col-md-4">
	  <!-- Nav tabs -->
	  <ul class="nav nav-tabs" role="tablist">
	    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">공지사항</a></li>
	    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">이용후기</a></li>
	    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">문의사항</a></li>
	  </ul>
	
	  <!-- Tab panes -->
	  <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="home">
	    	<ul>
	    		<li>첫번째 공지사항</li>
	    		<li>두번째 공지사항</li>
	    		<li>...</li>
	    	</ul>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="profile">
	    	<ul>
	    		<li>첫번째 이용후기</li>
	    		<li>두번째 이용후기</li>
	    		<li>...</li>
	    	</ul>
	    </div>
	    <div role="tabpanel" class="tab-pane" id="messages">
	    	<ul>
	    		<li>첫번째 문의사항</li>
	    		<li>두번째 문의사항</li>
	    		<li>...</li>
	    	</ul>
	    </div>
	  </div>
	</div>
	<div class="col-md-2"></div>
</div>
</div>
<div id="footer" class="row">
	<div class="col-md-12" style="height:150px; background-color: #424242; margin-top: 10px"></div>
</div>
<!-- 로그아웃 모달창 -->
<div id="logoutmodal" class="modal bs-example-modal-sm" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">로그아웃 확인</h4>
      </div>
      <div class="modal-body">
        <p>${member.m_name}님, 로그아웃 하시겠습니까?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        <button id="logoutconfirm" type="button" class="btn btn-primary">확인</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
</body>
<script src="<c:url value="/resources/js/bootstrap.min.js"></c:url>"></script>
<script>
	$(document).ready(function() {
		$("#login").on("click", function() {
			$(location).attr('href', "/member/login");
		});

		$("#logoutconfirm").on("click", function() {
			$(location).attr('href', "/member/logout");
		});
		
		$("#signup").on("click", function() {
			$(location).attr('href', "/member/signup");
		});
	})
</script>
</html>
