<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 index페이지
 <!-- el(expression language로 데이터를 출력하는 언어이다.) -->
 ${myMessage}
 <!-- spring에서 requestScope를 키값 앞에 써주지 않아도 model에 저장된 키값 내용은 알아서 찾아줌.
 따라서 ${requestScope.myMessage} 안써줘도 됨. -->
 
</body>
</html>