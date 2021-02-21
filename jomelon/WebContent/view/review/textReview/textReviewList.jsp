<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>텍스트리뷰</title>
 
<!--Bootstrap3 CDN-->
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/textreviewstyle.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mainstyle.css"/>

</head>
<body>
<!-- 헤더 -->

<c:import url="../../template/header.jsp" />


  <div class="container">
    <div class="page-header text-center">
      <h3><strong>텍스트 리뷰</strong></h3>
    </div>
    <!-- 텍스트리뷰 안내문구 -->
    <div class="row">
      <div class="col-sm-12 text-center rvNotice">
        텍스트 리뷰 작성시 적립금 1,000원을 드립니다.&nbsp;&nbsp;&nbsp;
        <a href="textReviewPost.do" class="btn btn-default" role="button" >리뷰 작성</a>
      </div>
    </div>
    <!--텍스트리뷰 공지사항-->
    <div class="row">
      <hr>
      <div class="col-sm-2">
       <strong>공지사항</strong>
      </div>
      <div class="col-sm-8 text-center">
       <a href="#">리뷰 이벤트</a>
      </div>
      <div class="col-sm-2 text-right">
       2021-01-26
      </div>
    </div>
    <!-- 텍스트리뷰 내용 -->
    <div class="row">
      <hr>
      <!--향수명과 향수이미지-->
      <div class="col-sm-3">
        <a href="#" class="perfumeName">오리지널 여자 향수</a><br><br>
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지">
      </div>
      <!-- 리뷰 작성자, 작성일, 조회수 -->
      <div class="col-sm-9 text-center">
        <div class="row rvFilter">
          <div class="col-sm-7 text-left">
            별명(향순이)
          </div>
          <div class="col-sm-3">
            2021-01-26
          </div>
          <div class="col-sm-2">
            조회수 26
          </div>
        </div>
        <!-- 리뷰 제목, 리뷰내용 -->
        <div class="row text-left">
          <span id="rvTitle"><h4><strong>선물로 샀는데 너무 마음에 들어요</strong></h4></span><br><br>
          <span id="rvContent">은은해요대박좋습니다지금당장사세요</span>
        </div>
      </div>
    </div>
    <div class="row">
      <hr>
      <!--향수명과 향수이미지-->
      <div class="col-sm-3">
        <a href="#" class="perfumeName">오리지널 여자 향수</a><br><br>
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지">
      </div>
      <!-- 리뷰 작성자, 작성일, 조회수 -->
      <div class="col-sm-9 text-center">
        <div class="row rvFilter" >
          <div class="col-sm-7 text-left">
            별명(향순이)
          </div>
          <div class="col-sm-3">
            2021-01-26
          </div>
          <div class="col-sm-2">
            조회수 26
          </div>
        </div>
        <!-- 리뷰 제목, 리뷰내용 -->
        <div class="row text-left">
          <span id="rvTitle">
            <h4><strong>선물로 샀는데 너무 마음에 들어요</strong></h4>
          </span><br><br>
          <span id="rvContent">은은해요대박좋습니다지금당장사세요</span>
        </div>
      </div>
    </div>
    <hr>
    <!-- 검색필터, 검색창 -->
    <div class="row filterSelect">
      <div class="col-sm-8">
        <form action="#" method="post">
        <div class="col-sm-3 form-group">
          <select class="form-control" id="sel1" name="searchFilter">
            <option>제목</option>
            <option>내용</option>
            <option>별명</option>
          </select>
        </div>
        <div class="col-sm-7 input-group">
          <input type="text" class="form-control">
          <div class="input-group-btn">
            <button class="btn btn-default" type="submit">
              <i class="glyphicon glyphicon-search"></i>
            </button>
          </div>
        </div>
        </form>
      </div>
      <!-- 리뷰작성버튼 -->
      <div class="col-sm-4 text-right">
        <a href="textReviewPost.do" class="btn btn-default" role="button" >리뷰 작성</a>
      </div>
    </div>
    <!-- 페이지매김 -->
    <div class="row">
      <div class="col-sm-12 text-center">
      <ul class="pagination" >
        <li class="active"><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
        <li><a href="#">4</a></li>
        <li><a href="#">5</a></li>
      </ul>
    </div>
    </div>
  </div><!--container-->
  
 <!-- footer -->
 <c:import url="../../template/footer.jsp"/>
 
</body>
</html>