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
							<c:forEach var="i" begin="1" end="15">
								<div class="tab">
									<div class="txt">tab${i }</div>
									</div>
							</c:forEach>
						</div>
						<div class="content_wrap">asdf</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		// 탭 휠
		$(document).ready(function(){
			$("#tabWrap").on("mouseWheel", function(e){
				console.log(e);
			});
		});
// 		$("#tabWrap").on("mouseWheel", function(e){
// 			console.log(e);
// 			var evt = e.originalEvent;
// 			var delta = evt.wheelDelta;
// 			console.log(delta);
// 		});
	</script>
</html>