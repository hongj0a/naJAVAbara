<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>MoreDotori ExpertList-In</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Datta Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
    <meta name="keywords" content="admin templates, bootstrap admin templates, bootstrap 4, dashboard, dashboard templets, sass admin templets, html admin templates, responsive, bootstrap admin templates free download,premium bootstrap admin templates, datta able, datta able bootstrap admin template">
    <meta name="author" content="Codedthemes" />

    <!-- Favicon icon -->
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- fontawesome icon -->
    <link rel="stylesheet" href="fonts/fontawesome/css/fontawesome-all.min.css">
    <!-- animation css -->
    <link rel="stylesheet" href="plugins/animation/css/animate.min.css">
    <!-- vendor css -->
    <link rel="stylesheet" href="css/style.css">
 
    <!-- Smart Wizard css -->
    <link rel="stylesheet" href="plugins/smart-wizard/css/smart_wizard.min.css">
    <link rel="stylesheet" href="plugins/smart-wizard/css/smart_wizard_theme_arrows.min.css">
    <link rel="stylesheet" href="plugins/smart-wizard/css/smart_wizard_theme_circles.min.css">
    <link rel="stylesheet" href="plugins/smart-wizard/css/smart_wizard_theme_dots.min.css">
	
	<!--  stars css  -->
    <link rel="stylesheet" href="plugins/ratting/css/bootstrap-stars.css">
    <link rel="stylesheet" href="plugins/ratting/css/css-stars.css"> 
    
    <!-- select2 css -->
    <link rel="stylesheet" href="plugins/select2/css/select2.min.css">
    
    <!-- multi-select css -->
    <link rel="stylesheet" href="plugins/multi-select/css/multi-select.css">
	
	<!-- owl-carousel css -->
    <link rel="stylesheet" href="plugins/owl-carousel/css/owl.carousel.min.css">
    <link rel="stylesheet" href="plugins/owl-carousel/css/owl.theme.default.min.css">
	
	<link rel="stylesheet" href="css/exepertList/exepert.css">
	
</head>

<body class="layout-8">
	<jsp:include page="../main/header.jsp"></jsp:include>
    <!-- [ Main Content ] start -->
    <div class="pcoded-main-container">
        <div class="pcoded-wrapper">
            <div class="pcoded-content">
                <div class="pcoded-inner-content">

                    <!-- [ breadcrumb ] start -->
                    <div class="page-header">
                        <div class="page-block">
                            <div class="row align-items-center">
                                <div class="col-md-12">
                                    <div id="headder-title" class="page-header-title">
                                        <h5>상세정보</h5>
                                    </div>
                                    <div class="find-list">
                                    <ul class="breadcrumb">
                               
                                        <li class="breadcrumb-item"><a href="/"><i class="feather icon-home"></i></a></li>
                                        <li class="breadcrumb-item"><a href="/eList">재무 진단</a></li>
                                        <li class="breadcrumb-item"><a href="eList">전문가 찾기</a></li>
                                        <li class="breadcrumb-item"><a href="#!">상세정보</a></li>
                                    </ul>
                                    </div>
                               		<div class="advice-signup">
                               			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">상담신청</button>
                               			<div class="card-body">
                                            <div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                                <div class="modal-dialog modal-dialog-centered" role="document">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                        	<div id="advice-signup2">
                                                            <h5 class="modal-title" id="  exampleModalCenterTitle">상담신청</h5>
                                                            </div>
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                        </div>
                                                        <div class="modal-body">
                                                        <p>상담 날짜</p>
                                                        <div class="card-block">
                                            			<div class="row">
                                            			<div class="col-md-4 col-4">
                                                    <select class="js-example-basic-single form-control">
                                                            <option value="2019">2019</option>
                                                            <option value="2018">2018</option>
                                                            <option value="2017">2017</option>
                                                            <option value="2016">2016</option>
                                                        	<option value="2015">2015</option>
                                                            <option value="2014">2014</option>
                                                            <option value="2013">2013</option>
                                                            <option value="2012">2012</option>
                                                            <option value="2011">2011</option>
                                                            <option value="2010">2010</option>
                                                            <option value="2009">2009</option>
                                                            <option value="2008">2008</option>
                                                        	<option value="2007">2007</option>
                                                            <option value="2006">2006</option>
                                                            <option value="2005">2005</option>
                                                            <option value="2004">2004</option>
                                                            <option value="2003">2003</option>
                                                            <option value="2002">2002</option>
                                                            <option value="2001">2001</option>
                                                            <option value="2000">2000</option>
                                                        	<option value="1999">1999</option>
                                                            <option value="1998">1998</option>
                                                            <option value="1997">1997</option>
                                                            <option value="1996">1996</option>
                                                            <option value="1995">1995</option>
                                                            <option value="1994">1994</option>
                                                            <option value="1993">1993</option>
                                                            <option value="1992">1992</option>
                                                        	<option value="1991">1991</option>
                                                            <option value="1990">1990</option>
                                                            <option value="1989">1989</option>
                                                            <option value="1988">1988</option>
                                                            <option value="1999">1987</option>
                                                            <option value="1998">1986</option>
                                                            <option value="1997">1985</option>
                                                            <option value="1996">1984</option>
                                                            <option value="1995">1983</option>
                                                            <option value="1994">1982</option>
                                                            <option value="1993">1981</option>
                                                            <option value="1992">1980</option>
                                                        	<option value="1991">1979</option>
                                                            <option value="1990">1978</option>
                                                            <option value="1989">1977</option>
                                                            <option value="1988">1976</option>
                                                            <option value="1999">1975</option>
                                                            <option value="1998">1974</option>
                                                            <option value="1997">1973</option>
                                                            <option value="1996">1972</option>
                                                            <option value="1995">1971</option>
                                                            <option value="1994">1970</option>
                                                            <option value="1993">1969</option>
                                                            <option value="1992">1968</option>
                                                        	<option value="1991">1967</option>
                                                            <option value="1990">1966</option>
                                                            <option value="1989">1965</option>
                                                            <option value="1988">1964</option>
                                                        </select>
                                                     </div>
                                                     <div class="col-md-3 col-3">
                                                    <select class="js-example-basic-single form-control">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        	<option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                        </select>
                                                     </div>
                                                     <div class="col-md-3 col-3">
                                                    <select class="js-example-basic-single form-control" >
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        	<option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                        	<option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                        </select>
                                                     </div>
                                                </div>
                                                	</br>
                                                        <p>상담 시간</p>
                                                         <div class="card-block">
                                            			<div class="row">
                                            			<div class="col-md-3 col-3">
                                                    <select class="js-example-basic-single form-control">
                                                            <option value="오전">오전</option>
                                                            <option value="오후">오후</option>
                                                        </select>
                                                     </div>
                                                     <div class="col-md-3 col-3">
                                                    <select class="js-example-basic-single form-control">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        	<option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                        </select>
                                                     </div>
                                                     <div class="col-md-3 col-3">
                                                    <select class="js-example-basic-single form-control" >
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                        	<option value="5">5</option>
                                                            <option value="6">6</option>
                                                            <option value="7">7</option>
                                                            <option value="8">8</option>
                                                            <option value="9">9</option>
                                                            <option value="10">10</option>
                                                            <option value="11">11</option>
                                                            <option value="12">12</option>
                                                            <option value="13">13</option>
                                                            <option value="14">14</option>
                                                            <option value="15">15</option>
                                                            <option value="16">16</option>
                                                        	<option value="17">17</option>
                                                            <option value="18">18</option>
                                                            <option value="19">19</option>
                                                            <option value="20">20</option>
                                                            <option value="21">21</option>
                                                            <option value="22">22</option>
                                                            <option value="23">23</option>
                                                            <option value="24">24</option>
                                                            <option value="25">25</option>
                                                            <option value="26">26</option>
                                                            <option value="27">27</option>
                                                            <option value="28">28</option>
                                                            <option value="29">29</option>
                                                            <option value="30">30</option>
                                                            <option value="31">31</option>
                                                            <option value="32">32</option>
                                                            <option value="33">33</option>
                                                            <option value="34">34</option>
                                                            <option value="35">35</option>
                                                            <option value="36">36</option>
                                                            <option value="37">37</option>
                                                            <option value="38">38</option>
                                                        	<option value="39">39</option>
                                                            <option value="40">40</option>
                                                            <option value="41">41</option>
                                                            <option value="42">42</option>
                                                            <option value="43">43</option>
                                                            <option value="44">44</option>
                                                            <option value="45">45</option>
                                                            <option value="46">46</option>
                                                            <option value="47">47</option>
                                                            <option value="48">48</option>
                                                            <option value="49">49</option>
                                                            <option value="50">50</option>
                                                            <option value="51">51</option>
                                                            <option value="52">52</option>
                                                            <option value="53">53</option>
                                                            <option value="54">54</option>
                                                            <option value="55">55</option>
                                                            <option value="56">56</option>
                                                            <option value="57">57</option>
                                                            <option value="58">58</option>
                                                            <option value="59">59</option>
                                                        </select>
                                                     </div>
                                                </div>
                                              </div> 
                                                	</br>
                                                        <p>연락처</p>
                                                        <div class="col-md-6 col-6">
                                                        	<input type="address" class="form-control">
                                                        </div>
                                                        </br>
                                                        <p>특이사항</p>
                                                        <div class="col-md15 col-15">
                                                        	<div class="advice-coment">
                                                        		<textarea id="content" class="form-control"> </textarea>
                                                        	</div>
                                                        </div>
                                                        </br><p> 이용약관</p>
                                                        <div id="consent" class="form-control">
		                                                      <p>제 1 조 [목적 등]</br></br>&nbsp;&nbsp;모아도토리 서비스 약관은 회원이 모아토도리가 제공하는 가계부와 자산관리 서비스를 이용함에 있어 회원과 모아도토리의 권리.의무 및 책임사항을 규정함을 목적으로 합니다.
		                                                      	</br>&nbsp;&nbsp;회원이 되고자 하는 자가 모아도토리가 정한 절차를 거쳐서 동의 단추를 누름으로써 본 약관에 의한 계약을 승인합니다.</br>&nbsp;&nbsp;본 약관에 정하는 이외의 이용자와 모아도토리의 권리.의무 및 책임사항에 관해서는 전기통신사업법 기타 대한민국의 관련 법령과 상관습에 의합니다.
																</br></br>제 2 조 [회원의 정의]</br></br>&nbsp;&nbsp;회원이라 함은 모아도토리가 제공하는 가계부와 자산관리 서비스를 이용하고자 이용자 등록(아이디,비밀번호)을 한 개인을 말합니다.
																</br></br>제 3 조 [서비스의 제공 및 변경]</br></br>&nbsp;&nbsp;모아도토리는 회원에게 아래와 같은 서비스를 제공합니다.		
																</br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;모아도토리 내 모든 contents의 자유로운 이용
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;회원간의 커뮤니케이션 창구제공(글쓰기, 수정, 검색, 삭제 등)
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기타 모아도토리가 자체 개발하거나 다른 회사와의 협력계약 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등을 통해 회원들에게 제공할 일체의 서비스		
																</br></br>&nbsp;&nbsp;모아도토리는 그 변경될 서비스의 내용 및 제공일자를 제6조 제2항에서 정한 방법으로 이용자에게 통지하고, 제1항에 정한 서비스를 변경하여 제공할 수 있습니다.
																</br></br>제 4 조 [서비스의 중단]</br></br>&nbsp;&nbsp;모아도토리는 컴퓨터 등 정보통신설비의 보수점검/교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있고, 새로운 서비스로의 교체 기타 호가계부가 적절하다고 판단하는 사유에 기하여 현재 제공되는 서비스를 완전히 중단할 수 있습니다.
																</br></br>&nbsp;&nbsp;제1항에 의한 서비스 중단의 경우에는 모아도토리는 제7조 제2항에서 정한 방법으로 회원에게 통지합니다.</br>&nbsp;&nbsp;다만, 모아도토리가 통제할 수 없는 사유로 인한 서비스의 중단(시스템 관리자의 고의, 중과실이 없는 디스크 장애, 시스템 다운 등)으로 인하여 사전 통지가 불가능한 경우에는 그러하지 아니합니다.
																</br></br>제 5 조 [회원 탈퇴 및 자격 상실 등]</br></br>&nbsp;&nbsp;회원은 모아도토리에 언제든지 자신의 회원등록을 말소해 줄 것("회원" 탈퇴)을 요청할 수 있으며 모아도토리는 위 요청을 받은 즉시 해당 회원의 정보말소를 위한 절차를 밟습니다.
																</br>&nbsp;&nbsp;회원이 다음 각 호의 사유에 해당하는 경우, 모아도토리는 회원의 자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있습니다.
																</br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;허위 내용을 등록한 경우 
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;등전자거래질서를 위협하는 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;서비스를 이용하여 법령과 본 약관이 금지하거나 공공질서 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;및 미풍양속에 반하는 행위를 하는 경우
																</br></br>&nbsp;&nbsp;모아도토리가 회원의 회원자격을 상실시키기로 결정한 경우에는 회원등록을 말소합니다. 이 경우 회원에게 회원등록 말소 전에 이를 이메일주소등으로 통지하고, 소명할 기회를 부여합니다.
																</br></br>제 6 조 [회원에 대한 통지]</br></br>&nbsp;&nbsp;모아도토리는 "본 서비스"에 대한 공지사항을 회원이 등록한 이메일주소로 공지할 수 있습니다.
																</br>&nbsp;&nbsp;모아도토리가 불특정다수 회원에 대한 통지를 하는 경우 7일이상 "공지사항" 게시판에 공지함으로써 개별 통지에 갈음할 수 있습니다.
																</br></br>제 7 조 [이용자의 개인정보보호]</br></br>&nbsp;&nbsp;모아도토리는 "본 서비스"에 등록된 id와 이름,주소,연락처등을 관리합니다.
																</br>&nbsp;&nbsp;모아도토리는 관련법령이 정하는 바에 따라서 "회원"의 개인정보를 보호하기 위하여 노력합니다.
																</br></br>제 8 조 [모아도토리의 의무]</br></br>&nbsp;&nbsp;모아도토리는 법령과 본 약관이 금지하거나 공공질서 및 미풍양속에 반하는 행위를 하지 않으며 본 약관이 정하는 바에 따라 지속적이고, 안정적으로 서비스를 제공하기 위해서 노력합니다.
																</br>&nbsp;&nbsp;모아도토리는 회원이 안전하게 인터넷 서비스를 이용할 수 있도록 회원의 개인정보(신용정보 포함)보호를 위해 최선을 다합니다.
																</br>&nbsp;&nbsp;모아도토리는 회원이 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.
																</br>&nbsp;&nbsp;모아도토리는 회원이 이메일 수신신청을 한 경우에는 광고성 전자우편을 발송할수 있습니다.
																</br></br>제 9 조 [이용해지 및 이용제한]</br></br>&nbsp;&nbsp;회원이 이용계약을 해지(탈퇴)하고자 하는 때에는 서비스의 "회원정보변경 메뉴"에서 해지를 신청할 수 있습니다.
																</br></br>제 10 조 [회원의 게시물]</br></br>&nbsp;&nbsp;모아도토리는 회원이 게시하거나 등록하는 서비스내의 게시물이 다음 각호의 1에 해당한다고 판단되는 경우에는 사전 통지없이 삭제하거나 이동 또는 등록을 거부할 수 있습니다.
																</br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;다른 회원 또는 제3자를 비방하거나 중상모략으로 명예를 손상시키는 내용인 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공공질서 및 미풍양속에 위반되는 내용인 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;범죄적 행위에 결부된다고 인정되는 내용인 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;모아도토리 또는 제3자의 지적재산권 등 기타의 권리를 침해하는 내용인 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;모아도토리에서 규정한 게시기간을 초과한 경우
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;음란물 또는 음란사이트를 링크 또는 게재하는 경우 (음란 사이트의 url을 게시하는 경우 포함)
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기타 관계법령에 위반된다고 판단되는 경우
																</br></br>&nbsp;&nbsp;회사는 전항 각호의 사유 외 개별서비스 약관에서 규정하고 있는 게시물 등록제한 사유를 위반하는 경우에는 전항을 준용합니다.
																</br></br>제 11 조 [손해배상 및 면책조항]</br></br>&nbsp;&nbsp;모아도토리는 "본 서비스"의 이용과 관련하여 모아도토리의 고의 또는 중대한 과실 없이 회원에게 발생한 일체의 손해에 관하여 책임을 부담하지 않습니다.
																</br></br>제 12 조 [약관의 개정]</br></br>&nbsp;&nbsp;모아도토리는 약관의 규제 등에 관한법률, 전자거래기본법, 전자서명법, 정보통신망이용촉진등에관한법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
																</br>&nbsp;&nbsp;모아도토리가 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 공지사항 게시판에 그 적용일자 7일 이전부터 공지합니다.
																</br>&nbsp;&nbsp;회원은 변경된 약관에 대해 거부할 권리가 있습니다. 회원은 변경된 약관이 공지된 후 15일 이내에 거부의사를 표명할 수 있습니다. 회원이 거부하는 경우 모아도토리는 당해 회원과의 계약을 해지할 수 있습니다. 만약 회원이 변경된 약관이 공지된 후 15일 이내에 거부의사를 표시하지 않는 경우에는 동의하는 것으로 간주합니다.
																</br></br>제 12 조 [재판관할]</br></br>&nbsp;&nbsp;모아도토리와 회원간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국 법을 적용하며, 본 분쟁으로 인한 소는 민사소송법상의 관할을 가지는 대한민국의 법원에 제기합니다.
																</br></br>- 부 칙 -</br></br>&nbsp;&nbsp;본 약관은 2019.07.11 부터 적용하고, 기존의 이용자에 대해서는 본 약관으로 대체하는 것으로 합니다.
		                                                       	</br></br>■ 수집하는 개인정보 항목</br></br>&nbsp;&nbsp;모아도토리는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 </br>개인정보를 수집하고 있습니다.
																</br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 수집항목 : 이름, 생년월일, 성별, 로그인ID, 비밀번호, 연락처, 이메일, 직업, 주민등록번호, 접속로그, 접속 IP 정보, 사이트 접속경위, 접속사용환경 등
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 수집방법 : 홈페이지(회원가입), 문의게시판 및 추가 답변 등
																</br></br>■ 개인정보의 수집 및 이용목적</br></br>&nbsp;&nbsp;모아도토리는 개인정보를 다음의 목적을 위해 활용합니다.
																</br></br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 서비스 제공에 관한 계약 이행 및 콘텐츠 제공
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 회원 관리
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 자산 관리 
																</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* 상담 신청 및 진행 관련을 위한 수집 등
                                                        	</p>
                                                        	</div>
                                                        <div class="checkbox checkbox-fill d-inline">	
                                                        	<p> 개인정보 수집에 동의 하시겠습니까?</p>	
                                                        	<input type="checkbox" name="checkbox-fill-2" id="checkbox-fill-2">
								                            <label for="checkbox-fill-2" class="cr">동의합니다.</label>
								                            </br></br>
                                                        </div>
                                                        <div id="footer-style" class="modal-footer">
                                                            <button type="submit" class="btn btn-primary" >신 청</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                      </div>
                                	</div>    
                                </div>
                            </div>
                        </div>
                    </div>
                   <!--  stars -->
                                     <div class="stars stars-example-css" id="stars">
                                     	<div class="br-wrapper br-theme-css-stars">
                                       			<div class="br-widget">
                                       				<a href="#" data-rating-value="1" data-rating-text="1" class="br-selected"></a>
                                       				<a href="#" data-rating-value="2" data-rating-text="2" class="br-selected"></a>
                                       				<a href="#" data-rating-value="3" data-rating-text="3" class="br-selected"></a>
                                       				<a href="#" data-rating-value="4" data-rating-text="4" class="br-selected br-current"></a>
                                       				<a href="#" data-rating-value="5" data-rating-text="5" class=""></a>
                                       			</div>
                                       	  </div>
                                     </div>
		 						</br></br>
                    <div class="main-body">
                        <div class="page-wrapper">
                            <!-- [ Main Content ] start -->
                                    <div class="card">
                                   		    <div class="card-block p-0">
	                                            <div id="card-design-plus" class="text-center project-main">
	                                            <div class="col-xl-4 col-md-6" id="colxlmd">
	                                                <a href="#!"><img class="img-fluid rounded-circle" src="images/user/avatar-5.jpg" alt="dashboard-user"></a>
	                                                <h5 class="mt-4">최혜원</h5>
	                                                <span>email@naver.com</span>
	                                                <div class="sns-design">
		                                           		<a href="https://www.instagram.com/"><i id="sns-design" class="fab fa-instagram"></i></a>
		                                                <a href="https://www.facebook.com/"><i id="sns-design2" class="fab fa-facebook-square"></i></a>
		                                                </div>
		                                            </div>
	                                            </div>
	                                           <div class="self-intro">
                                    	 		<h5>자기소개</h5>
                                    	 		<p>	-웅앵웅포키포키</p>
                                    	 		<p>	-웅앵웅포키포키</p></br></br>
                                    	 		<h5>자격증</h5>
                                    	 		<p>	-웅앵웅포키포키</p>
                                    	 		<p>	-웅앵웅포키포키</p>
                                    	 	  </div>
	                                       	</div>
	                                       	</br></br>
	                                   		<div class="row">
	                                   <div class="col-sm-12">
                                        <div class="card-header">
                                            <h5>후  기</h5>
                                        </div>
                                        <div id="card-box" class="card">
                                        <div class="card-block">
		                                        <div class="stars stars-example-css" id="stars">
		                                     	<div class="br-wrapper br-theme-css-stars">
		                                     		<select id="example-css" class="rating-star" name="rating" autocomplete="off" style="display: none;">
		                                                    <option value="1">1</option>
		                                                    <option value="2">2</option>
		                                                    <option value="3">3</option>
		                                                    <option value="4">4</option>
		                                                    <option value="5">5</option>
		                                       	
		                                       	
		                                       		</select>
		                                       	</div>
		                                     </div>
                                                <div>
                                              	  <div class="review">
	                                                <div id="step-l-1" class="tab-pane step-content" style="display: block;">
    	                                                    <div class="review-subject">
	                                                        	<h5>이것은 후기다</h5>
	                                                        </div>
	                                                        <div class="review-person">
	                                                        	<p>id는여기에</p>
	                                                        </div>
	                                                        </br><hr>
	                                                        <p>여기에 내용 들어가는 것임</p>
	                                                        <p>이렇게 쓰면 되는 것</p>
	                                                    </div>
	                                                 </div>
				                                        <div class="card-block">
				                                            <div class="slider2 owl-carousel owl-theme">
				                                                <div class="item">
				                                                    <img src="assets/images/slider/img-slide-1.jpg" alt="" class="img-fluid">
				                                                </div>
				                                                <div class="item">
				                                                    <img src="assets/images/slider/img-slide-2.jpg" alt="" class="img-fluid">
				                                                </div>
				                                                <div class="item">
				                                                    <img src="assets/images/slider/img-slide-3.jpg" alt="" class="img-fluid">
				                                                </div>
				                                            </div>
				                                        </div>
	                                            </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              </div>
                                	</div>
	                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- [ Main Content ] end -->
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->

    <!-- Required Js -->
    <script src="js/vendor-all.min.js"></script>
    <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/pcoded.js"></script>

    <!-- Todo Js -->
    <script src="plugins/todo/js/todo.js"></script>  

    <!-- Rating Js -->
    <script src="plugins/ratting/js/jquery.barrating.min.js"></script>
    <script src="js/pages/ac-rating.js"></script>
    
    <!-- Smart Wizard Js -->
    <script src="plugins/smart-wizard/js/jquery.smartWizard.min.js"></script>
    <script src="assets/js/pages/wizard-custom.js"></script>

    <!-- owl-carousel Js -->
    <script src="plugins/owl-carousel/js/owl.carousel.min.js"></script>
    <script src="js/pages/ac-slider.js"></script>

</body>
</html>