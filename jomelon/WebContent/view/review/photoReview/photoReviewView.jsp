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
 <!-- 헤더부분 -->
 <c:import url="../../template/header.jsp" />
 
 <div class="container">
    <div class="page-header text-center">
      <h3><strong><a href="photoReview.do">포토 리뷰</a></strong></h3>
    </div>
    <!-- 제품 안내 -->
    <div class="row prodInfo">
      <div class="col-sm-12 prodSelect">
        <div id="img">no image</div>
        <div>
          <span id="prodName">오리지널 향수</span>&nbsp;
          <span id="prodPrice">150,000원</span><br>
          <a href="#" class="btn btn-default" role="button">제품 상세</a>
        </div>
      </div>
    </div>
    <!-- 리뷰제목, 작성자명 -->
    <div class="row">
      <hr>
      <div class="col-sm-3"><h5><strong>제목</strong></h5></div>
      <div class="col-sm-9"><h5><strong>저의 인생향수입니다.</strong></h5> </div>
      <div class="col-sm-3"><h5><strong>작성자</strong></h5></div>
      <div class="col-sm-9"><h5><strong>향순이</strong></h5> </div>
    </div>
    <div class="row">
      <div class="col-sm-3 "><h5><strong>날짜</strong></h5></div>
      <div class="col-sm-3"><h5>2021-01-27</h5></div>
      <div class="col-sm-3"><h5><strong>조회수</strong></h5></div>
      <div class="col-sm-3"><h5>42</h5></div>
    </div>
    <!--리뷰내용-->
    <div class="row prvContent">
      <div class="col-sm-12">
        <pre>


        올리브*에서 시향하고 향이 너무 취향저격 이어서 고민없이 구매했습니다!

        향은 개인적으로 시원한 느낌이 들고 과일향과 꽃향이 섞여서

        고급 느낌의 향이 느껴져요~!

        더군다나 남자친구가 이 향을 너무 좋아해서 이 향수를 뿌리는게 습관이 됬어요!

        그래서 한통 알차게 사용하고 아프리모 공식 사이트에서 감사제를 진행하길래 얼른 주문해서 두 통 쟁여놨습니다.

        오리지널 향수 단종되거나 리뉴얼 하지 말아주세요ㅠㅠㅠㅠ

        바이레*, 조말* 등의 고가의 향수도 사용해봤지만 아프리모 오리지널 향수가 맘에 쏘옥 든다구요..

        저만 간직하고 싶은 향수 이지만 아프리모가 더욱 더 유명해지고많이 알려져서 좋은 이벤트 열어주길 바래요❤

        지금 감사제 중에 얼른 구매하세요!!! 고민을 하신다면...배송이 늦어지고 감사제는 끝나요..!!

        <img src="${pageContext.request.contextPath}/images/perfume.jpg" alt="향수이미지" class="reviewView"/>
        </pre>
      </div>
    </div>
    <!-- 리뷰목록버튼 -->
    <div class="row">
      <div class="col-sm-12">
        <a href="photoReview.do" class="btn btn-default" role="button">리뷰목록</a>
      </div>
    </div>
    <div class="row">
      <hr>
    </div>
  </div><!--container-->
  
  <!--footer부분 -->
  <c:import url="../../template/footer.jsp"/>
  
</body>
</html>