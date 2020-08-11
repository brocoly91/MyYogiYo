<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
		#header {
			background-color:#f0001e;
			height:100px;
		}
		#section {
			height: 100%;
			text-align:center;
/* 			float:left; */
			padding:10px;
		}
		#nav {
/* 			height:300px; */
			text-align:center;
		}
		#footer {
/* 			background-color:#FFCC00; */
/* 			height:500px; */
		}
		#cart {
		    float: right;
		    margin-top: 0px;
		    margin-right: 300px;
		}
		.pull-right {
		    float: right !important;
		}
		body{
		    letter-spacing: 0;
		    font-family: '맑은고딕', malgun gothic,'돋움',Dotum,'Apple SD Gothic Neo',Helvetica,sans-serif;
			margin:0px;
		}
		.btn {
		    display: inline-block;
		    padding: 6px 12px;
		    margin-bottom: 0;
		    font-size: 14px;
		    font-weight: normal;
		    line-height: 1.42857143;
		    text-align: center;
		    white-space: nowrap;
		    vertical-align: middle;
		    -ms-touch-action: manipulation;
		    touch-action: manipulation;
		    cursor: pointer;
		    -webkit-user-select: none;
		    -moz-user-select: none;
		    -ms-user-select: none;
		    user-select: none;
		    background-image: none;
		    border: 1px solid transparent;
		    border-radius: 4px;
		}
		#cart .btn-login {
		    position: relative;
		    top: 0;
		    left: 0;
		    margin: 15px 0 7px 0;
		    width: 220px;
		    max-height: 50px;
		    padding: 7px 0;
		    text-align: center;
		    font-size: 25px;
		    background: #f0001e;
		    border: 1px solid #ea7266;
		    color: #fff;
		    margin: 0;
		}
		#cart .btn-warning {
		    margin: 15px 10px 12px 5px;
		    width: 160px;
		    color: #fff;
		    max-height: 50px;
		    padding: 7px 0;
		    font-size: 25px;
		    border-radius: 2px;
		    border-color: #ff8a00;
		    background: #ff8a00;
		}
		#yogiyo {
		    margin: 12px 300px;
		    float: left;
		    cursor: pointer;
		}
		.input-group {
		    position: absolute;
			top: 27%;
			left: 39%;
		}
		.ico-loc {
		    background: #fff url(https://www.yogiyo.co.kr/mobile/image/sprite-icon.png?v=e970122f5eb53b77b06830c7307d33bdd48a61d6) no-repeat 0 0;
		    background-size: 400px;
		    width: 40px;
		    height: 40px;
		    border-radius: 4px;
		    border: none;
		}
	   .ico-pick {
		    background: #ff8a00;
		    background-image: none !important;
		    color: #fff;
		    width: 60px !important;
		    height: 45px;
		    text-indent: 0 !important;
		    z-index: 2;
		    border-top-right-radius: 5px;
		    border-bottom-right-radius: 5px;
		    float: right;
		    border: none;
		    /* border-right: bisque; */
/* 		    border-radius: 3px; */
		}
		 .form-control {
		    border: none;
		    border-right: 0;
		    border-radius: 0px;
		    border-top-left-radius: 5px;
		    border-bottom-left-radius: 5px;
		    height: 40px;
		    -webkit-box-shadow: inset 0 0 0 rgba(0, 0, 0, 0);
		    box-shadow: inset 0 0 0 rgba(0, 0, 0, 0);
		    -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
		    transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
		}
		
		input[type=text]:-ms-clear{
		    display: none;
		}
		
		#searchclear {
		    position: absolute;
		    right: 77px;
		    top: 0;
		    bottom: 0;
		    width: 5px;
		    height: 30px;
		    margin: auto;
		    font-size: 22px;
		    cursor: pointer;
		    color: #f0001e;
		    background-color: #fff;
		}
		
		#header, #nav, #section, #footer { text-align:center; }
/*  		#header, #footer { line-height:100px; }  */
 		#header { line-height:100px; } 

.main_list {
 text-align: center;
}

.list_start {
    text-align: center;
}

.list_detail {
    display: inline-block;
	border: 1px solid;
	margin-bottom: 10px;
    margin-left: 10px;
    padding: 1% 1% 10% 13%;
}


.box {
    position: relative;
    width: 50%; /* 원하는 너비 */
}
 
.box:before {
    content: "";
    display: block;
    padding-top: 100%; /* 1:1 비율 */
}
 
.content {
    position: absolute;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
}

ul {
    list-style-type: none;
    margin: 0% 13%;
    padding: 0;
    background-color: #fff;
}
ul:after{
    content:'';
    display: block;
    clear:both;
}
li {
    float: left;
}
li a {
    display: block;
    color: black;
    text-align: center;
    padding: 26px 16px;
    text-decoration: none;
}
li a:hover:not(.active) {
     background-color:  #333; 
     color: white;
}


#footer ul {
    list-style-type: none;
    margin: 1% 11%;
    padding: 0; 
    background-color: #fff;
}
#footer ul:after{
    content:'';
    display: block;
    clear:both;
}
#footer li {
    float: left;
}
#footer li a {
    display: block;
    color: black;
    text-align: center;
    padding: 0px 25px; 
    text-decoration: none;
}
#footer li a:hover:not(.active) {
      background-color:  white;  
}

	</style>
</head>
<body>

	<div id="header">
<!-- 		<div id="cart" class="pull-right"> -->

<!-- 	         <button type="button" class="btn btn-login ng-binding">로그인 <span>|</span> 회원가입</button> -->
<!-- 	         <button type="button" class="btn btn-warning ng-binding" >주문표(0)</button> -->
	         
<!--          </div> -->
        
<!--          <img id="yogiyo" src="/resources/img/yogiyologo.png"> -->
         
         <%@ include file="include/header.jsp" %>
	</div>
	<P>  The time on the server is ${serverTime}. </P>
	<div id="nav">
	
		<%@ include file="include/nav.jsp" %>
<!-- 		<div  style="background-image:url(https://www.yogiyo.co.kr/mobile/image/bg-top.png?v=1);background-size: 100% 100%;height: 300px;">  -->
			
<!-- 			<div class="input-group"> -->
<!-- 				<button class="ico-loc" type="button">&nbsp;</button> -->
<!-- 				<span id="searchclear">X</span> -->
<!-- 				&nbsp; -->
<!-- 				<input type="text" class="form-control" style="width: 315px; height: 45px;" placeholder="서울특별시 용산구 이촌동 302-146"></input> -->
				
<!-- 				<button type="button" class="ico-pick" >검색</button> -->
<!-- 			 </div> -->
<!-- 			 <div style="position: absolute;top: 325px; width: 100%;height: 8%; background: #fff; border: 1px solid;"> -->
<!-- 				    <ul> -->
<!-- 				      <li><a href="#aa" style="background :url(/resources/img/search.png); width: 34px; margin-top: 6px; height: 11px;"></a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">&nbsp;&nbsp;|</span> -->
<!-- 				      <li><a href="#aa">전체보기</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#bb">1인분 주문</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#cc">프렌차이즈</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">치킨</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">피자/양식</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">중국집</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">한식</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">일식/돈까스</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">족발/보쌈</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">야식</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">분식</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">카페/디저트</a></li> -->
<!-- 				      <span style="float: left;margin-top: 19px;font-size: 24px;color: #f5f3f3;">|</span>		       -->
<!-- 				      <li><a href="#dd">편의점/마트</a></li> -->
<!-- 				    </ul> -->
<!-- 			 </div> -->
<!-- 	    	</div>  -->
	</div>	
	
	<div id="section">
		<%@ include file="include/section.jsp" %>
<!-- 		<div class="main_list"> -->
		
<!-- 			<div class="list_start"> -->
<!-- 				<div class="list_detail" style="border:none"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(/resources/img/mo-01.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-02.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-03.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-04.png);"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-05.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-06.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-07.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-08.png);"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-09.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-10.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-11.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-01.png);"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-01.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-01.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-01.png);"></div> -->
<!-- 				<div class="list_detail" style="background-image:url(https://www.yogiyo.co.kr/mobile/image/category-01.png);"></div> -->
<!-- 				<div class="list_detail"  style="border:none"></div> -->
<!-- 			</div> -->
<!-- 		</div> -->
		
	</div>
	
	<div id="footer">

	<%@ include file="include/footer.jsp" %>
<!-- 				<div style="border: 1px solid;"> -->
<!-- <!-- 				<div style="position: relative;top: 323px; width: 100%;background: #fff;border: 1px solid; height: 66px;"> --> 
<!-- 				    <ul> -->
<!-- 				      <li><a href="#aa">이용약관</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#bb">개인정보처리방침</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#cc">회원등급정책</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">회사소개</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">요기요사장님</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 				      <li><a href="#dd">입점문의</a></li> -->
<!-- 				      <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 					  <li><a href="#dd">공지사항</a></li> -->
<!-- 					  <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 					  <li><a href="#dd">페이스북</a></li> -->
<!-- 					  <span style="float: left;margin-top: -8px;font-size: 24px;color: #f5f3f3;">|</span> -->
<!-- 					  <li><a href="#dd">블로그</a></li>					  					   -->
<!-- 				    </ul> -->
<!-- 			 </div> -->
<!-- 			 <br><br><br> -->
<!-- 			<div> -->
<!-- 				<strong style="font-size: 25px;">(유)딜리버리히어로 코리아</strong> -->
				
<!-- 			</div> -->
	</div>
	
</body>
</html>
