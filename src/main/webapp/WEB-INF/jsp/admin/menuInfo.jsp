<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/main.css" />
<style type="text/css">
#info {
    font-size: 110%;
    border-bottom: 0px solid #d9d9d9;
    border: 4px solid #d9d9d9;
    margin-left: 7%;
    width: 50%;
    margin-bottom: 1%;
    margin-top: 1%;
}

.browse-input
{
	line-height: 12.4em;
    font-size: 0.7em;
    vertical-align: middle;
    text-align: center;
/*     background-image: url(/resources/img/mo-01.png); */
    background-image: none;
    background-color: rgba(0, 0, 0, 0.7);
    color: #fff;
    padding: 6px;
    width: 18%;
    margin-left: 1%;
}
.container{
	width: 100%;
	margin: 0 auto;
}



ul.tabs{
	margin: 0px;
	padding: 0px;
	list-style: none;
	border-bottom: 2px solid #ddd;
}
ul.tabs li{
    background: none;
    color: #222;
    display: inline-block;
    padding: 3% 0% 2% 0%;
    cursor: pointer;
    width: 33%;
    text-align: center;
    border-left: 2px solid #d9d9d9;
    font-size: 23px;
}

ul.tabs li.current{
	background: white;
	color: #222;
	width: 33%;
    border-bottom: 7px solid #f0001e;
    color: #f0001e;
    border-left: 2px solid #d9d9d9;
	padding-bottom: 1.25%;
}

.tab-content{
	display: none;
	background: white;
/* 	padding: 15px; */

}

.tab-content.current{
	display: inherit;
}
#tab-menu{
	border: 1px solid #d9d9d9;
    background-color: #d9d9d9;
    padding: 2%;
    border-bottom-color: #c3c0c0;
}

.searchModal {
display: none; /* Hidden by default */
position: fixed; /* Stay in place */
z-index: 10; /* Sit on top */
left: 0;
top: 0;
width: 100%; /* Full width */
height: 100%; /* Full height */
overflow: auto; /* Enable scroll if needed */
background-color: rgb(0,0,0); /* Fallback color */
background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
}
.search-modal-content {
background-color: #fefefe;
margin: 15% auto; /* 15% from the top and centered */
padding: 20px;
border: 1px solid #888;
width: 70%; /* Could be more or less, depending on screen size */
}
#menuimg{
 position: relative;float: right;bottom: 114.5px; width: 126px;
}
#close { 
float:right; display:inline-block; font-weight: 700; text-shadow: 0 1px 0 #fff; font-size: 1.7rem;  padding: 0% 0% 0% 0% ;margin-top: -2%;
    margin-right: -1%;
} 
#close:hover { 
border: 0; cursor:pointer; opacity: .75; 
}

#menu-detail{
	line-height: 80px;
    border: 1px solid #d9d9d9;
    padding: 1%;
}

#dropMenu{
	position: absolute;
    left: 55%;
    cursor: pointer;
}
#menuInfo{
    position: relative;
    line-height: 2;
/*     line-break: anywhere; */
    font-weight: bold;
}
#customInfo{
	position: relative;padding: 3%;font-size: 23px;
}
#customInfo-span{
	font-size: 18px;
    color: #636161;
    line-height: 2;
}
#customInfo-text{
	font-size: 18px;
    color: blak;
    line-height: 2;
    margin-left: 10%;
}

</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	var apndMenuGrp = null;
	var getParentID = null;
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})
	
	
	$('#menuGroupbutton').click(function(){
		$('#megrpName').val('')
		$('#megrpExp').val('')
		$("#modalGrop").show();
	})
	
	$('#menuDetailbutton').click(function(){
		$("#modalMenu").show();
	})
	
	$('#instMegrp').click(function(){
		apndMenuGrp = apndMenuGrp+1;
		
		 var megrpName = $("#megrpName").val()
		 var megrpExp = $("#megrpExp").val()
		 
		 if(megrpName ==""){
			 alert("그룹명을 입력해 주세요");
			 return false;
		 }else{
			 
			 insertGrpFnc();
			 //asdasdasas
			 var output = '<div id="tab-menu" class="apndMenuGrpNo'+apndMenuGrp+'">';
			 	 output += megrpName ;
				 output += '<span id="dropMenu" class="spnMenu'+apndMenuGrp+'">▲</span>';
				 output += "&nbsp;"
				 output += "</div>";
				 
	 			 output += '<div id="menu-detail" class="menuGrpNo'+apndMenuGrp+'">';
				 output += "메뉴 추가" ;
				 output += "&nbsp;"
				 output += '<input type="button" id="menuDetailbutton" name="menuDetailbutton" value="&#43;" style="font-size: 18px;">';
				 output += "</div>";
				 
			 
			 $("#menuGropuInsert").append(output);
			 
			 $('.searchModal').hide();
		 }
		 
	})
	
	function insertGrpFnc() {
		debugger;
		var megrpName = $('#megrpName').val();
		var megrpExp = $('#megrpExp').val();
		
		var param = {
				"grpMenuName" : megrpName,
				"grpMenuExp" : megrpExp
			};
			
		    $.ajax({
		        url:'${pageContext.request.contextPath}/insertGropMenu.do',
		        type:"post",
		        data:param,
		        success:function(data){
		        	alert("성공");
		        },
		        error:function(){
	                alert("에러입니다");
	                return false;
		        }
		    });
		
	};
	
	$('#instMenu').click(function(){
		apndMenuGrp;
		var grpNo = getParentID.slice(-1);
		
		 var meName = $("#meName").val()
		 var meExp = $("#meExp").val()
		 var menuPrice = $("#menuPrice").val()
		 var menuPriceEx = $("#menuPriceEx").val()
		 
		 if(meExp == "" || meExp == null){
			 meExp = "&nbsp;";
		 }
		 
		 if(meName == "" || meName == null){
			 alert("메뉴명을 입력해 주세요");
			 return false;
		 }

		 if(menuPrice == "" || menuPrice == null){
			 alert("가격을 입력해 주세요");
			 return false;
		 }
		 
		 //asdasd
		 var output =  '<div id="menu-detail" class="menuGrpNo'+grpNo+'">';
			 output += '<div id="menuInfo" style="font-size: 28px;">';
			 output +=  meName;
			 output +=  '</div>';
			 output += '<div id="menuInfo" style="color: #b5b2b2ad; line-height: 1; max-inline-size: normal;">';
			 output +=  meExp;
			 output += '</div>';
			 output += '<div id="menuInfo" style="font-weight: 500;">';
			 output +=  menuPrice;
			 output +=  "원";
			 output += '</div>';
			 output += '<img src="/resources/img/search.png" id="menuimg" alt="" />'
			 output += "</div>";
			 
		 $('.apndMenuGrpNo'+grpNo+'').after(output);
		 $('.searchModal').hide();
	})

	$(document).on('click','#menuDetailbutton',function(){
		$('#meName').val('')
		$('#meExp').val('')
		$('#menuPrice').val('')
		$('#menuPriceEx').val('')
	    getParentID = $(this).parent().attr('class'); 
		$("#modalMenu").show();
	});
	
	$(document).on('click','#dropMenu',function(){
		
		var str = $(this).parent().attr('class').slice(-1);
		$( ".menuGrpNo"+str+"" ).toggle();
		
		if($(".spnMenu"+str+"").text() =="▲"){
			$( ".spnMenu"+str+"" ).text('▼');
			return false;
		}
		
		if($(".spnMenu"+str+"").text() =="▼"){
			$( ".spnMenu"+str+"" ).text('▲');
			return false;
		}
	});	
	
})
	
function closeModalnologic() {
	$('.searchModal').hide();
};
	
</script>
</head>
<body>
	<div id="header">
        <%@ include file="../include/header.jsp" %>
	</div>
	
	<div id="info-section">
	<div id ="info">
		<div>
		  <strong style="margin: 2%;">test 전포1</strong>
		</div>
		<hr>
		<div style="display: flex;">
			<input class="browse-input" type="text" value="asd">
				<div style="margin-left: 1%; line-height: 1.9em;">
					<span style="color: #999; font-size: 23px;">☆☆☆☆☆</span>
					<br>
					<span style="color: #999;">최소주문금액 :</span>
					<input type="text" value="15,000원">
					<br>
					<span style="color: #999;">결제 :</span>
					
					<input type="checkbox" id="ddlRadio1" name="ddlRadio1" value="">신용카드
					<input type="checkbox" id="ddlRadio2" name="ddlRadio2" value="">현금 
					<input type="checkbox" id="ddlRadio3" name="ddlRadio3" value="">요기서결제 
					
					<br>
					<span style="color: #999;">배달시간 :</span>
					<input type="text" style="width: 7%; text-align: center;" value="40"> ~ <input type="text" style="width: 7%; text-align: center;" value="50"><span style="font-size: 15px;">분</span>
				</div>	
		</div>
		
		
		<hr>
		<div>
		asd
		<br>
		asd
		</div>
	</div>
			<div id ="info">
			  <div class="container">

				<ul class="tabs">
					<li class="tab-link current" data-tab="tab-1" >메뉴등록</li>
					<li class="tab-link" data-tab="tab-2" >클린리뷰</li>
					<li class="tab-link" data-tab="tab-3" >정보</li>
				</ul>
			
				<div id="tab-1" class="tab-content current">
					<div id="menuGropuInsert"></div>
					<div id="tab-menu">
						메뉴그룹추가 <input type="button" id="menuGroupbutton" name="menuGroupbutton" value="&#43;" style="font-size: 18px;">
					</div>
<!-- 					<div id="menu-detail"> -->
<!-- 						메뉴추가 &nbsp;<input type="button" id="menuDetailbutton" name="menuDetailbutton" value="&#43;" style="font-size: 18px;"> -->
<!-- 					</div> -->
					
					<div id="menuInsert"></div>
<!-- 					<div id="menuGropuInsert"></div> -->
					
<!-- 					<div id="tab-menu"> -->
<!-- 						인기상품2 -->
<!-- 					</div> -->
<!-- 					<div id="tab-menu"> -->
<!-- 						인기상품3 -->
<!-- 					</div>						 -->

				</div>
				
				<div id="tab-2" class="tab-content">
<%-- 				${maxGrpMenuNo} --%>asd
<P>  The time on the server is ${maxGrpMenuNo}. </P>
				<input type="hidden" id="maxGrpMenuNo" name="maxGrpMenuNo" value="${maxGrpMenuNo}" readonly>
				</div>
				<div id="tab-3" class="tab-content">
					<div id="customInfo">
						사장님알림
						<hr style="border: 1px solid;">
					</div>
					<div style="margin-left: 3%;">
						<img src="/resources/img/search.png" alt="" style=""/>
						<br>
						<textarea rows="10" cols="109" style="width: 97%;"></textarea>
					</div>
					<div id="customInfo">
						 업체정보
						<hr style="border: 1px solid;">
						<span id="customInfo-span">영업시간</span> <span id="customInfo-text">16:00 - 03:50</span>
						<br>
						<span id="customInfo-span">전화번호</span> <span id="customInfo-text">01051552266(요기요 제공 번호)</span>
						<br>
						<span id="customInfo-span">주소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> <span id="customInfo-text">서울 동대문구 장안동 117동</span>
					</div>
					<div id="customInfo">
						 결제정보
						<hr style="border: 1px solid;">
						<span id="customInfo-span">최소주문금액</span>
						<br>
						<span id="customInfo-span">결제수단&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
					</div>
					<div id="customInfo">
						 사업자정보
						<hr style="border: 1px solid;">
						<span id="customInfo-span">상호명&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
						<br>
						<span id="customInfo-span">사업자등록번호</span>
					</div>
					<div id="customInfo">
						 원산지정보
						<hr style="border: 1px solid;">
						<div>
							<textarea rows="10" cols="109" style="width: 99%;"></textarea>
						</div>
					</div>										
				</div>
			
			</div>
			</div>
			
	</div>		
	
<div id="modalGrop" class="searchModal">
<div class="search-modal-content">
<span id='close' onclick="closeModalnologic();">&times;</span>
<!-- <h4>메뉴그룹 추가.</h4> -->
<span>메뉴그룹 추가.</span>
<hr>
	<h3>메뉴그룹명 :</h3>
	<input type="text" id="megrpName" name="megrpName" placeholder="그룹명을 작성하세요" style="resize: vertical; width: 98%; height: 30px;" >	
	<h3>설명 :</h3>	
        <textarea rows="3"  style="resize: vertical; width: 99%;"  name="megrpExp" id="megrpExp"  placeholder="설명을 작성하세요"></textarea>
<hr>
<div style="cursor:pointer;background-color:#f38593;;text-align: center;padding-bottom: 10px;padding-top: 10px;" id="instMegrp"><span style="color: white;">등록</span>
<span class="pop_bt modalCloseBtn" style="font-size: 13pt;"></span>
</div>
</div>
</div>

<div id="modalMenu" class="searchModal">
<div class="search-modal-content">
<span id='close' onclick="closeModalnologic();">&times;</span>
<!-- <h4>메뉴그룹 추가.</h4> -->
<span>메뉴추가.</span>
<hr>
	<h3>메뉴명 :</h3>
	<input type="text" id="meName" name="meName" placeholder="그룹명을 작성하세요" style="resize: vertical; width: 98%; height: 30px;" >	
	<h3>메뉴설명 :</h3>	
        <textarea rows="3"  style="resize: vertical; width: 99%;"  name="meExp" id="meExp"  placeholder="설명을 작성하세요"></textarea>
<hr>
	<h3>가격 :</h3>
	<input style="resize: vertical; width: 10%; height: 30px;" type="text" id="menuPriceEx" name="menuPriceEx" placeholder="에) 1~2 인분">  &nbsp; 
	<input style="resize: vertical; width: 10%; height: 30px;" type="text" id="menuPrice" name="menuPrice" placeholder="15000">
<hr>	
	<h3>메뉴 이미지 :</h3>
	
	<div style="">
<!-- 	    <img alt="" src="/resources/img/mo-01.png" style="width: 35%; height: 85%; border: 3px solid black;"> -->
		<input class="browse-input" type="file">	
	</div>
<hr>	
	
	<div style="cursor:pointer;background-color:#f38593;;text-align: center;padding-bottom: 10px;padding-top: 10px;" id="instMenu"><span style="color: white;">등록</span>


	
<span class="pop_bt modalCloseBtn" style="font-size: 13pt;"></span>
</div>
</div>
</div>


	<div id="footer">
		<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>