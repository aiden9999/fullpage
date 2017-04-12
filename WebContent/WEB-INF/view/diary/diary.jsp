<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<c:import url="/WEB-INF/view/main/head.jsp"/>
	</head>
	
	<body>
		<div class="menu_container diary_container">
			<div class="header">
				<div class="logo" onclick="location.href='/'"></div>
			</div>
			<div class="inner">
				<div class="side_menu">
					<c:import url="/WEB-INF/view/main/side.jsp"/>
				</div>
				<div class="center_container">
					<div class="inner">
						<div class="tab_wrap" id="tabWrap">
							<div class="view">
								<div class="scroll">
									<div class="txt_wrap">
										<c:forEach var="i" begin="1" end="15">
											<div class="tab">
												<div class="txt"><span>tab${i }</span></div>
												</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
						<div class="content_wrap">
							<div class="title_wrap" id="titleWrap">
								<div class="view">
									<div class="scroll">
										<div class="titles">
											<c:forEach var="i" begin="1" end="15">
												<div class="title">
													<div class="txt"><span>title${i }</span></div>
												</div>
											</c:forEach>
										</div>
									</div>
								</div>
							</div>
							<div class="contents">
								<div class="contents_wrap">
									<div class="day">2017-04-12</div>
									<div class="view">
										<div class="scroll">
											<div class="txt">
												<c:forEach var="i" begin="1" end="50">
													a<br>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="btn_wrap">
										<div class="btn">쓰기</div>
										<div class="btn">수정</div>
										<div class="btn">삭제</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		// 폴더 휠
// 		$("#tabWrap").on("mousewheel", function(e){
// 			var delta = e.originalEvent.wheelDelta;
// 			if(delta<0){
// 				$(".txt_wrap").animate({
// 					top: "-=65px"
// 				}, 500);
// 			} else {
// 				$(".txt_wrap").animate({
// 					top: "+=65px"
// 				}, 500);
// 			}
// 		});
		// 타이틀 휠
// 		$("#titleWrap").on("mousewheel", function(e){
// 			var delta = e.originalEvent.wheelDelta;
// 			if(delta<0){
// 				$(".titles").animate({
// 					top: "-=65px"
// 				}, 500);
// 			} else {
// 				$(".titles").animate({
// 					top: "+=65px"
// 				}, 500);
// 			}
// 		});
	</script>
</html>