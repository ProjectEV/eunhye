<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/product/file" method="post" class="checkout__form" enctype="multipart/form-data">
	<div class="checkout__form__input">
		<p>파일 업로드 <span>*</span></p>
		<!-- 
		<input type="button" value="파일 추가" onClick="fn_addFile()"><br>
		<div id="d_file"></div>  -->
		<input type="text" name="file_connection_id">
		<input type="file" multiple="multiple" name="files">
		<input type="submit" value="제출">
	</div>
</form>


</body>
</html>