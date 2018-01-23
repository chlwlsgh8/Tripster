<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>검색결과 :: Tripster</title>
	
    <!-- Bootstrap -->
    <link href="/resources/dist/css/bootstrap.css" rel="stylesheet" media="screen">
    <link href="/resources/assets/css/custom.css" rel="stylesheet" media="screen">
    <link href="/resources/updates/update1/css/search.css" rel="stylesheet" media="screen">
	<link href="/resources/examples/carousel/carousel.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
	
    <!-- Fonts -->	
	<link href='http://fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:700,400,300,300italic' rel='stylesheet' type='text/css'>	
	<!-- Font-Awesome -->
    <link rel="stylesheet" type="text/css" href="/resources/assets/css/font-awesome.css" media="screen" />
    <!--[if lt IE 7]><link rel="stylesheet" type="text/css" href="assets/css/font-awesome-ie7.css" media="screen" /><![endif]-->
    <!-- REVOLUTION BANNER CSS SETTINGS -->
    <link rel="stylesheet" type="text/css" href="/resources/css/fullscreen.css" media="screen" />
	<link rel="stylesheet" type="text/css" href="/resources/rs-plugin/css/settings.css" media="screen" />
    <!-- Picker -->	
	<link rel="stylesheet" href="/resources/assets/css/jquery-ui.css" />	
	<!-- bin/jquery.slider.min.css -->
	<link rel="stylesheet" href="/resources/plugins/jslider/css/jslider.css" type="text/css">
	<link rel="stylesheet" href="/resources/plugins/jslider/css/jslider.round.css" type="text/css">	
    <!-- jQuery -->	
    <script src="/resources/assets/js/jquery.v2.0.3.js"></script>
	<!-- bin/jquery.slider.min.js -->
	<script type="text/javascript" src="/resources/plugins/jslider/js/jshashtable-2.1_src.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.numberformatter-1.2.3.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/tmpl.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.dependClass-0.1.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/draggable-0.1.js"></script>
	<script type="text/javascript" src="/resources/plugins/jslider/js/jquery.slider.js"></script>
  </head>
  <body id="top" class="thebg" >

	<!-- HEADER -->
	<%@include file="include/header2.jsp" %>
	<!-- 로그인 세션  -->
	<c:set var = "userSession" value = '<%= session.getAttribute("login") %>'/>
	
	<!-- Breadcrumbs -->
	<div class="container breadcrub">
		<span class="hidetext" style="color: black;font-weight:bold;">'${cri.keyword }' 검색결과</span>
		<div class="brlines"></div>
	</div><!-- / Breadcrumbs -->

	<div class="container">
		<!-- CONTENTS CONTAINER -->
		<div class="container pagecontainer offset-0" style="background:#f2f2f2">	
			
			<!-- LEFT CONTENT: SIDE FILTERS -->
	<%-- 		<%@include file="include/sidefilter.jsp" %> --%>
			
			<!-- RIGHT CONTENT -->
			<div class="rightcontent col-md-9 offset-2" style="background:#fff">
				<c:set var="getNum" value="${getNum}" />
				<div class="offset-2"><hr></div>
				
				
				
				<div class="" id="" >
				<!-- 컨텐츠 검색 결과 더보기 리스트 -->
					<c:if test="${getNum.contentsNum == 0 }" >
					<!-- 검색결과가 없을경우 -->
						<div class="offset-2" style="padding:20px ">
							<em>'${cri.keyword }'</em>에 대한 컨텐츠 검색 결과가 없습니다.
						</div>
					</c:if>
					<c:if test="${getNum.contentsNum > 0 }" >
					<!--  컨텐츠 결과가 있을경우  -->
						<!-- 컨텐츠 검색결과 리스트 -->
						<div class="totalResult contentsResult">	
							<div class="offset-2" style="padding:20px ">	
								<div class=" left"><b>컨텐츠</b></div>	
								<div class="clearfix"></div>
							</div>								
							<!-- 컨텐츠 리스트 -->
							<div id="displayDiv"></div>

							<div class="offset-2"><hr></div>
						</div>								
					</c:if>	
					<div id="displayDiv"></div>
			</div> <!-- END OF RIGHT CONTENT -->
		</div> <!-- END OF CONTENTS CONTAINER -->
	</div> <!-- END OF Container -->
	
	<!-- FOOTER -->
	<%@include file="include/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<script id="template" type="text/x-handlebar-template">
{{#each .}}
<span> {{contents_id}}</span>
<span> {{contents_title}}</span>
{{/each}}
</script>

<script>
var source = $("#template").html();
var template = Handlebars.compile(source);
var data = ${contentsList};
$("#displayDiv").html(template(data));
</script>





    <!-- Javascript -->	
    <script src="/resources/assets/js/js-list4.js"></script>	
    <!-- Custom Select -->
	<script type='text/javascript' src='/resources/assets/js/jquery.customSelect.js'></script>
    <!-- Custom Select -->
	<script type='text/javascript' src='/resources/js/lightbox.js'></script>	
    <!-- JS Ease -->	
    <script src="/resources/assets/js/jquery.easing.js"></script>
    <!-- Custom functions -->
    <script src="/resources/assets/js/functions.js"></script>
    <!-- jQuery KenBurn Slider  -->
    <script type="text/javascript" src="/resources/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
    <!-- Counter -->	
    <script src="/resources/assets/js/counter.js"></script>	
    <!-- Nicescroll  -->	
	<script src="/resources/assets/js/jquery.nicescroll.min.js"></script>
    <!-- Picker -->	
	<script src="/resources/assets/js/jquery-ui.js"></script>
    <!-- Bootstrap -->	
    <script src="/resources/dist/js/bootstrap.min.js"></script>
	<!--  Scrap Btn -->
  <script src="/resources/js/scrap.js"></script> 
	


  </body>

</html>