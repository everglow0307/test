<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--Bootstrap3 CDN-->
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/photoreviewstyle.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mainstyle.css"/>
</head>
<body>

<!-- 헤더 부분 -->
<c:import url="../../template/header.jsp"></c:import>

<div class="container">
    <div class="page-header text-center">
      <h3><strong>포토 리뷰</strong></h3>
    </div>
    <!-- 포토리뷰 안내문구 -->
    <div class="row">
      <div class="col-sm-12 text-center rvNotice">
        포토 리뷰 작성시 적립금 3,000원을 드립니다.&nbsp;&nbsp;&nbsp;
        <a href="photoReviewPost.do" class="btn btn-default" role="button" >리뷰 작성</a>
      </div>
    </div>
    <!--포토리뷰 공지사항-->
    <div class="row">
      <hr>
      <div class="col-sm-2">
       <strong>공지사항</strong>
      </div>
      <div class="col-sm-8 text-center">
       <a href="#">SNS 공유 이벤트</a>
      </div>
      <div class="col-sm-2 text-right">
       2021-01-26
      </div>
    </div>
    <hr>
    <!-- 포토리뷰 내용 -->
    <div class="row">
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
      </div>
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
      </div>
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
      </div>
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
      </div>
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
      </div>
      <div class="col-sm-4">
        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewList" ><br>
        <span id="prvNickname">향순이</span><br>
        <a href="photoReviewView.do" id="prvTitle">저의 인생향수에요 다른거 다 필요없...</a>
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
        <a href="photoReviewPost.do" class="btn btn-default" role="button" >리뷰 작성</a>
      </div>
    </div>
    <!-- 페이지매김 -->
    <div class="row">
      <div class="col-sm-12 text-center">
      <ul class="pagination" >
        <li class="active"><a href="#">1</a></li>
        <li><a href="#" >2</a></li>
        <li><a href="#" >3</a></li>
        <li><a href="#" >4</a></li>
        <li><a href="#">5</a></li>
      </ul>
    </div>
    </div>
  </div><!--container-->
 
 <!--footer부분 -->
<c:import url="../../template/footer.jsp"/>
</body>
</html>