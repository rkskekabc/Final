<%@ page contentType="text/html; charset=EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<style>
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
<!-- ��ܹ� ���� -->
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
		      <a class="navbar-brand" href="#" style="color: #6DD66D">Green Cycle</a>
		    </div>
		
		    <!-- Collect the nav links, forms, and other content for toggling -->
		    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
		      <ul class="nav navbar-nav">
		        <li><a href="#">���񽺾ȳ�</a></li>
		        <li><a href="#">��ݾȳ�</a></li>
		        <li><a href="#">������</a></li>
		        <li><a href="#" style="color: #6DD66D">Stationã��/����</a></li>
		        <li><a href="#" style="color: #6DD66D">����������</a></li>
		      </ul>
		      <ul class="nav navbar-nav navbar-right">
		        <li><button type="button" class="btn btn-default btn-xs" style="margin-top: 15px">�α���</button>&nbsp;</li>
		        <li><button type="button" class="btn btn-default btn-xs" style="margin-top: 15px">ȸ������</button></li>
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
<!-- ��ܹ� �� -->

  <div class="row" style="margin-bottom: 1%">
	  <div class="col-md-2"></div>
	  <div class="col-md-8">
	  	<h1>������</h1>
	  </div>
	  <div class="col-md-2"></div>
  </div>
  <!-- Nav tabs -->
  <div class="row">
	  <div class="col-sm-2"></div>
	  <div class="col-sm-2" style="background-color: #eeeeee; padding-top:1%; padding-bottom: 20%">
		  <ul class="nav nav-pills nav-stacked" role="tablist">
		    <li role="presentation"><a href="/service/notice" aria-controls="notice" role="tab"><span style="color: #aaaaaa; font-size: medium">��������</span></a></li>
		    <li role="presentation"><a href="/service/faq" aria-controls="faq" role="tab"><span style="color: #aaaaaa; font-size: medium">FAQ</span></a></li>
		    <li role="presentation" class="active"><a href="/service/request" aria-controls="request" role="tab"><span style="font-size: medium">1:1����</span></a></li>

		  </ul>
	  </div>
	  <!-- Tab panes -->
	  <div class="col-sm-6">
		  <form class="form-horizontal">
			  <div class="form-group">
			    <label for="inputWriter" class="col-sm-2 control-label">�ۼ���</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" name="inputWriter" placeholder="�ۼ���">
			    </div>
			    <div class="col-sm-2"></div>
			  </div>
			  <div class="form-group">
			    <label for="inputTitle" class="col-sm-2 control-label">����</label>
			    <div class="col-sm-8">
			      <input type="text" class="form-control" name="inputTitle" placeholder="����">
			    </div>
			    <div class="col-sm-2"></div>
			  </div>
			  <div class="form-group">
			    <label for="inputTitle" class="col-sm-2 control-label">����</label>
			    <div class="col-sm-8">
			      <textarea class="form-control" rows="20" cols="10"></textarea>
			    </div>
			    <div class="col-sm-2"></div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-8 col-sm-4">
			      <button type="submit" class="btn btn-default">Ȯ��</button>&nbsp;
			      <button type="reset" class="btn btn-default">�ʱ�ȭ</button>
			    </div>
			  </div>
		 </form>
	  </div>
	  <div class="col-md-2"></div>
  </div>
<script src="/resources/js/jquery-2.2.4.min.js"></script>
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>