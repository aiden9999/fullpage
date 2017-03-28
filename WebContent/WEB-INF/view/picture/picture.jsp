<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<c:import url="/WEB-INF/view/main/head.jsp"/>
	</head>
	
	<body>
		<div class="picture_container">
			<div class="center_container">
				<div class="main_image">
					<div class="img"></div>
				</div>
			</div>
			<div class="header">
				<div class="logo" onclick="location.href='/'"></div>
			</div>
			<div class="side_menu left">
				<div class="menu_wrap">
					<div class="menu rotate" id="culture">
						<span onclick="location.href='/culture'">CULTURE</span>
					</div>
					<div class="arrow_wrap" id="prev">
						<div class="arrow arrow_left"></div>
						<div class="txt prev">prev</div>
					</div>
					<div class="menu rotate" id="travel">
						<span onclick="location.href='/travel'">TRAVEL</span>
					</div>
				</div>
			</div>
			<div class="side_menu right">
				<div class="menu_wrap wrap_right">
					<div class="menu rotate" id="play">
						<span onclick="location.href='/play'">PLAY</span>
					</div>
					<div class="arrow_wrap" id="next">
						<div class="txt next">next</div>
						<div class="arrow arrow_right"></div>
					</div>
					<div class="menu rotate" id="picture">
						<span onclick="location.href='/picture'">PICTURE</span>
					</div>
				</div>
			</div>
			<div class="footer">
				<div class="menu_wrap">
					<div class="menu" id="diary">
						<span onclick="location.href='/diary'">DIARY</span>
					</div>
					<div class="menu" id="about">
						<span onclick="location.href='/about'">ABOUT US</span>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		$(document).ready(function(){
			
		});
		// next, prev mouseover
		$(".arrow_wrap").mouseover(function(){
			$("."+$(this).prop("id")).animate({
				opacity: 1
			}, 500);
		});
		// next, prev mouseleave
		$(".arrow_wrap").mouseleave(function(){
			$("."+$(this).prop("id")).animate({
				opacity: 0
			}, 500);
		});
	</script>
</html>