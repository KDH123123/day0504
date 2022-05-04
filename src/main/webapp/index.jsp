<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/visual.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/index.css">
</head>
<body>
	<jsp:include page="/WEB-INF/common/header.jsp" /><!--jsp로 저장된 데이터 가져오기-->
	<main>
		<h1>메인컨텐츠</h1>
		<div class="wrap">
		<section id="visual">
			<h1>비주얼영역</h1>
			<div class="wrap area">
				<ol class="imgs flex"><!-- 사진을 가로로 배치하기 위해 flex 추가 -->
					<c:forEach begin="1" end="15" varStatus="i"><!-- <li> 15개 생성을 위한 반복문 -->
						<li class="img_${i.index }"><a href="#"></a></li>
					</c:forEach>

				</ol>
			</div>
		</section>
		<section id="main-con">
			<h1>메인컨텐츠</h1>
			<div class="wrap">

			</div>
		</section>
		</div>
	</main>
	<jsp:include page="/WEB-INF/common/footer.jsp" /><!--jsp로 저장된 데이터 가져오기-->
</body>
</html>