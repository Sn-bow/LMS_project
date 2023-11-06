<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<title>grade check</title>
<style>
body {
	margin: 0;
	padding: 0;
}

.header {
	width: 100%;
	height: 100px;
	background: linear-gradient(155deg, rgba(0, 128, 0, 0.2),
		rgba(0, 128, 0, 0.5) 60%);
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

.gradeCheck-main {
	width: 100%;
	display: flex;
}

.aside {
	width: 150px;
	height: 100vh;
	border-right: 1px solid black;
	padding: 15px;
	background: rgba(0, 0, 0, 0.9);
	border-right: 1px solid rgb(130, 130, 130);
}

.aside>div {
	border-bottom: 1px solid rgb(130, 130, 130);
	height: 50px;
	margin-bottom: 10px;
}

.aside>div:nth-child(1) {
	margin-top: 25px;
}

.aside>div>a {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	text-decoration: none;
	color: rgba(240, 240, 240);
	transition: all 0.3s ease-in-out;
}

.aside>div>a:hover {
	color: rgba(0, 0, 0, 0.9);
	background-color: rgba(240, 240, 240);
	transition: all 0.3s ease-in-out;
}

.inquiry-contain {
	width: 100%;
	height: 100%;
	padding: 35px;
}

.student-big-box {
	width: 100%;
	height: 100%;
	border-bottom: 1px solid rgb(200, 200, 200);
	padding-bottom: 20px;
}

h3 {
	font-size: 22px;
}

.student-info-box {
	width: 100%;
	display: flex;
}

.student-info-box {
	font-size: 18px;
	font-weight: 600;
}

.student-info-box>div:nth-child(2) {
	margin-left: 15px;
}

.student-info-box>div>span {
	padding: 6px;
	border: 2px solid gray;
	border-radius: 5px;
}

.class-box {
	width: 100%;
	height: 100%;
}

.class-box>table {
	width: 100%;
	border: 1px solid black;
	border-collapse: collapse;
}

table {
	width: 100%;
	border-collapse: collapse;
}

th, td {
	border: 2px solid rgb(220, 220, 220);
	padding: 10px;
}

th {
	border-top: 3px solid rgba(0, 128, 0, 0.7);
	background-color: rgba(0, 128, 0, 0.3);
}

td {
	text-align: center;
}

td>a {
	text-decoration: none;
	color: blue;
	font-weight: 700;
}

.gradeBigBox {
	width: 100%;
	margin-top: 15px;
	padding: 25px;
}
</style>
</head>
<body>
	<c:import url="/WEB-INF/views/layout/header.jsp" />
	<main class="gradeCheck-main">
		<c:import url="/WEB-INF/views/layout/aside.jsp" />
		<section class="gradeBigBox">
			<div>
				<h3>년도/학기별취득학점</h3>
				<table>
					<tr>
						<th rowspan="2">학년도</th>
						<th rowspan="2">학기</th>
						<th colspan="3">신청학점</th>
						<th colspan="3">취득학점</th>
						<th rowspan="2">평점</th>
						<th rowspan="2">상세보기</th>
					</tr>
					<tr>
						<th>전공</th>
						<th>교양</th>
						<th>총신청학점</th>
						<th>전공</th>
						<th>교양</th>
						<th>총취득학점</th>
					</tr>
					<c:forEach items="${selectYearGradeList}" var="selectYearGrade" varStatus="state">
						<tr>
							<td>${selectYearGrade.year}</td>
							<td>${selectYearGrade.cla_sem}</td>
							<td>${selectYearGrade.major}</td>
							<td>${selectYearGrade.notMajor}</td>
							<td>${selectYearGrade.major + selectYearGrade.notMajor}</td>
							<td>${selectYearGrade.realMajor}</td>
							<td>${selectYearGrade.realNotMajor}</td>
							<td>${selectYearGrade.realMajor + selectYearGrade.realNotMajor}</td>
							<td>0.0</td>
							<td><button class="gradeInquiry"
									value1="${selectYearGrade.cla_sem}"
									value2="${selectYearGrade.year}" onclick="search(${selectYearGrade.cla_sem}, ${selectYearGrade.year})">조회</button></td>
						</tr>
					</c:forEach>
					<tr>
						<th colspan="2">총합계</th>
						<th>15</th>
						<th>9</th>
						<th>24</th>
						<th>6</th>
						<th>9</th>
						<th>15</th>
						<th>평균평점</th>
						<th>1.67</th>
					</tr>
				</table>
			</div>
			<div class="choseGradeBox">
				<h3>-년 -학기 성적조회</h3>
				<table>
					<tr>
						<th>학년도</th>
						<th>학기</th>
						<th>강의번호</th>
						<th>강의명</th>
						<th>이수구분</th>
						<th>학점</th>
						<th>성적</th>
						<th>등급</th>
					</tr>
				</table>
			</div>
		</section>
	</main>
	<script>
	
		const search = (claSem, year) => {
			/* let test = event.value1
			console.log(test) */
			/* let claSem = $(".gradeInquiry").attr("value1")
			let year = $(".gradeInquiry").attr("value2") */
			
			console.log(claSem)
			console.log(year)
			
			const req = {
				cla_sem : claSem,
				year : year
			}
			
			$.ajax({
                url: '${pageContext.request.contextPath }/student/allGradeInquiry',
                method: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(req),
                success: (data) => {
                	console.log("data : ", data)
                	let html = "";
				html += "<h3>" + year + "년" + claSem + "학기 성적조회" + "</h3>"
				html += "<table>"
				html += "<tr>"
				html += "	<th>학년도</th>"
				html += "	<th>학기</th>"
				html += "	<th>강의번호</th>"
				html += "	<th>강의명</th>"
				html += "	<th>이수구분</th>"
				html += "	<th>학점</th>"
				html += "	<th>성적</th>"
				html += "	<th>등급</th>"
				html += "</tr>"
				$.each(data, (index, item) => {
					html += "<tr>"
					html += "<td>" + year + "</td>"
					html += "<td>" + claSem + "</td>"
					html += "<td>" + item.cla_id + "</td>"
					html += "<td>" + item.cla_name + "</td>"
					/* if start */
					html += "<td>" + "전공" + "</td>"
					/* if end */
					html += "<td>" + item.cla_grade + "</td>"
					html += "<td>" + "2.5" + "</td>"
					html += "<td>" + "C+" + "</td>"
					html += "</tr>"
				})
					
				html += "</table>"
                	
                	$(".choseGradeBox").html(html);
                },
                error: function(xhr, status, error) {
                    // AJAX 요청이 실패한 경우의 처리 코드
                    console.error('AJAX 요청 실패:', status, error)
                }
                
                });
	
                
		}
		
	</script>
</body>
</html>
