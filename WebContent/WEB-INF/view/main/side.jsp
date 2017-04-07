<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

<script>
	//menu 이동
	function loc(menu){
		$(".main_image").css("background-color", "white");
		$(".img").animate({
			left: "+=100%"
		}, 1500, function(){
			location.href="/"+menu;
		});
	}
</script>