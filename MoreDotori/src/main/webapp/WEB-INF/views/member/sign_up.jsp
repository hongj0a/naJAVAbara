<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<title>회원가입 - 모아도토리</title>
<meta charset="utf-8">

<meta name="_csrf" content="${_csrf.token}"/>
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}"/>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/favicon2.ico" type="image/x-icon" />
<link rel="icon" href="${pageContext.request.contextPath}/images/favicon2.ico" type="image/x-icon">
<!-- fontawesome icon -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/fontawesome/css/fontawesome-all.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/member.css">
</head>

<body>
	<c:choose>
		<c:when test="${param.type eq 'expert'}">
			<c:set var="title" value="전문가 회원 가입" />
			<c:set var="imgRequired" value="required" />
			<c:set var="dtStyle" value="display: block;" />
			<c:set var="mCode" value="MB002" />
		</c:when>
		<c:otherwise>
			<c:set var="title" value="일반 회원 가입" />
			<c:set var="imgRequired" value="" />
			<c:set var="dtStyle" value="display: none;" />
			<c:set var="mCode" value="MB001" />
		</c:otherwise>
	</c:choose>
	<div class="auth-wrapper">
		<div class="card sign-up cw-560">
			<div class="row">
				<div class="card-header col-sm-10">
					<h5><c:out value="${title}" /></h5>
				</div>
				<div class="card-header col" style="padding: 10px;">
					<a class="text-center" href="/">
						<img width="50px" src="${pageContext.request.contextPath}/images/slider/icon.png">
					</a>
				</div>
			</div>
			<div class="card-block">
				<form id="sign-up" name="sign-up" action="/join.do?${_csrf.parameterName}=${_csrf.token}"  method="post" enctype="multipart/form-data">
					<input type="hidden" name="c_member" value="${mCode}">
					<div class="row">
						<div class="col-sm-4">
							<div class="text-center form-group">
								<label for="choose-image">
									<img class="img-fluid rounded-circle" id="profile-image" src="${pageContext.request.contextPath}/images/user/avatar-3.jpg" alt="dashboard-user">
								</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="chooseImg" id="choose-image" accept="image/*" ${imgRequired}>
									<label class="custom-file-label" for="inputGroupFile01"></label>
								</div>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="input-group form-group mb-4">
								<label for="inputId" class="sr-only">아이디</label>
								<input type="email" class="form-control" id="inputId" name="m_id" placeholder="아이디(이메일 형식)" required>
								<div class="input-group-append">
									<input type="button" class="btn btn-primary" name="id-dupl-check" onclick="duplCheckId()" value="중복확인">
								</div>
							</div>
							<div class="input-group form-group mb-4">
								<label for="inputName" class="sr-only">이름</label>
								<input type="text" class="form-control" id="inputName" name="m_name" placeholder="이름" required>
							</div>
							<div class="input-group form-group mb-4">
								<label for="inputNick" class="sr-only">닉네임</label>
								<input type="text" class="form-control" id="inputNick" name="m_nickname" placeholder="닉네임" required>
								<div class="input-group-append">
									<input type="button" class="btn btn-primary" name="nick-dupl-check" onclick="duplCheckNick()" value="중복확인">
								</div>
							</div>
						</div>
					</div>
					<div>
						<div class="form-group mb-4">
							<input type="password" class="form-control" id="inputPwd" name="m_password" placeholder="비밀번호" required>
						</div>
					</div>
					<div>
						<div class="form-group mb-4">
							<input type="password" class="form-control" id="inputPwdConfirm" name="password-confirm" placeholder="비밀번호 확인" required>
						</div>
					</div>
					<div>
						<div class="form-group mb-4">
							<input type="text" class="form-control" id="inputPhone" name="m_phone" placeholder="연락처 (01012345678)" required>
						</div>
					</div>
					<div class="row justify-content-center">
						<div class="form-group col-sm-4 mb-4">
							<label for="male">성별&nbsp;&nbsp;</label>
							<div class="col col-form-label" id="inputGender">
   								<div class="d-inline">
		                            <div class="radio radio-primary d-inline gender">
			                            <input type="radio" name="m_gender" id="genderM" value="M" required="required">
			                            <label for="genderM" class="cr">남</label>
			                        </div>
		                        </div>
			                    <div class="d-inline">
			 	                   <div class="radio radio-primary d-inline gender">
			    	                   <input type="radio" name="m_gender" id="genderF" value="F">
			                           <label for="genderF" class="cr">여</label>
			                       </div>
			                    </div>
							</div>
						</div>
						<div class="form-group col-sm-8">
							<label for="inputBirth">생년월일</label>
							<div class="input-group" id="inputBirth">
								<select class="birth form-control" name="birth" id="birth-year" required>
									<option value="">년</option>
								</select>
								<select class="birth form-control" name="birth" id="birth-month" required>
									<option value="">월</option>
								</select>
								<select class="birth form-control" name="birth" id="birth-day" required>
									<option value="">일</option>
								</select>
							</div>
						</div>
					</div>
					<div id="expert-details" style="${dtStyle}">
						<div class="form-group input-group mb-4">
							<input type="text" class="form-control col-sm-4" id="inputJob" name="e_job" placeholder="직업" ${imgRequired}>
							<input type="text" class="form-control col-sm-4" id="inputPosition" name="e_position" placeholder="직급" ${imgRequired}>
							<input type="text" class="form-control col-sm-4" id="inputCareer" name="career" placeholder="경력(년차)" ${imgRequired}>
						</div>
						<div class="form-group">
							<div class="input-group mb-1">
								<label for="inputAddr" class="sr-only">우편번호</label>
								<input type="text" class="form-control address" id="inputZipCode" name="zipCode" placeholder="우편번호" readonly>
								<div class="input-group-append">
									<input type="button" class="btn btn-primary" name="find-address" onclick="findPostcode()" value="주소찾기">
								</div>
							</div>
							<div class="mb-1">
								<input type="text" class="form-control address" id="inputAddr" name="address" placeholder="주소" readonly>
							</div>
							<div>
								<input type="text" class="form-control" id="inputAddrDetail" name="e_detailaddr" placeholder="상세주소" ${imgRequired}>
							</div>
						</div>
						<div class="form-group mb-4">
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="license">
										<option value="">자격증1</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense1" name="licenseNum" placeholder="자격증 번호" ${imgRequired}>
							</div>
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="license">
										<option value="">자격증2</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense2"
									name="licenseNum" placeholder="자격증 번호">
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<select class="form-control" name="license">
										<option value="">자격증3</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense3" name="licenseNum" placeholder="자격증 번호">
							</div>
						</div>
						<div class="form-group mb-4 inputSNS">
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="sns">
										<option value="">SNS</option>
									</select>
								</div>
								<input type="url" class="form-control" name="snsUrl" placeholder="SNS주소 ">
								<div class="input-group-append">
									<button class="btn btn-primary addSNS" type="button">
										<i class="fas fa-plus"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="form-group mb-4">
							<textarea class="form-control" rows="8" aria-label="With textarea" name="e_introduce" placeholder="자기소개" ${imgRequired}></textarea>
						</div>
					</div>
					<div class="form-group mb-4">
						<textarea class="form-control account-clause" rows="8" aria-label="With textarea" readonly>제 1 조 [목적 등]
  모아도토리 서비스 약관은 회원이 모아토도리가 제공하는 가계부와 자산관리 서비스를 이용함에 있어 회원과 모아도토리의 권리,의무 및 책임사항을 규정함을 목적으로 합니다. 회원이 되고자 하는 자가 모아도토리가 정한 절차를 거쳐서 동의 단추를 누름으로써 본 약관에 의한 계약을 승인합니다. 본 약관에 정하는 이외의 이용자와 모아도토리의 권리.의무 및 책임사항에 관해서는 전기통신사업법 기타 대한민국의 관련 법령과 상관습에 의합니다.
  
제 2 조 [회원의 정의]
  회원이라 함은 모아도토리가 제공하는 가계부와 자산관리 서비스를 이용하고자 이용자 등록(아이디,비밀번호)을 한 개인을 말합니다.
  
제 3 조 [서비스의 제공 및 변경]
  모아도토리는 회원에게 아래와 같은 서비스를 제공합니다.		
 - 모아도토리 내 모든 contents의 자유로운 이용
 - 회원간의 커뮤니케이션 창구제공(글쓰기, 수정, 검색, 삭제 등)
 - 기타 모아도토리가 자체 개발하거나 다른 회사와의 협력계약 등을 통해 회원들에게 제공할 일체의 서비스
  모아도토리는 그 변경될 서비스의 내용 및 제공일자를 제6조 제2항에서 정한 방법으로 이용자에게 통지하고, 제1항에 정한 서비스를 변경하여 제공할 수 있습니다.
  
제 4 조 [서비스의 중단]
  모아도토리는 컴퓨터 등 정보통신설비의 보수점검/교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있고, 새로운 서비스로의 교체 기타 호가계부가 적절하다고 판단하는 사유에 기하여 현재 제공되는 서비스를 완전히 중단할 수 있습니다. 제1항에 의한 서비스 중단의 경우에는 모아도토리는 제7조 제2항에서 정한 방법으로 회원에게 통지합니다. 다만, 모아도토리가 통제할 수 없는 사유로 인한 서비스의 중단(시스템 관리자의 고의, 중과실이 없는 디스크 장애, 시스템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 그러하지 아니합니다.
  
제 5 조 [회원 탈퇴 및 자격 상실 등]
  회원은 모아도토리에 언제든지 자신의 회원등록을 말소해 줄 것("회원" 탈퇴)을 요청할 수 있으며 모아도토리는 위 요청을 받은 즉시 해당 회원의 정보말소를 위한 절차를 밟습니다.
  회원이 다음 각 호의 사유에 해당하는 경우, 모아도토리는 회원의 자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있습니다.
 - 허위 내용을 등록한 경우 
 - 다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
 - 서비스를 이용하여 법령과 본 약관이 금지하거나 공공질서 및 미풍양속에 반하는 행위를 하는 경우
  모아도토리가 회원의 회원자격을 상실시키기로 결정한 경우에는 회원등록을 말소합니다. 이 경우 회원에게 회원등록 말소 전에 이를 이메일주소등으로 통지하고, 소명할 기회를 부여합니다.
  
제 6 조 [회원에 대한 통지]
  모아도토리는 "본 서비스"에 대한 공지사항을 회원이 등록한 이메일주소로 공지할 수 있습니다. 모아도토리가 불특정다수 회원에 대한 통지를 하는 경우 7일이상 "공지사항" 게시판에 공지함으로써 개별 통지에 갈음할 수 있습니다.
  
제 7 조 [이용자의 개인정보보호]
  모아도토리는 "본 서비스"에 등록된 id와 이름,주소,연락처등을 관리합니다. 모아도토리는 관련법령이 정하는 바에 따라서 "회원"의 개인정보를 보호하기 위하여 노력합니다.
  
제 8 조 [모아도토리의 의무]
  모아도토리는 법령과 본 약관이 금지하거나 공공질서 및 미풍양속에 반하는 행위를 하지 않으며 본 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하기 위해서 노력합니다.  모아도토리는 회원이 안전하게 인터넷 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위해 최선을 다합니다. 모아도토리는 회원이 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다. 모아도토리는 회원이 이메일 수신신청을 한 경우에는 광고성 전자우편을 발송할수 있습니다.

제 9 조 [이용해지 및 이용제한]
  회원이 이용계약을 해지(탈퇴)하고자 하는 때에는 서비스의 "회원정보수정 메뉴"에서 해지를 신청할 수 있습니다.

제 10 조 [회원의 게시물]
  모아도토리는 회원이 게시하거나 등록하는 서비스내의 게시물이 다음 각호의 1에 해당한다고 판단되는 경우에는 사전 통지없이 삭제하거나 이동 또는 등록을 거부할 수 있습니다.
 - 다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
 - 공공질서 및 미풍양속에 위반되는 내용인 경우
 - 범죄적 행위에 결부된다고 인정되는 내용인 경우
 - 모아도토리 또는 제3자의 지적재산권 등 기타의 권리를 침해하는 내용인 경우
 - 모아도토리에서 규정한 게시기간을 초과한 경우
 - 음란물 또는 음란사이트를 링크 또는 게재하는 경우 (음란 사이트의 url을 게시하는 경우 포함)
 - 기타 관계법령에 위반된다고 판단되는 경우
  회사는 전항 각호의 사유 외 개별서비스 약관에서 규정하고 있는 게시물 등록제한 사유를 위반하는 경우에는 전항을 준용합니다.

제 11 조 [손해배상 및 면책조항]
  모아도토리는 "본 서비스"의 이용과 관련하여 모아도토리의 고의 또는 중대한 과실 없이 회원에게 발생한 일체의 손해에 관하여 책임을 부담하지 않습니다.

제 12 조 [약관의 개정]
  모아도토리는 약관의 규제 등에 관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다. 모아도토리가 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 공지사항 게시판에 그 적용일자 7일 이전부터 공지합니다. 회원은 변경된 약관에 대해 거부할 권리가 있습니다. 회원은 변경된 약관이 공지된 후 15일 이내에 거부의사를 표명할 수 있습니다. 회원이 거부하는 경우 모아도토리는 당해 회원과의 계약을 해지할 수 있습니다. 만약 회원이 변경된 약관이 공지된 후 15일 이내에 거부의사를 표시하지 않는 경우에는 동의하는 것으로 간주합니다.

제 12 조 [재판관할]
  모아도토리와 회원간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 민사소송법상의 관할을 가지는 대한민국의 법원에 제기합니다.
 - 부 칙 -
  본 약관은 2019.07.11 부터 적용하고, 기존의 이용자에 대해서는 본 약관으로 대체하는 것으로 합니다.
 ■ 수집하는 개인정보 항목
    모아도토리는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있습니다.
  * 수집항목 : 이름, 생년월일, 성별, 로그인ID, 비밀번호, 연락처, 이메일, 직업, 주민등록번호, 접속로그, 접속 IP 정보, 사이트 접속경위, 접속사용환경 등
  * 수집방법 : 홈페이지(회원가입), 문의게시판 및 추가 답변 등
 ■ 개인정보의 수집 및 이용목적
    모아도토리는 개인정보를 다음의 목적을 위해 활용합니다.
  * 서비스 제공에 관한 계약 이행 및 콘텐츠 제공
  * 회원 관리
  * 자산 관리 
  * 상담 신청 및 진행 관련을 위한 수집 등</textarea>
					</div>
					<div class="form-group mb-4">
						<div class="checkbox checkbox-primary d-inline">
							<input type="checkbox" id="inputAgreeClause" name="agree-clause" required>
							<label for="inputAgreeClause" class="cr">위 약관에 동의합니다.</label>
						</div>
					</div>
					<div class="form-group row justify-content-center mt-4">
						<button type="submit" name="sign-up-btn" class="btn btn-primary">회원가입</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Required Js -->
	<script src="${pageContext.request.contextPath}/js/vendor-all.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/sweetalert/js/sweetalert.min.js"></script>
	
	<script src="${pageContext.request.contextPath}/plugins/jquery-validation/js/jquery.validate.min.js"></script>
	<script src="${pageContext.request.contextPath}/plugins/jquery-validation/js/messages_ko.js"></script>
	
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script src="${pageContext.request.contextPath}/js/member/sign-up.js"></script>
</body>

</html>