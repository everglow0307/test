<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>비밀번호 확인</title>

  <!-- Bootstrap4 -->
<link rel="stylesheet"
href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <h4><strong>비밀번호 찾기</strong></h4>
    </div>
  </div>
  <div class="container">
    <div class="row justify-content-center">
       <h5>고객님의 비밀번호는 </h5>
       ${password}
       <h5>입니다</h5>
    </div><br>
    <div class="row justify-content-center">
      <a href="login.do" class="btn btn-dark">로그인</a>&nbsp;&nbsp;
      <a href="main.do" class="btn btn-dark">메인으로 돌아가기</a>
    </div>
  </div>
</body>
</html>