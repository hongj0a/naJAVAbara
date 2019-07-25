<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::고객센터</title>
	<meta charset="utf-8">
	<!-- append css -->
	<!-- footable css -->
    <link rel="stylesheet" href="css/board/footable.bootstrap.min.css">
    <link rel="stylesheet" href="css/board/footable.standalone.min.css">
	<link rel="stylesheet" href="css/board/style_board.css">
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
                    </div>
                    <!-- [ breadcrumb ] end -->

                    <div class="main-body">
                        <div class="page-wrapper">

                            <!-- [ Main Content ] start -->
                            <div class="row">
                            	<!-- [QnA_write] start -->
                            	<div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>나의 QnA</h5>
                                            <span class="d-block m-t-5"> <code></code>고객님과 함께하는 모아도토리 고객센터 입니다.</span>
                                            <div class="card-header-right">
                                            </div>
                                        </div>
                                        <div class="card-block">
                                            <!--p>문의 사항을 자세히 입력해주세요. 빠른 시일 내로 응대해드리겠습니다.
                                            </p-->
                                            <!-- 아아ㅏㅏㅏㅏㅏㅏㅏㅏㅏ-->
                                            <div class="qna_wrap" style="padding:10px;">
                                                <form>
                                                    <div class="form-group row">
                                                        <label for="inputEmail3" class="col-sm-2 col-form-label">제목</label>
                                                        <div class="col-sm-10">
                                                            <input type="email" class="form-control" id="inputEmail3" placeholder="제목">
                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="qna_text" class="col-sm-2 col-form-label">내용</label>
                                                        <div class="col-sm-10">
                                                            <textarea id="qna_text" class="form-control" name="" placeholder="문의사항을 작성해주세요" rows="10"></textarea>
                                                        </div>
                                                    </div>

                                                    <div class="form-group row" style=" border-bottom:1px solid #ddd;">
                                                        <label for="qna_text" class="col-sm-2 col-form-label">파일첨부</label>
                                                        <div class="col-sm-10 mb-3">
                                                            <div class="input-group cust-file-button">
                                                                <div class="custom-file">
                                                                    <input type="file" class="custom-file-input" id="inputGroupFile04"multiple>
                                                                    <label class="custom-file-label" for="inputGroupFile04">파일찾기</label>
                                                                </div>
                                                                <!-- div class="input-group-append">
                                                                     <button class="btn btn-primary" type="button">파일첨부</button>
                                                                </div -->
                                                            </div>

                                                        </div>
                                                        <label class="col-sm-2 col-form-label"></label>
                                                        <p class="col-sm-10" class="txt">파일사이즈 총합 2MB까지 업로드 가능합니다.</p>
                                                    </div>
                                                    
                                                </form>

                                                <div class="form-group row">
                                                    <div class="col-sm-12">
                                                        <a href="#" datataget="" class="btn btn-secondary btn-boredlist">목록</a>
                                                        <button type="submit" class="btn btn-primary  float-right">확인</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>                              
                                <!-- [QnA_write] end -->
                                
                            </div>
                            <!-- [ Main Content ] end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="../main/footer.jsp"></jsp:include>
    <!-- [ Main Content ] end -->
    
        <!-- footable Js -->
    <script src="js/board/footable.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            // [ Foo-table ]
            $('#demo-foo-filtering').footable({
                "paging": {
                    "enabled": true
                }
                /*
                ,
                "sorting": {
                    "enabled": true
                }*/
            });
        });
    </script>
</body>
</html>