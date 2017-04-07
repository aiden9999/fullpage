<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<c:import url="/WEB-INF/view/main/head.jsp"/>
	</head>
	
	<body id="main_body">
		<div class="main_container">
			<div class="header">
				<div class="logo" onclick="location.href='/'"></div>
			</div>
			<div class="inner">
				<div class="side_menu">
					<c:import url="/WEB-INF/view/main/side.jsp"/>
				</div>
				<div class="center_container">
					<div class="day_wrap">
						<label id="day"></label>일
						<label id="hour"></label>시간
						<label id="minute"></label>분
						<label id="second"></label>초
					</div>
					<div class="main_image">
						<div class="img"></div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		// menu mouseover
		$(document).ready(function(){
			setTimeout(function(){
				$(".main_image").slideToggle(800);
			}, 1000);
			var menu;
			$(".menu").mouseover(function(){
				if(menu != $(this).prop("id")){
					menu = $(this).prop("id");
					var img;
					if(menu=="culture"){
						img = "/img/img1.png";
					} else if(menu=="travel"){
						img = "/img/img2.png";
					} else if(menu=="diary"){
						img = "/img/img3.png";
					}
					var html = "<div class='img' style='background-image: url("+img+"); animation: main_pic_ani 1.5s 0s; -webkit-animation-fill-mode: forwards; animation-fill-mode: forwards;'></div>"
					$(".main_image").append(html);
				}
			});
		});
	</script>
</html>