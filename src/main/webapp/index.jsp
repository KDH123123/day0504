<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="./js/visual.js"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Monoton&display=swap');
</style>
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
					<ol class="imgs flex">
						<!-- 사진을 가로로 배치하기 위해 flex 추가 -->
						<!-- <li> 15개 생성을 위한 반복문 -->
						<c:forEach begin="0" end="14" varStatus="i">
							<!-- 얘를 0~14로 설정하면 %안써도 됨 -->
							<li value="${i.index }"><a href="#"
								style="font-size: 100px; text-align: center; line-height: 100px">${i.count}</a></li>
						</c:forEach>
					</ol>
					<!--///////////////////////////////-->
					<ul class="bullet flex center">
						<c:forEach begin="1" end="15" varStatus="i">
							<li></li>
						</c:forEach>
					</ul>
					<div>
						<button class="btn prev" type="button">&lt;</button>
						<!-- &; 엔티티코드 사용법 -->
						<button class="btn next" type="button">&gt;</button>
						<!-- &nbsp; 공백 -->
					</div>
				</div>
			</section>
			<section id="main-con">
				<h1>메인컨텐츠</h1>
				<div class="wrap">
					<section id="time">
						<h1>타임특가영역</h1>
						<div class="wrap">
							<ul>
								<li class="goods">
									<ol class="wrap">
										<li class="timg">
											<img alt="이미지대체문구" src="./image/index/image01.jpg" width="280px">
											<div class="rate">40%</div>
										</li>	
										<li class="flex between">
											<div>05:12:30</div>
											<div>
												<span>409</span>개 구매중
											</div>
										</li>	
										<li>
											매콤순대볶음(300g)
										</li>
										<li>
											<span>5,500</span>원
											<span>오아시스배송</span>
										</li>	
									</ol>
								</li>
							</ul>
						</div>
					</section>
				</div>
			</section>
		</div>
	</main>
	<jsp:include page="/WEB-INF/common/footer.jsp" /><!--jsp로 저장된 데이터 가져오기-->
</body>
</html>