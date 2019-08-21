<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>회원가입 - 모아도토리</title>
<meta charset="utf-8">

<!-- fontawesome icon -->
<link rel="stylesheet"
	href="fonts/fontawesome/css/fontawesome-all.min.css">
<!-- vendor css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/member/member.css">
</head>

<body>
	<c:choose>
		<c:when test="${param.type eq 'expert'}">
			<c:set var="title" value="전문가 회원 가입" />
			<c:set var="imgRequired" value="required" />
			<c:set var="dtStyle" value="display: block;" />
		</c:when>
		<c:otherwise>
			<c:set var="title" value="일반 회원 가입" />
			<c:set var="imgRequired" value="" />
			<c:set var="dtStyle" value="display: none;" />
		</c:otherwise>
	</c:choose>
	<div class="auth-wrapper">
		<div class="card cw-560">
			<div class="card-header">
				<h5><c:out value="${title}" /></h5>
			</div>
			<div class="card-block">
				<form id="sign-up" name="sign-up" action="/insert.do"  method="post" enctype="multipart/form-data">
					<div class="row">
						<div class="col-sm-4">
							<div class="text-center form-group">
								<label for="choose-image">
									<img class="img-fluid rounded-circle" id="profile-image" src="images/user/avatar-3.jpg" alt="dashboard-user">
								</label>
								<div class="custom-file">
									<input type="file" class="custom-file-input" name="choose-image" id="choose-image" accept="image/*" ${imgRequired}>
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
						<div class="form-group col-sm-3 mb-4">
							<label for="male">성별&nbsp;&nbsp;</label>
							<div class="btn-group btn-group-toggle" data-toggle="buttons" id="inputGender">
								<label class="btn btn-primary">
								<input type="radio" name="m_gender" value="M" required>남</label>
								<label class="btn btn-primary">
								<input type="radio" name="m_gender" value="F">여</label>
							</div>
						</div>
						<div class="form-group col-sm-9">
							<label for="inputBirth">생년월일</label>
							<div class="input-group" id="inputBirth">
								<select class="form-control" name="birth-year" id="birth-year" required>
									<option value="">년</option>
								</select> <select class="form-control" name="birth-month" id="birth-month" required>
									<option value="">월</option>
								</select> <select class="form-control" name="birth-day" id="birth-day" required>
									<option value="">일</option>
								</select>
							</div>
						</div>
					</div>
					<div id="expert-details" style="${dtStyle}">
						<div class="form-group input-group mb-4">
							<input type="text" class="form-control col-sm-4" id="inputJob" name="job" placeholder="직업" required>
							<input type="text" class="form-control col-sm-4" id="inputPosition" name="position" placeholder="직급" required>
							<input type="text" class="form-control col-sm-4" id="inputCareer" name="career" placeholder="경력(년차)" required>
						</div>
						<div class="form-group">
							<div class="input-group mb-1">
								<label for="inputAddr" class="sr-only">우편번호</label>
								<input type="text" class="form-control address" id="inputZipCode" name="zip-code" placeholder="우편번호" readonly>
								<div class="input-group-append">
									<input type="button" class="btn btn-primary" name="find-address" onclick="findPostcode()" value="주소찾기">
								</div>
							</div>
							<div class="mb-1">
								<input type="text" class="form-control address" id="inputAddr" name="address" placeholder="주소" readonly>
							</div>
							<div>
								<input type="text" class="form-control" id="inputAddrDetail" name="addr-details" placeholder="상세주소" required>
							</div>
						</div>
						<div class="form-group mb-4">
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="license1">
										<option value="">자격증1</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense1" name="license-num1" placeholder="자격증 번호" required>
							</div>
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="license2">
										<option value="">자격증2</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense2"
									name="license-num2" placeholder="자격증 번호">
							</div>
							<div class="input-group">
								<div class="input-group-prepend">
									<select class="form-control" name="license3">
										<option value="">자격증3</option>
									</select>
								</div>
								<input type="text" class="form-control" id="inputLicense3" name="license-num3" placeholder="자격증 번호">
							</div>
						</div>
						<div class="form-group mb-4 inputSNS">
							<div class="input-group mb-1">
								<div class="input-group-prepend">
									<select class="form-control" name="sns-type1">
										<option value="">SNS</option>
									</select>
								</div>
								<input type="text" class="form-control" name="sns1" placeholder="SNS주소 (ex. https://www.facebook.com/000)">
								<div class="input-group-append">
									<button class="btn btn-primary addSNS" type="button">
										<i class="fas fa-plus"></i>
									</button>
								</div>
							</div>
						</div>
						<div class="form-group mb-4">
							<textarea class="form-control" rows="8" aria-label="With textarea" name="introduction" placeholder="자기소개" required></textarea>
						</div>
					</div>
					<div class="form-group mb-4">
						<textarea class="form-control account-clause" rows="8" aria-label="With textarea" readonly>제 1 장 환영합니다!

제 1 조 (목적)

주식회사 카카오(이하 ‘회사’)가 제공하는 서비스를 이용해 주셔서 감사합니다. 회사는 여러분이 다양한 인터넷과 모바일 서비스를 좀 더 편리하게 이용할 수 있도록 회사 또는 관계사의 개별 서비스에 모두 접속 가능한 통합로그인계정 체계를 만들고 그에 적용되는 '카카오계정 약관(이하 '본 약관')을 마련하였습니다. 본 약관은 여러분이 카카오계정 서비스를 이용하는 데 필요한 권리, 의무 및 책임사항, 이용조건 및 절차 등 기본적인 사항을 규정하고 있으므로 조금만 시간을 내서 주의 깊게 읽어주시기 바랍니다.

제 2 조 (약관의 효력 및 변경)

① 본 약관의 내용은 카카오계정 웹사이트(https://accounts.kakao.com/weblogin/account) 또는 개별 서비스의 화면에 게시하거나 기타의 방법으로 공지하고, 본 약관에 동의한 여러분 모두에게 그 효력이 발생합니다.

② 회사는 필요한 경우 관련법령을 위배하지 않는 범위 내에서 본 약관을 변경할 수 있습니다. 본 약관이 변경되는 경우 회사는 변경사항을 시행일자 15일 전부터 여러분에게 서비스 공지사항에서 공지 또는 통지하는 것을 원칙으로 하며, 피치 못하게 여러분에게 불리한 내용으로 변경할 경우에는 그 시행일자 30일 전부터 카카오계정에 등록된 이메일 주소로 이메일(이메일주소가 없는 경우 서비스 내 전자쪽지 발송, 서비스 내 알림 메시지를 띄우는 등의 별도의 전자적 수단) 발송 또는 여러분이 등록한 휴대폰번호로 카카오톡 메시지 또는 문자메시지 발송하는 방법 등으로 개별적으로 알려 드리겠습니다.

③ 회사가 전항에 따라 공지 또는 통지를 하면서 공지 또는 통지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 여러분의 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 여러분이 개정약관에 동의하지 않을 경우 여러분은 이용계약을 해지할 수 있습니다.

제 3 조 (약관 외 준칙)

본 약관에 규정되지 않은 사항에 대해서는 관련법령 또는 회사가 정한 개별 서비스의 이용약관, 운영정책 및 규칙 등(이하 ‘세부지침’)의 규정에 따릅니다.

제 4 조 (용어의 정의)

① 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 카카오계정: 회사 또는 관계사가 제공하는 개별 서비스를 하나의 로그인계정과 비밀번호로 회원 인증, 회원정보 변경, 회원 가입 및 탈퇴 등을 관리할 수 있도록 회사가 정한 로그인계정 정책을 말합니다.
2. 회원: 카카오계정이 적용된 개별 서비스 또는 카카오계정 웹사이트에서 본 약관에 동의하고, 카카오계정을 이용하는 자를 말합니다.
3. 관계사: 회사와 제휴 관계를 맺고 카카오계정을 공동 제공하기로 합의한 법인을 말합니다. 개별 관계사는 카카오 기업사이트에서 확인할 수 있고 추후 추가/변동될 수 있으며 관계사가 추가/변동될 때에는 카카오 기업사이트에 변경 사항을 게시합니다.
4. 개별 서비스: 카카오계정을 이용하여 접속 가능한 회사 또는 관계사가 제공하는 서비스를 말합니다. 개별 서비스는 추후 추가/변동될 수 있으며 서비스가 추가/변동될 때에는 카카오 기업사이트에 변경 사항을 게시합니다.
5. 카카오계정 웹사이트: 회원이 온라인을 통해 카카오계정 정보를 조회 및 수정할 수 있는 인터넷 사이트를 말합니다.
6. 카카오계정 정보 : 카카오계정을 이용하기 위해 회사가 정한 필수 내지 선택 입력 정보로서 카카오계정 웹사이트 또는 개별 서비스 내 카카오계정 설정 화면을 통해 정보 확인, 변경 처리 등을 관리할 수 있는 회원정보 항목을 말합니다.

제 2 장 카카오계정 이용계약

제 5 조 (계약의 성립)

① 카카오계정 이용 신청은 개별 서비스 또는 카카오계정 웹사이트 회원가입 화면에서 여러분이 카카오계정 정보에 일정 정보를 입력하는 방식으로 이루어집니다.

② 카카오계정 이용계약은 여러분이 본 약관의 내용에 동의한 후 본 조 제1항에서 정한 이용신청을 하면 회사가 입력된 일정 정보를 인증한 후 가입을 승낙함으로써 체결됩니다.

제 6 조 (카카오계정 이용의 제한)

① 제5조에 따른 가입 신청자에게 회사는 원칙적으로 카카오계정의 이용을 승낙합니다. 다만, 회사는 아래 각 호의 경우에는 그 사유가 해소될 때까지 승낙을 유보하거나 승낙하지 않을 수 있습니다. 특히, 여러분이 만 14세 미만인 경우에는 부모님 등 법정대리인의 동의가 있는 경우에만 카카오계정을 생성할 수 있습니다.
1. 회사가 본 약관 또는 세부지침에 의해 여러분의 카카오계정을 삭제하였던 경우
2. 여러분이 다른 사람의 명의나 이메일 주소 등 개인정보를 이용하여 카카오계정을 생성하려 한 경우
3. 카카오계정 생성 시 필요한 정보를 입력하지 않거나 허위의 정보를 입력한 경우
4. 제공 서비스 설비 용량에 현실적인 여유가 없는 경우
5. 서비스 제공을 위한 기술적인 부분에 문제가 있다고 판단되는 경우
6. 기타 회사가 재정적, 기술적으로 필요하다고 인정하는 경우
7. 회사로부터 회원자격정지 조치 등을 받은 회원이 그 조치기간에 이용계약을 임의로 해지하고 재이용을 신청하는 경우
8. 기타 관련법령에 위배되거나 세부지침 등 회사가 정한 기준에 반하는 경우

② 만약, 여러분이 위 조건에 위반하여 카카오계정을 생성한 것으로 판명된 때에는 회사는 즉시 여러분의 카카오계정 이용을 정지시키거나 카카오계정을 삭제하는 등 적절한 제한을 할 수 있습니다.

제 3 장 카카오계정 이용

제 7 조 (카카오계정 제공)

① 회사가 개별 서비스와 연동하여 카카오계정에서 제공하는 서비스(이하 “카카오계정 서비스” 또는 “서비스”) 내용은 아래와 같습니다.
1. 통합로그인 : 카카오계정이 적용된 개별 서비스에서 하나의 카카오계정과 비밀번호로 로그인할 수 있는 통합 회원 인증 서비스를 이용할 수 있습니다.
2. SSO(Single Sign On): 웹브라우저나 특정 모바일 기기에서 카카오계정 1회 로그인으로 여러분이 이용 중인 개별 서비스간 추가 로그인 없이 자동 접속 서비스를 이용할 수 있습니다.
3. 카카오계정 정보 통합 관리 : 개별 서비스 이용을 위해 카카오계정 정보를 통합 관리합니다. 또한, 여러분이 이용하고자 하는 개별 서비스의 유형에 따라 전문기관을 통한 실명확인 및 본인인증을 요청할 수 있고, 이를 카카오계정 정보로 저장합니다.
4. 기타 회사가 제공하는 서비스

② 회사는 더 나은 카카오계정 서비스의 제공을 위하여 여러분에게 서비스의 이용과 관련된 각종 고지, 관리 메시지 및 기타 광고를 비롯한 다양한 정보를 서비스화면 내에 표시하거나 여러분의 이메일로 전송할 수 있습니다. 광고성 정보 전송의 경우에는 사전에 수신에 동의한 경우에만 전송합니다.

제 8 조 (카카오계정 서비스의 변경 및 종료)

① 회사는 카카오계정 서비스를 365일, 24시간 쉬지 않고 제공하기 위하여 최선의 노력을 다합니다. 다만, 아래 각 호의 경우 카카오계정 서비스의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
1. 카카오계정 서비스용 설비의 유지·보수 등을 위한 정기 또는 임시 점검의 경우
2. 정전, 제반 설비의 장애 또는 이용량의 폭주 등으로 정상적인 카카오계정 이용에 지장이 있는 경우
3. 관계사와의 계약 종료, 정부의 명령/규제 등 회사의 제반 사정으로 카카오계정 서비스를 유지할 수 없는 경우
4. 기타 천재지변, 국가비상사태 등 불가항력적 사유가 있는 경우

② 전항에 의한 카카오계정 서비스 중단의 경우에는 미리 제12조에서 정한 방법으로 여러분에게 통지 내지 공지하겠습니다. 다만, 회사로서도 예측할 수 없거나 통제할 수 없는 사유(회사의 과실이 없는 디스크 내지 서버 장애, 시스템 다운 등)로 인해 사전 통지 내지 공지가 불가능한 경우에는 그러하지 아니합니다. 이러한 경우에도 회사가 상황을 파악하는 즉시 최대한 빠른 시일 내에 서비스를 복구하도록 노력하겠습니다.

③ 여러분에게 중대한 영향을 미치는 서비스의 변경 사항이나 종료는 카카오계정에 등록된 이메일 주소로 이메일(이메일주소가 없는 경우 서비스 내 전자쪽지 발송, 서비스 내 알림 메시지를 띄우는 등의 별도의 전자적 수단) 발송 또는 여러분이 등록한 휴대폰번호로 카카오톡 메시지 또는 문자메시지 발송하는 방법 등으로 개별적으로 알려 드리겠습니다.

제 9 조 (카카오계정 관리)

① 카카오계정은 여러분 본인만 이용할 수 있으며, 다른 사람이 여러분의 카카오계정을 이용하도록 허락할 수 없습니다. 그리고 여러분은 다른 사람이 여러분의 카카오계정을 무단으로 사용할 수 없도록 직접 비밀번호를 관리하여야 합니다. 회사는 다른 사람이 여러분의 카카오계정을 무단으로 사용하는 것을 막기 위하여 비밀번호 입력 및 추가적인 본인 확인 절차를 거치도록 할 수 있습니다. 만약 무단 사용이 발견된다면, 고객센터를 통하여 회사에게 알려주시기 바라며, 회사는 무단 사용을 막기 위한 방법을 여러분에게 안내하도록 하겠습니다.

② 여러분은 카카오계정 웹사이트 또는 개별 서비스 내 카카오계정 설정 화면을 통하여 여러분의 카카오계정 정보를 열람하고 수정할 수 있습니다. 다만, 카카오계정 서비스의 제공 및 관리를 위해 필요한 카카오계정, 전화번호, 단말기 식별번호, 기타 본인확인정보 등 일부 정보는 수정이 불가능할 수 있으며, 수정하는 경우에는 추가적인 본인 확인 절차가 필요할 수 있습니다. 여러분이 이용 신청 시 알려주신 내용에 변동이 있을 때, 직접 수정하시거나 이메일, 고객센터를 통하여 회사에 알려 주시기 바랍니다.

③ 여러분이 카카오계정 정보를 적시에 수정하지 않아 발생하는 문제에 대하여 회사는 책임을 부담하지 아니합니다.

제 4 장 계약당사자의 의무

제 10 조 (회원의 의무)

① 여러분이 카카오계정 서비스를 이용할 때 아래 각 호의 행위는 하여서는 안 됩니다.
1. 이용 신청 또는 변경 시 허위 사실을 기재하거나, 다른 회원의 카카오계정 및 비밀번호를 도용, 부정하게 사용하거나, 다른 사람의 명의를 사용하거나 명의자의 허락 없이 문자메시지(SMS) 인증 등을 수행하는 행위
2. 타인의 명예를 손상시키거나 불이익을 주는 행위
3. 게시판 등에 음란물을 게재하거나 음란사이트를 연결(링크)하는 행위
4. 회사 또는 제3자의 저작권 등 기타 권리를 침해하는 행위
5. 공공질서 및 미풍양속에 위반되는 내용의 정보, 문장, 도형, 음성 등을 타인에게 유포하는 행위
6. 카카오계정 서비스와 관련된 설비의 오동작이나 정보 등의 파괴 및 혼란을 유발시키는 컴퓨터 바이러스 감염 자료를 등록 또는 유포하는 행위
7. 카카오계정 서비스의 운영을 고의로 방해하거나 안정적 운영을 방해할 수 있는 정보 및 수신자의 명시적인 수신거부의사에 반하여 광고성 정보 또는 스팸메일(Spam Mail)을 전송하는 행위
8. 회사의 동의 없이 서비스 또는 이에 포함된 소프트웨어의 일부를 복사, 수정, 배포, 판매, 양도, 대여, 담보제공하거나 타인에게 그 이용을 허락하는 행위와 소프트웨어를 역설계하거나 소스 코드의 추출을 시도하는 등 서비스를 복제, 분해 또는 모방하거나 기타 변형하는 행위
9. 타인으로 가장하는 행위 및 타인과의 관계를 허위로 명시하는 행위
10. 다른 회원의 개인정보를 수집, 저장, 공개하는 행위
11. 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위
12. 윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위
13. 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 계속하여 상대방에게 도달하게 하여 상대방의 일상적 생활을 방해하는 행위
14. 관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 포함)의 전송 또는 게시 행위
15. 회사 또는 관계사의 직원이나 운영자를 가장하거나 사칭하여 또는 타인의 명의를 도용하여 글을 게시하거나 E-mail, 카카오톡 메시지 등을 발송하는 행위
16. 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 E-mail, 카카오톡 메시지 등으로 발송하는 행위
17. 기타 불법한 행위

② 여러분은 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도·증여할 수 없으며, 담보로 제공할 수 없습니다.

③ 혹시라도 여러분이 관련 법령, 회사의 모든 약관 또는 정책을 준수하지 않는다면, 회사는 여러분의 위반행위 등을 조사할 수 있고, 여러분의 서비스 이용을 잠시 또는 계속하여 중단하거나, 재가입에 제한을 둘 수도 있습니다.

④ 본 조에서 정한 사항 및 그 밖에 카카오계정 서비스의 이용에 관한 자세한 사항은 카카오 운영정책 등을 참고해 주시기 바랍니다.

제 11 조 (개인정보의 보호)

여러분의 개인정보의 안전한 처리는 회사에게 있어 가장 중요한 일 중 하나입니다. 여러분의 개인정보는 서비스의 원활한 제공을 위하여 여러분이 동의한 목적과 범위 내에서만 이용됩니다. 법령에 의하거나 여러분이 별도로 동의하지 아니하는 한 회사가 여러분의 개인정보를 제3자에게 제공하는 일은 결코 없으므로, 안심하셔도 좋습니다. 회사가 여러분의 개인정보를 안전하게 처리하기 위하여 기울이는 노력이나 기타 자세한 사항은 카카오 개인정보처리방침을 참고하여 주십시오.

제 12 조 (회원에 대한 통지 및 공지)

회사는 여러분과의 의견 교환을 소중하게 생각합니다. 여러분은 언제든지 고객센터에 방문하여 의견을 개진할 수 있습니다. 서비스 이용자 전체에 대한 공지는 칠(7)일 이상 서비스 공지사항란에 게시함으로써 효력이 발생합니다. 여러분에게 중대한 영향을 미치는 사항의 경우에는 카카오계정에 등록된 이메일 주소로 이메일(이메일주소가 없는 경우 서비스 내 전자쪽지 발송, 서비스 내 알림 메시지를 띄우는 등의 별도의 전자적 수단) 발송 또는 여러분이 등록한 휴대폰번호로 카카오톡 메시지 또는 문자메시지 발송하는 방법 등으로 개별적으로 알려 드리겠습니다.

제 5 장 이용계약 해지 등

제 13 조 (이용계약 해지)

① 여러분이 카카오계정 이용을 더 이상 원치 않는 때에는 언제든지 서비스 내 제공되는 메뉴를 이용하여 이용계약의 해지 신청을 할 수 있으며, 회사는 법령이 정하는 바에 따라 신속히 처리하겠습니다.

② 회사는 법령에서 정하는 기간 동안 여러분이 카카오계정 서비스를 이용하기 위해 카카오계정 로그인 혹은 접속한 기록이 없는 경우 여러분이 등록한 이메일주소, 휴대폰번호로 이메일, 문자메시지 또는 카카오톡 메시지를 보내는 등 기타 유효한 수단으로 통지 후 여러분의 카카오계정 정보를 파기하거나 분리 보관할 수 있으며, 이로 인해 카카오계정 서비스 이용을 위한 필수적인 정보가 부족할 경우 이용계약이 해지될 수도 있습니다. 이와 관련된 보다 자세한 사항은 카카오 운영정책의 카카오 서비스 휴면 정책 부분을 꼭 확인하시기 바랍니다.

③ 이용계약이 해지되면 법령 및 개인정보 처리방침에 따라 여러분의 정보를 보유하는 경우를 제외하고는 여러분의 카카오계정 정보 및 카카오계정으로 이용하였던 개별 서비스 데이터는 삭제됩니다. 다만, 여러분이 개별 서비스 내에서 작성한 게시물 등 모든 데이터의 삭제와 관련한 사항은 개별 서비스의 약관에 따릅니다.

④ 이용계약이 해지된 경우라도 여러분은 다시 회사에 대하여 이용계약의 체결을 신청할 수 있습니다.

제 14 조 (손해배상)

① 회사는 법령상 허용되는 한도 내에서 서비스와 관련하여 본 약관에 명시되지 않은 어떠한 구체적인 사항에 대한 약정이나 보증을 하지 않습니다. 또한, 회사는 CP(Contents Provider)가 제공하거나 회원이 작성하는 등의 방법으로 서비스에 게재된 정보, 자료, 사실의 신뢰도, 정확성 등에 대해서는 보증을 하지 않으며, 회사의 과실 없이 발생된 여러분의 손해에 대하여는 책임을 부담하지 아니합니다.

② 회사는 회사의 과실로 인하여 여러분이 손해를 입게 될 경우 본 약관 및 관련 법령에 따라 여러분의 손해를 배상하겠습니다. 다만 회사는 회사의 과실 없이 발생된 아래와 같은 손해에 대해서는 책임을 부담하지 않습니다. 또한 회사는 법률상 허용되는 한도 내에서 간접 손해, 특별 손해, 결과적 손해, 징계적 손해, 및 징벌적 손해에 대한 책임을 부담하지 않습니다.
1. 천재지변 또는 이에 준하는 불가항력의 상태에서 발생한 손해
2. 여러분의 귀책사유로 서비스 이용에 장애가 발생한 경우
3. 서비스에 접속 또는 이용과정에서 발생하는 개인적인 손해
4. 제3자가 불법적으로 회사의 서버에 접속하거나 서버를 이용함으로써 발생하는 손해
5. 제3자가 회사 서버에 대한 전송 또는 회사 서버로부터의 전송을 방해함으로써 발생하는 손해
6. 제3자가 악성 프로그램을 전송 또는 유포함으로써 발생하는 손해
7. 전송된 데이터의 생략, 누락, 파괴 등으로 발생한 손해, 명예훼손 등 제3자가 서비스를 이용하는 과정에서 발생된 손해
8. 기타 회사의 고의 또는 과실이 없는 사유로 인해 발생한 손해

제 15 조 (분쟁의 해결)

본 약관 또는 서비스는 대한민국법령에 의하여 규정되고 이행됩니다. 서비스 이용과 관련하여 회사와 여러분 간에 분쟁이 발생하면 이의 해결을 위해 성실히 협의할 것입니다. 그럼에도 불구하고 해결되지 않으면 민사소송법상의 관할법원에 소를 제기할 수 있습니다.
• 공고일자 : 2019년 6월 11일
•시행일자 : 2019년 6월 11일</textarea>
					</div>
					<div class="form-group mb-4">
						<div class="checkbox checkbox-primary d-inline">
							<input type="checkbox" id="inputAgreeClause" name="agree-clause">
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
	<script src="js/vendor-all.min.js"></script>
	<script src="plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="plugins/sweetalert/js/sweetalert.min.js"></script>
	
	<script src="plugins/jquery-validation/js/jquery.validate.min.js"></script>
	<script src="plugins/jquery-validation/js/messages_ko.js"></script>
	
	<script src="js/member/sign-up.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
</body>

</html>