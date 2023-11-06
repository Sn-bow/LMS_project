<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<style>
body {
	margin: 0;
	padding: 0;
	background: linear-gradient(155deg, rgba(0, 128, 0, 0.2),
		rgba(0, 128, 0, 0.5) 60%);
}

.main {
	width: 100%;
	height: 100%;
}

.contents-box {
	width: 600px;
	height: 800px;
	margin: 100px auto;
	box-shadow: 0 0 12px rgba(0, 128, 0);
	border-radius: 8px;
	padding: 15px 20px;
	background-color: aliceblue;
}

.information-box {
	display: flex;
	justify-content: space-between;
	align-items: center;
	margin-top: 15px;
	margin-bottom: 15px;
	padding: 20px;
}

.question {
	margin-bottom: 30px;
}

.talk {
	width: 85%;
	height: 80px;
	padding: 10px;
	resize: none;
}

.confirm-box {
	width: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.confirm-box>input[type="submit"] {
	border-radius: 100%;
	width: 130px;
	height: 80px;
}

.confirm-box>input[type="submit"]:hover {
	cursor: pointer;
}
</style>
</head>
<body>
	<main class="main">
		<div class="contents-box">
			<div class="information-box">
				<h1 class="title">강의평가</h1>
				<div class="student-info">
					<div>강의번호 : ${lectur.cla_id}</div>
					<div>교과목명 : ${lectur.cla_name}</div>
					<div>교수명 : ${lectur.pro_name}</div>
				</div>
			</div>
			<form action="#" method="post">
				<div class="question-own-box question">
					<h3>Q1. 나는 이 교과목에 흥미를 가지고 적극적으로 참여하였다.</h3>
					<input type="radio" id="actively1" name="item1" value="1" /> <label
						for="actively1">1</label> <input type="radio" id="actively2"
						name="item1" value="2" /> <label for="actively2">2</label> <input
						type="radio" id="actively3" name="item1" value="3" /> <label
						for="actively3">3</label> <input type="radio" id="actively4"
						name="item1" value="4" /> <label for="actively4">4</label> <input
						type="radio" id="actively5" name="item1" value="5" /> <label
						for="actively5">5</label>
				</div>
				<div class="question-two-box question">
					<h3>Q2. 교수님은 규정된 수업시간을 준수하였습니까?</h3>
					<input type="radio" id="time1" name="item2" value="1" /> <label
						for="time1">1</label> <input type="radio" id="time2" name="item2"
						value="2" /> <label for="time2">2</label> <input type="radio"
						id="time3" name="item2" value="3" /> <label for="time3">3</label>
					<input type="radio" id="time4" name="item2" value="4" /> <label
						for="time4">4</label> <input type="radio" id="time5" name="item2"
						value="5" /> <label for="time5">5</label>
				</div>
				<div class="question-three-box question">
					<h3>Q3. 교수님은 수업에 학생의 관심과 참여를 유도하기 위해 노력하였습니까?</h3>
					<input type="radio" id="interest1" name="item3" value="1" /> <label
						for="interest1">1</label> <input type="radio" id="interest2"
						name="item3" value="2" /> <label for="interest2">2</label> <input
						type="radio" id="interest3" name="item3" value="3" /> <label
						for="interest3">3</label> <input type="radio" id="interest4"
						name="item3" value="4" /> <label for="interest4">4</label> <input
						type="radio" id="interest5" name="item3" value="5" /> <label
						for="interest5">5</label>
				</div>
				<div class="question-four-box question">
					<h3>Q4. 강의내용이 평가에 적절히 반영되었습니까?</h3>
					<input type="radio" id="accrodingly1" name="item4" value="1" /> <label
						for="accrodingly1">1</label> <input type="radio" id="accrodingly2"
						name="item4" value="2" /> <label for="accrodingly2">2</label> <input
						type="radio" id="accrodingly3" name="item4" value="3" /> <label
						for="accrodingly3">3</label> <input type="radio" id="accrodingly4"
						name="item4" value="4" /> <label for="accrodingly4">4</label> <input
						type="radio" id="accrodingly5" name="item4" value="5" /> <label
						for="accrodingly5">5</label>
				</div>
				<div class="question-for-prf-box question">
					<h3>Q5. 교수님께 하고싶은말이 있다면 적어주세요(최대400자)</h3>
					<textarea class="talk" maxlength="400" name="feedback"></textarea>
				</div>
				<div class="confirm-box">
					<input type="submit" value="제출하기" />
				</div>
			</form>
		</div>
	</main>
</body>
</html>
