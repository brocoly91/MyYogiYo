<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/resources/main.css" />
<link rel="stylesheet" type="text/css" href="/resources/yogiyocss.css">
<style type="text/css">
#footer  {
	padding: 73% 0% 0% 0%;
}
#footer ul {
    margin: 1% 21%;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(document).ready(function() { 
	
	$(".w-s").keyup( function(){ 
		$(this).val( $(this).val().replace(/[^0-9]/gi,"") );
	});
	
	
	$("#buttonApply").click(function() {
		 
		
		
		var cn1 = $('#cn1').val();
		var cn2 = $('#cn2').val();
		var cn3 = $('#cn3').val();
		
		var cn = cn1+cn2+cn3;
		
		var owner_name = $('#owner_name').val();
		
		var mtel1 = $('#mtel1').val();
		var mtel2 = $('#mtel2').val();
		var mtel3 = $('#mtel3').val();
		
		var mtel = mtel1+mtel2+mtel3
		
		var restaurant_name = $('#restaurant_name').val();
		
		var tel1 = $('#tel1').val();
		var tel2 = $('#tel2').val();
		var tel3 = $('#tel3').val();
		
		var tel = tel1+tel2+tel3;
		var restaurant_price = $('#restaurant_price').val();
		var restaurant_payment = $('#restaurant_payment').val();
		var restaurant_open_hour = $('#restaurant_open_hour').val();
		var category = $('#category').val();
		var delivery_option = $('#delivery_option').val();
		
		var param = {
			"clientNumber" : cn,
			"clientName" : owner_name,
			"clientTell" : mtel,
			"restaurantName" : restaurant_name,
			"restaurantPrice" : restaurant_price,
			"restaurantPayment" : restaurant_payment,
			"restaurantOpeningHours" : restaurant_open_hour,
			"restaurantCategory" : category,
			"restaurantDeleivery" : delivery_option,
			"restaurantTell" : tel
		};
		
	    $.ajax({
	        url:'${pageContext.request.contextPath}/apply.do',
	        type:"post",
	        data:param,
	        success:function(data){
	        	alert("성공");
	        },
	        error:function(){
	                alert("에러입니다");
	        }
	    });
		
	});
	
});

</script>
</head>
<body>
	<div id="header">
        <%@ include file="../include/header.jsp" %>
	</div>
	<div id="customSection" style="margin: 0px 30%;">
		<div class="own-content j4">

        <div class="tit-area">
        	<a href="menuInfo">test</a>
            <h2>온라인 입점신청</h2>
            <p>운영중인 음식점을 요기요에 신청하세요. 온라인 입점신청 중 어려움이 있으시면 고객센터(1661-5270)로 연락주세요</p>
        </div>

        <form method="POST" name="join-form" enctype="multipart/form-data" novalidate="novalidate">
        <div class="join-form">
            <div class="tbl-caption frst">사업자 정보 <span class="stxt"><em>*</em>필수 입력 정보</span></div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tbody><tr>
                    <th>사업자 번호 <em>*</em></th>
                    <td>
                        <input type="hidden" name="company_number" id="company_number">
                        <input type="text" class="w-s" name="cn1" id="cn1" numberonly="true" maxlength="3"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="cn2" id="cn2" numberonly="true" maxlength="2"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="cn3" id="cn3" numberonly="true" maxlength="5">
                        <button type="button" name="check_duplicate_button" class="btn-sm" data-confirm="0">조회</button>
                        <span class="alert" name="cn-message" style="display: none;"></span>
                    </td>
                </tr>
                <tr>
                    <th>사업자등록증 사본등록 <em>*</em></th>
                    <td class="add_file">
                        <div class="filebox">
                          <input class="upload-name" value="파일선택" disabled="disabled">

                          <label for="filename">찾아보기</label>
                          <input type="file" id="filename" name="business_license_file" class="upload-hidden">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>영업신고증 사본등록 <em>*</em></th>
                    <td class="add_file">
                        <div class="filebox">
                            <input class="upload-name" value="파일선택" disabled="disabled">

                            <label for="sales_declaration_file">찾아보기</label>
                            <input type="file" id="sales_declaration_file" name="sales_declaration_file" class="upload-hidden">
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>사업주명 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" id="owner_name" name="owner_name" maxlength="10">
                    </td>
                </tr>
                <tr>
                    <th>사업자 휴대폰 번호 <em>*</em></th>
                    <td>
                        <input type="hidden" name="mobile_phone_number">
                        <div class="select-style">
                            <select name="mtel1" id="mtel1" class="w-s">
                                <option value="010">010</option>
                                <option value="011">011</option>
                                <option value="016">016</option>
                                <option value="017">017</option>
                                <option value="018">018</option>
                                <option value="019">019</option>
                                <option value="0130">0130</option>
                             </select>
                         </div>
                          <span class="bar">-</span>
                        <input type="text" class="w-s" id="mtel2" name="mtel2" numberonly="true" maxlength="4"> <span class="bar">-</span>
                        <input type="text" class="w-s" id="mtel3" name="mtel3" numberonly="true" maxlength="4">
                        <button type="button" class="btn-sm" name="send_veri_code_button">인증번호 전송</button>
                        <p class="info-txt">인증번호를 받지 못했다면 [인증번호 재전송] 버튼을 클릭해 주세요.</p>
                        <span class="alert" name="vericode_message" style="display: none;"></span>
                    </td>
                </tr>
                <tr name="confirm_vericode_row">
                    <th>인증번호 입력 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" name="veri_code" numberonly="true">
                        <button type="button" class="btn-sm" name="comfirm_veri_code_button" data-confirm="0">확인</button>
                        <span class="alert" name="confirm_vericode_message" style="display: none;"></span>
                    </td>
                </tr>
            </tbody></table>

            <div class="tbl-caption">음식점 정보</div>
            <table class="table-style1">
                <colgroup>
                    <col style="width: 150px">
                    <col>
                </colgroup>
                <tbody>
                <tr>
                    <th>음식점 이름 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l" maxlength="20" name="restaurant_name" id="restaurant_name">
                    </td>
                </tr>
                <tr>
                    <th>음식점 전화번호</th>
                    <td>
                        <input type="hidden" name="phone_number" id="phone_number">
                        <div class="select-style">
                        <select name="tel1" id="tel1" class="w-s">
                            <option value="02">02</option>
                            <option value="031">031</option>
                            <option value="032">032</option>
                            <option value="033">033</option>
                            <option value="041">041</option>
                            <option value="042">042</option>
                            <option value="043">043</option>
                            <option value="044">044</option>
                            <option value="051">051</option>
                            <option value="052">052</option>
                            <option value="053">053</option>
                            <option value="054">054</option>
                            <option value="055">055</option>
                            <option value="061">061</option>
                            <option value="062">062</option>
                            <option value="063">063</option>
                            <option value="064">064</option>
                            <option value="010">010</option>
                            <option value="011">011</option>
                            <option value="016">016</option>
                            <option value="017">017</option>
                            <option value="018">018</option>
                            <option value="019">019</option>
                            <option value="0130">0130</option>
                            <option value="070">070</option>
                            <option value="080">080</option>
                            <option value="0507">0507</option>
                            <option value="0506">0506</option>
                            <option value="0505">0505</option>
                            <option value="0504">0504</option>
                            <option value="0503">0503</option>
                            <option value="0502">0502</option>
                            <option value="0303">0303</option>
                         </select>
                         </div> <span class="bar">-</span>
                        <input type="text" class="w-s" name="tel2" id="tel2" numberonly="true"> <span class="bar">-</span>
                        <input type="text" class="w-s" name="tel3" id="tel3" numberonly="true">
                    </td>
                </tr>
                <tr>
                    <th>최소주문금액 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l"  name="restaurant_price" id="restaurant_price">
                    </td>
                </tr>
                <tr>
                    <th>결제수단 <em>*</em></th>
                    <td>
<!--                         <input type="text" class="w-l"  name="restaurant_payment" id="restaurant_payment"> -->
					<input type="checkbox" id="ddlRadio1" name="ddlRadio1" value="">신용카드
					<input type="checkbox" id="ddlRadio2" name="ddlRadio2" value="">현금 
					<input type="checkbox" id="ddlRadio3" name="ddlRadio3" value="">요기서결제 
                    </td>
                </tr>
                <tr>
                    <th>영업시간 <em>*</em></th>
                    <td>
                        <input type="text" class="w-l"  name="restaurant_open_hour" id="restaurant_open_hour">
                    </td>
                </tr>
                <tr>
                    <th>음식점 주소 <em>*</em></th>
                    <td name="selected_address">
                        <input type="hidden" name="zipcode">
                        <input type="hidden" name="street">
                        <input type="text" class="w-xl" placeholder="동,면,읍" name="address_display" readonly="readonly" data-toggle="modal" data-target="#myModal">
                        <button type="button" class="btn-sm" data-toggle="modal" data-target="#myModal">주소검색</button>
                        <p class="sb-addr"><input type="text" class="w-xl" placeholder="상세주소" name="street_number"></p>
                    </td>
                </tr>
                <tr>
                    <th>업종 카테고리 <em>*</em></th>
                    <td>
                        <div class="select-style select-style1">
                        <select name="category" id="category">
                            <option value="">선택해주세요</option>
                            
                            <option value="13">분식</option>
                            
                            <option value="14">중식</option>
                            
                            <option value="4">치킨</option>
                            
                            <option value="2">한식</option>
                            
                            <option value="17">족발보쌈</option>
                            
                            <option value="1">피자양식</option>
                            
                            <option value="18">일식돈까스</option>
                            
                            <option value="368">카페디저트</option>
                            
                            <option value="134">프랜차이즈</option>
                            
                        </select>
                        </div>
                        <p class="info-txt">야식카테고리는 회사 정책상 영업시간에 따라 노출 되는 카테고리로 단독 설정이 불가합니다.</p>
                    </td>
                </tr>
                <tr>
                    <th>배달 가능 여부 <em>*</em></th>
                    <td class="rs">
                        <label class="radio-inline">
                          <input type="radio" name="delivery_option" id="delivery_option" value="배달만 가능" checked="checked"> 배달만 가능
                        </label>
                        <label class="radio-inline">
                          <input type="radio" name="delivery_option" id="delivery_option" value="모두 가능"> 배달+테이크아웃 가능
                        </label>
                    </td>
                </tr>
                <tr>
                    <th>전단지 등록</th>
                    <td class="add_file">
                        <div class="filebox">
                          <input class="upload-name" value="파일선택" disabled="disabled">

                          <label for="filename1">찾아보기</label>
                          <input type="file" id="filename1" name="flyer_file" class="upload-hidden">
                        </div>
                    </td>
                </tr>
            </tbody></table>

            <div class="terms">
                <strong>개인정보 수집 및 이용 동의</strong>

                <p class="p1">"회사"는 다음과 같이 "사장님"의 개인정보를 수집합니다. 처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 활용되지 않으며, 수집·이용목적이 변경되는 경우에는 「개인정보보호법」에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.</p>

                <p>요기요 온라인 입점신청 시 수집하는 개인정보</p>
                <table class="section">
                    <tbody><tr>
                        <th width="18%">개인정보 수집 목적</th>
                        <th>수집하는 개인정보 항목</th>
                        <th width="20%">보유 및 이용기간</th>
                        <th width="12%">수집방법</th>
                    </tr>
                    <tr>
                        <td>요기요 입점신청</td>
                        <td>[필수] 사업자번호, 사업자등록증, 영업신고등록증, 사업주명, 사업자 휴대폰번호, 인증번호, 음식점 이름, 음식점 주소, 업종 카테고리, 배달가능 여부<br>
                        [선택] 음식점전화번호, 전단지</td>
                        <td>목적달성 후 즉시 파기</td>
                        <td>온라인</td>
                    </tr>
                </tbody></table>
                <p>요기요 온라인 입점신청을 위해 동의받는 개인정보 수집 및 이용동의를 제외한 나머지 개인정보처리 관련 사항은 요기요 사장님 사이트의 개인정보처리방침과 동일하게 적용됩니다.</p>
            </div>
            <p class="chk-item">
                <label>
                    <input type="checkbox" name="terms"> <strong>개인정보 수집 및 이용에 동의합니다.(필수)</strong>
                </label>
            </p>
            <div class="btn-set1">
                <button type="button" id="buttonApply" class="btn-type1" name="save_button">입점 신청 완료</button>
                <a href="/owner/join/process/" class="btn-right"><span>입점절차 살펴보기</span> ▸</a>
            </div>
        </div>
        </form>
    </div>
	</div>		
	<div id="footer" style="padding: 93% 0% 0% 0%;margin-left: 2px;">
		<%@ include file="../include/footer.jsp" %>
	</div>
</body>
</html>