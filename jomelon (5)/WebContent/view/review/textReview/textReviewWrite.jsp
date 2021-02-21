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

    <form action action="textReviewPost.do" method="post" id="frm">
      <div class="row prodInfo">
        <div class="col-sm-12">
          <div class="prodSelect">
            <div id="img">no image</div>
            <div>
              <span id="prodName">오리지널 향수</span>&nbsp;
              <span id="prodPrice">150,000원</span><br>
              <a href="#" class="btn btn-default" role="button">제품 선택</a>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-10">
          <div class="form-group review-info">
            제목<input type="text" class="form-control col-xs-2" id="rvTitle">
          </div>
          <br><br>
          <div class="form-group review-info">
            작성자 <input type="text" class="form-control" id="rvWriter">
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-12">
          <div class="form-group review-info">
            <label for="contents">내용</label>
            <textarea class="form-control" rows="30" id="contents" name="rvContents"></textarea>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3 text-left">
         비밀번호 <input type="password" class="form-control" name="rvPass" />
        </div>
        <div class="col-sm-9 text-right">
          <input type="button" class="btn btn-default" value="완료" id="save" />
        </div>
      </div>
    </form>
      <div class="row reset">
        <br>
        <div class="col-sm-12 text-left">
          <a href="textReview.do" class="btn btn-default" role="button">취소</a>
          <a href="textReview.do" class="btn btn-default" role="button">리뷰목록</a>
        </div>
      </div>
    </div><!--container-->
    
  <!-- footer -->
  <c:import url="../../template/footer.jsp"/>
</body>
</html>