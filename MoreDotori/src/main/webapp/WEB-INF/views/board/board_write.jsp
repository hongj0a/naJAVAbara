<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>NAJAVABARA::게시판</title>
	<meta charset="utf-8">
    <style>
        .ck-editor__editable {
            min-height: 300px;
            max-height: 500px;
        }
    </style>	
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
                            	 <!-- [ board_write ] start -->
                                <div class="col-sm-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>글쓰기</h5>
                                        </div>
                                        <div class="card-block">
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="">제목</span>
                                                </div>
                                                <input type="text" class="form-control" placeholder="제목" aria-label="" aria-describedby="">
                                            </div>
                                            <!-- 에디터 1  -->
                                            <div class="mb-3">
                                                <textarea name="content" id="classic-editor">
                                                </textarea>
                                            </div>
                                            <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text">파일첨부</span>
                                                </div>
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="inputGroupFile01">
                                                    <label class="custom-file-label" for="inputGroupFile01">파일찾기</label>
                                                </div>
                                            </div>
                                            <button type="submit" class="input-group-append btn-send btn btn-primary float-sm-right">확인</button>
                                            <a href="#" class="btn btn-secondary float-sm-right">목록으로</a>
                                        </div>
                                    </div>
                                </div>                             
                                <!-- [ board_write ] end -->
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
    
    <!-- Ckeditor js -->
    <script src="js/board/ckeditor.js"></script>

    <script type="text/javascript">
        $(window).on('load', function() {
            // classic editor
            ClassicEditor.create(document.querySelector('#classic-editor'))
                .catch(error => {
                    console.error(error);
                });
        });

    </script>
</body>
</html>