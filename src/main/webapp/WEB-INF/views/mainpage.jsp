<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="KR">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script type="text/javascript" src="script/carousel.js"></script>
<script type="text/javascript" src="script/smoothscroll.min.js"></script>
<link rel="stylesheet" href="./style/InstarCard_style.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<!-- 영어 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@700&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<!-- 한글 -->
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap"
	rel="stylesheet">
<title>Document</title>
<style>
body {
	margin: 0;
	padding: 0;
}

.header {
	width: 100%;
	height: 100px;
	background: linear-gradient(155deg, rgba(255, 255, 255, 0.5),
		rgb(255, 255, 255, 0.5) 60%);
	display: flex;
	justify-content: space-between;
	align-items: center;
	border-bottom: 1px solid rgb(130, 130, 130);
}

.header>img {
	width: 180px;
	height: 65px;
	margin-left: 15px;
}

.header>div {
	margin-right: 15px;
}

.header>div>a {
	font-size: 20px;
	font-weight: 600;
	margin: 10px;
	text-decoration: none;
	color: rgba(0, 0, 0, 0.6);
}

.header>div>a:hover {
	color: rgba(0, 0, 0, 1);
}

.first-main {
	text-align: center;
	text-decoration: none;
	color: rgb(255, 255, 255);
	/* padding-bottom: 100px; */
	font-size: 20px;
	font-family: 'Nanum Gothic', sans-serif;
}

.second-main {
	text-align: center;
	text-decoration: none;
	color: rgb(255, 255, 255);
	/* padding-bottom: 100px; */
	font-size: 20px;
	font-family: 'Nanum Gothic', sans-serif;
}

nav {
	display: flex;
	justify-content: center;
	align-items: center;
	padding-bottom: 10px;
	height: 60px;
	font-size: 30px;
	background-color: rgba(7, 100, 38, 1);
}

/* 기본설정 초기화 section class="container">
	<article class="card"> */

/* 기본설정 초기화 section class="container">
	<article class="card"> */
* {
	padding: 0;
	margin: 0;
}

ul, li {
	list-style: none;
}

.container {
	width: 100%;
	background-color: #f0f0f0; /* 회색 */
	/* padding: 15px 0; */
}

article.card {
	width: 1920px;
	/* margin: 20px auto; */
	margin-bottom: 60px;
	background: #fff;
	border: 1px solid #c0c0c0; /* 회색 */
	border-radius: 3px;
	float: left;
}

/* header / main / <fiiter class="card-comment"> 틀 기본설정 */

/* HEADER 시작 */
article.card header {
	height: 40px;
	padding: 10px;
}

article.card header>div {
	display: inline-block;
	vertical-align: middle; /*수직정렬*/
}

.circle-image {
	height: 100%; /* article.card header 안에 40px의 100% */
	padding: 5px;
	box-sizing: border-box; /*  padding을 주어도 주어진 크기에서 벗어나지 않게 맞춰짐  */
}

.circle-image>img {
	height: 100%;
	border-radius: 50%;
}

.card-username {
	padding: 10px 0;
	font-weight: 900;
	line-height: 20px;
	margin-left: 5px;
	font-size: 13px;
}

.option-more {
	float: right; /* 어울림 */
	padding: 7px;
}

button.transparent-button {
	background-color: transparent; /* 투명 */
	border: 0;
	outline: 0;
	cursor: pointer; /* 마우스 올려두면 손가락 모양으로 변함 */
}
/* 캐러셀 */
article.card main .carousel {
	width: 100%;
	position: relative; /* 절대위치의 기준을 잡아줌 */
}

article.card main .carousel>div { /* 그림 부분 */
	overflow: hidden; /* 옆으로 사진 정렬했을 때 내가 넘기기전에 안 보이게 하는 거*/
}

article.card main .carousel ul {
	width: 10000px; /* 가로 넓이를 충분히 주고 스크립트 구현후 변경(600px * 4) */
}

article.card main .carousel ul>li {
	display: inline-block; /* 이미지 가로로 나열하기 */
}

article.card main .carousel ul>li img {
	margin-right: -5px; /* inline-block 으로 생기는 공백 제거 */
	width: 1920px;
	height: 600px;
}

.slide {
	position: absolute; /* 그림 기준 (릴레이티브는 화면기준..?)*/
	top: 50%;
	transform: translateY(-50%); /* 가운데 선 아래생기는 걸 가운데 선 가운데 생기*/
	padding: 10px;
}

slide img {
	opacity: 0.75;
}

.slide-right {
	right: 0;
}

.carousel footer {
	position: absolute;
	height: 20px;
	text-align: center;
	width: 100%;
	bottom: -20px; /* height: 20px; 으로 넓게 준만큼 위로 올려주기 */
}

.carousel footer div {
	width: 6px;
	height: 6px;
	background-color: #a8a8a8;
	display: inline-block;
	border-radius: 50%;
}

.carousel footer div.active {
	background-color: #0095f6;
}

/* CONTENT 시작 */
.card-container {
	padding: 5px 10px;
}
/* #4 버튼  <div class="card-buttons"> 상세코딩 후*/
.card-buttons {
	padding: 0 5px;
	margin-top: 5px;
}

.card-buttons>div {
	display: inline-block;
	margin-right: 10px;
}

.card-buttons>div.last-card-button {
	float: right;
	margin-right: 0; /*margin-right: 10px;을 0으로  */
}

/* #5 좋아요 : <div class="card-likes">좋아요 999,999개</div> 작성후*/
.card-likes {
	padding: 5px;
	font-size: 13px;
	font-weight: 900;
}

/* #6 본문 : <div class="card-content"> 상세코드 후*/
.card-content {
	padding: 2px 5px;
	font-size: 13px;
}

.card-content li>div {
	padding: 1px 0;
}

.card-content li>div>span {
	font-weight: 900;
}

.card-content li.comment>div>button {
	float: right;
}

.card-content li.comment>div>button>img {
	width: 12px;
	margin-right: 5px;
}

/* #7 시간 : <div class="card-time">7일전</div> 코드 후*/
.card-time {
	padding: 3px;
	font-size: 11px;
	color: #a0a0a0;
}

/* #8 푸터 : <footer class="card-comment"> 상세코드 후*/
footer.card-comment {
	position: relative;
	height: 55px;
	border-top: 1px solid #e0e0e0;
}

footer.card-comment input {
	width: 100%;
	height: 100%;
	border: 0;
	outline: 0;
	padding: 0;
	color: #606060;
}

footer.card-comment>div {
	/* position: relative;를 기준으로 하여 상대적 위치로 지정하므로 카드 영역을 벗어나지 않음 */
	position: absolute;
	right: 10px;
	top: 50%;
	transform: translateY(-50%); /* 게시 수직정렬 */
}

footer.card-comment>div>button {
	color: #0095f6;
	opacity: 0.5;
	padding: 10px 5px;
}

.slide1 {
	height: 600px;
}

.active {
	width: 100%;
}

.social-box {
	background-color: rgba(16, 46, 2, 0.288);
	height: 65px;
	width: 100%;
	/* margin-top: 10px; */
}

.logo {
	width: 40px;
	margin-top: -15px;
}

.logo1 {
	width: 49px;
	margin-top: -10px;
}

.logobox {
	display: flex;
	justify-content: center;
	align-items: center;
}

.logoname {
	text-align: center;
	color: rgb(0, 0, 0);
	text-decoration: none;
	/* text-align: center; */
	width: 100%;
	font-size: 20px;
	padding-top: 15px;
	font-style: bold;
	font-family: 'Nanum Gothic', sans-serif;
}

.api-box {
	display: flex;
}

.crawling {
	width: 550px;
	height: 300px;
	padding: 20px;
	border: 1px solid black;
	margin: 15px;
}

.noitce {
	width: 550px;
	height: 300px;
	padding: 20px;
	border: 1px solid black;
	margin: 15px;
}

.book-api {
	width: 550px;
	height: 300px;
	padding: 20px;
	border: 1px solid black;
	margin: 15px;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/header.jsp" />
	<nav class="navigation">
		<table>
			<div class="navigation table" style="text-align: center;">
				<a class="first-main" href="main.html"> 학사관리
					시스템&ensp;&ensp;&ensp;</a> <a class="second-main" href="Enrolment.html">
					&ensp;&ensp;&ensp;수강신청</a>
			</div>
		</table>
	</nav>
	<section class="container">
		<article class="card">
			<main class="main-contain">
				<footer>
					<div class="cal-box">
						<!--  첨에 뭐라도 보여야하니까 이미지 0 -->
						<div class="carousel" data="0">
							<!-- 0번이미지 -->
							<!-- 캐러셀 들어갈 영역 -->
							<div class="active">
								<ul class="slide1">
									<li><img src="${root}image/univer1.jpg" /></li>
									<li><img src="${root}image/univer2.jpg" /></li>
									<li><img src="${root}image/univer3.jpg" /></li>
									<li><img src="${root}image/univer4.jpg" /></li>
								</ul>
								<div class="slide slide-left" style="display: none">
									<button class="transparent-button">
										<img src="${root}image/icons/arrow-left.png" />
									</button>
								</div>
								<div class="slide slide-right">
									<button class="transparent-button">
										<img src="${root}image/icons/arrow-right.png" />
									</button>
								</div>
							</div>
						</div>
					</div>
				</footer>
				<div class="social-box">
					<div class="logobox">
						<a href="#" class="logoname">인스타그램&ensp;<img class="logo"
							src="${root}image/insta.png" align="middle"></a> <a href="#"
							class="logoname">페이스북&ensp;<img class="logo"
							src="${root}image/facebook.png" align="middle"></a> <a href="#"
							class="logoname">유튜브&ensp;<img class="logo1"
							src="${root}image/youtube.png" align="middle"></a> <a href="#"
							class="logoname">블로그&ensp;<img class="logo"
							src="${root}image/blog.png" align="middle"></a>
					</div>
				</div>
				<div class="api-box">
					<div class="crawling">
						<p>crawling</p>

					</div>
					<div class="noitce">
						<p>notice</p>
					</div>
					<div class="book-api">
						<p>book-api</p>
					</div>
				</div>
			</main>
			<footer class="card-comment"> </footer>


			<script>
				window.addEventListener("load",
						function() {
							var carousels = document
									.getElementsByClassName("carousel"); // 원래는 위에서 부터 읽는데 스크립트를 먼저 읽고나서 carousel과 smoothscroll.min를 읽어달라고 요청하는것.

							//캐러셀 이벤트를 등록하는 로직
							for (var i = 0; i < carousels.length; i++) {
								addEventToCarousel(carousels[i]);
							}
						});

				// 이미지 크기를 받아서 슬라이드 버튼이벤트에 등록하는 함수 구현
				function addEventToCarousel(carouselElem) {
					var ulElem = carouselElem.querySelector("ul"); // ul은 하나니까 그것만 가져오고 
					var liElems = ulElem.querySelectorAll("li"); // li 는 여러개니까 All사용

					//너비 값 조정
					//clientWidth는 요소의 내용 영역의 너비를 나타내는 속성
					var liWidth = liElems[0].clientWidth;
					var adjustedWidth = liElems.length * liWidth;
					ulElem.style.width = adjustedWidth;

					//슬라이즈 버튼 이벤트 등록
					var slideButtons = carouselElem.querySelectorAll(".slide");
					// left/right 두개가 있음므로 모두 적용하기 위해 for문 사용
					for (var i = 0; i < slideButtons.length; i++) {
						slideButtons[i].addEventListener("click",
								createListenerSlide(carouselElem));
					}
				}

				// 이벤트가 발생하는 left/right에 따라 슬라이드 버튼이 작동 되도록 구현하는 함수
				function createListenerSlide(carouselElem) {
					return function(event) {
						// event.currentTarget는 현재 이벤트가 발생한 요소를 나타냄
						// 즉 현재 클릭한 버튼
						var clickedButton = event.currentTarget;

						//값 가져오기(li요소)
						var liElems = carouselElem.querySelectorAll("li");
						//li요소 즉 이미지의 갯수 저장
						var liCount = liElems.length;
						//<div class="carousel" data="0"> -> index값 0 가져오기
						var currentIndex = carouselElem.attributes.data.value;

						//슬라이드 버튼 체크
						if (
						// clickedButton.className.includes("right")는
						// clickedButton 요소의 className 속성에 "right"라는
						// 문자열이 포함되어 있는지를 확인
						// liCount - 1 : 5개일때 0,1,2,3,4 이므로 인덱스번호 -1해야함
						clickedButton.className.includes("right")
								&& currentIndex < liCount - 1) {
							currentIndex++;
							// 현재 그림의 위치(currentIndex)로 이미지 스크롤
							scrollDiv(carouselElem, currentIndex);
						} else if (clickedButton.className.includes("left")
								&& currentIndex > 0) {
							currentIndex--;
						}
						scrollDiv(carouselElem, currentIndex);

						//인디케이터 업데이트
						updateIndicator(carouselElem, currentIndex);
						//슬라이드 버튼 보여줌 여부 업데이트
						updateSlideButtonVisible(carouselElem, currentIndex,
								liCount);

						//새롭게 보여지는 이미지 인덱스 값을 현제 data 값으로 업데이트
						carouselElem.attributes.data.value = currentIndex;
					};
				}
				function scrollDiv(carouselElem, nextIndex) {
					var scrollable = carouselElem.querySelector("div");
					var liWidth = scrollable.clientWidth;
					var newLeft = liWidth * nextIndex; //600*3=1800

					scrollable.scrollTo({
						left : newLeft,
						behavior : "smooth"
					});
				}

				function updateIndicator(carouselElem, currentIndex) {
					var indicators = carouselElem
							.querySelectorAll("footer > div");
					for (var i = 0; i < indicators.length; i++) {
						if (currentIndex == i) {
							indicators[i].className = "active";
						} else {
							indicators[i].className = "";
						}
					}
				}
				function updateSlideButtonVisible(carouselElem, currentIndex,
						liCount) {
					var left = carouselElem.querySelector(".slide-left");
					var right = carouselElem.querySelector(".slide-right");

					if (currentIndex > 0) {
						left.style.display = "block";
					} else {
						left.style.display = "none";
					}

					if (currentIndex < liCount - 1) {
						right.style.display = "block";
					} else {
						right.style.display = "none";
					}
				}

				// window.addEventListener('load', function() {});
				// 페이지가 완전히 로드된 후에 특정 함수를 실행하는 방법.
				// load 이벤트는 모든 리소스(이미지, 스타일시트, 스크립트 등)가 로드되었을 때 발생함.
}
				
				
				
				
			</script>
</body>
</html>
