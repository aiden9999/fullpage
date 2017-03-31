<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
	<head>
		<c:import url="/WEB-INF/view/main/head.jsp"/>
	</head>
	
	<body>
		<div class="picture_container">
			<div class="header">
				<div class="logo" onclick="location.href='/'"></div>
			</div>
			<div class="inner">
				<div class="side_menu">
					<div class="menu_wrap">
						<div class="menu" id="about">
							<span onclick="location.href='/about'">ABOUT US</span>
						</div>
						<div class="menu" id="culture">
							<span onclick="location.href='/culture'">CULTURE</span>
						</div>
						<div class="menu" id="travel">
							<span onclick="location.href='/travel'">TRAVEL</span>
						</div>
						<div class="menu" id="play">
							<span onclick="location.href='/play'">PLAY</span>
						</div>
						<div class="menu" id="picture">
							<span onclick="loc('picture')">PICTURE</span>
						</div>
						<div class="menu" id="diary">
							<span onclick="location.href='/diary'">DIARY</span>
						</div>
						<div class="menu" id="diary">
							<span onclick="location.href='/diary'">VISITORS</span>
						</div>
					</div>
				</div>
				<div class="center_container">
					<div class="main_image">
						<c:forEach var="i" begin="0" end="2">
							<div class="img" style="background-image: url('/img/img${3-i}.png')" id="pic${i }"></div>
						</c:forEach>
					</div>
					<div class="arrow_wrap">
						<div class="img_wrap">
							<div class="arrow arrow_left" id="prev"></div>
							<div class="arrow arrow_right" id="next"></div>
						</div>
						<div class="txt_wrap">
							<div class="txt prev">prev</div>
							<div class="txt next">next</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	
	<script>
		$(document).ready(function(){
			var picNum = 1;
			$(".main_image").on("mousewheel", function(event){
				var e = event.originalEvent;
				var delta = e.wheelDelta;
				var img = "/img/img"+picNum+".png";
				if(delta>0 && picNum>0){
// 					var html = "<div class='img' style='background-image: url("+img+")' id='picNum"+picNum+"'></div>";
// 					$(".main_image").append(html);
					$("#pic"+picNum).animate({
						left: "+=100%"
					}, 1000);
					picNum--;
				} else if(delta<0 && picNum<2){
// 					var html = "<div class='img' style='background-image: url("+img+")' id='picNum"+picNum+"'></div>";
// 					$(".main_image").append(html);
					$("#pic"+picNum).animate({
						left: "-=100%"
					}, 1000);
					picNum++;
				}
			});
		});
		// next, prev mouseover
		$(".arrow").mouseover(function(){
			$("."+$(this).prop("id")).animate({
				opacity: 1
			}, 500);
		});
		// next, prev mouseleave
		$(".arrow").mouseleave(function(){
			$("."+$(this).prop("id")).animate({
				opacity: 0
			}, 500);
		});
	</script>
</html>