<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
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
	max-width: 1920px;
	min-width: 800px;
	display: flex;
}

.aside {
	min-width: 150px;
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

table {
width: 100%;
	
	height: 100%;
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
width: 5%;
	text-align: center;
	word-break:break-all;
}

td>a {
	text-decoration: none;
	color: blue;
	font-weight: 700;
}

.classTimeForm-contain {
	width: 200px;
	border-right: 2px solid rgb(200, 200, 200);
	padding: 15px;
	padding-top: 50px;
}

.classTimeForm-info {
	font-size: 19px;
	padding: 10px;
	border-bottom: 1px solid black;
	 display: flex;
        justify-content: center;
        align-items: center;
}

.classTimeForm-info>div {
	padding: 12px;
}

.classTimeForm-info>div>span {
	margin-right: 20px;
}

.classTimeForm-box {
	font-size: 19px;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 15px;
}

select {
	width: 100px;
	text-align: center;
	font-size: 19px;
	margin-right: 15px;
}

.inquiry-button {
	width: 65px;
}

.classTimeTable-contain {
	width: 90%;
	height: 90vh;
}
</style>
</head>
<body>
	<header class="header">
		<img src="${root}image/jonggak_un_full_logo_green.png" />
		<div>
			<a href="/main">Ȩ������</a> <a href="${root}/login">�α���</a>
		</div>
	</header>
	<main class="gradeCheck-main">
		<aside class="aside">
			<div>
				<a href="${root }professor/lectureCheck" class="nav-link">���� ����
					�� Ȯ��</a>
			</div>
			<div>
				<a href="${root }professor/pro_tt" class="nav-link">���� �ð�ǥ</a>
			</div>
			<div>
				<a href="${root }professor/gradeInsert" class="nav-link">���������Է�</a>
			</div>
		</aside>
		<section class="classTimeTable-contain">
			<div>
				<div class="classTimeForm-info">
					<div>
						<span>�̸� : �����</span><span>�й� : 20230101</span><span>�а� :
							���������а�</span>
					</div>
				</div>
				<div class="classTimeForm-box">
					<div>
						���� : <select id="year">
							<option value="2021">2021</option>
							<option value="2022">2022</option>
							<option value="2023">2023</option>
							<option value="2024">2024</option>
							<option value="2025">2025</option>
						</select>
					</div>
					<div>
						�б� : <select id="cla_sem">
							<option value="1">1</option>
							<option value="2">2</option>
						</select>
					</div>
					<button onclick="timeTableBtn()">��ȸ</button>
				</div>
			</div>
			<table class="classTimeTable">
				<tr>
					<th></th>
					<th>��</th>
					<th>ȭ</th>
					<th>��</th>
					<th>��</th>
					<th>��</th>
				</tr>
				<tr>
					<td>1</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>2</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>3</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>4</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>5</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>6</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>7</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>8</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>9</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>10</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</table>
		</section>
	</main>
	<script>
	
		
	
		const timeTableBtn = () => {
			
			let cla_sem = $("#cla_sem option:selected").val();
			let year = $("#year option:selected").val();
/* 			$("#����Ʈ�ڽ�ID option:selected").val(); */
			console.log("cla_sem : ", cla_sem);
			console.log("year : ", year);
			
			const req = {
					year : year,
					cla_sem : cla_sem
			}
			
			$.ajax({
		        url: '${pageContext.request.contextPath }/student/timeTable',
		        method: 'POST',
		        contentType: 'application/json',
		        data: JSON.stringify(req),
		        success: (data) => {
		        	console.log(data)
		        	let htmlArray =  [
		    	        ["<tr><th></th>","<th>��</th>","<th>ȭ</th>","<th>��</th>","<th>��</th>","<th>��</th></tr>"],
		    	        ["<tr><td>1</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>2</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>3</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>4</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>5</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>6</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>7</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>8</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>9</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	        ["<tr><td>10</td>","<td></td>","<td></td>","<td></td>","<td></td>","<td></td></tr>"],
		    	    ]
		    	
		        	data.forEach((item, index) => {
		        		
		        		let startTimeData = item.cla_open;
			    		let endTimeData = item.cla_close;
			    		
			    		let startTime = 0;
			    		let endTime = 0;
			    		
			    		let dayData = item.cla_week;
			    		let day = 0;
			    		
			    		let array = [];
			    		
			    		if(dayData === "��") {
			    			day = 1;
			    		}else if(dayData === "ȭ") {
			    			day = 2;
			    		}else if(dayData === "��") {
			    			day = 3;
			    		}else if(dayData === "��") {
			    			day = 4;
			    		}else if(dayData === "��") {
			    			day = 5;
			    		}
			    		
			    		
			    		if(startTimeData === "09:00") {
			    			startTime = 1;
			    		}else if (startTimeData === "10:00") {
			    			startTime = 2;
			    		}else if (startTimeData === "11:00") {
			    			startTime = 3;
			    		}else if (startTimeData === "12:00") {
			    			startTime = 4;
			    		}else if (startTimeData === "13:00") {
			    			startTime = 5;
			    		}else if (startTimeData === "14:00") {
			    			startTime = 6;
			    		}else if (startTimeData === "15:00") {
			    			startTime = 7;
			    		}else if (startTimeData === "16:00") {
			    			startTime = 8;
			    		}else if (startTimeData === "17:00") {
			    			startTime = 9;
			    		}else if (startTimeData === "18:00") {
			    			startTime = 10;
			    		}
			    		
			    		
			    		if(endTimeData === "10:00") {
			    		    endTime = 1;
			    		}else if (endTimeData === "11:00") {
			    		    endTime = 2;
			    		}else if (endTimeData === "12:00") {
			    		    endTime = 3;
			    		}else if (endTimeData === "13:00") {
			    		    endTime = 4;
			    		}else if (endTimeData === "14:00") {
			    		    endTime = 5;
			    		}else if (endTimeData === "15:00") {
			    		    endTime = 6;
			    		}else if (endTimeData === "16:00") {
			    		    endTime = 7;
			    		}else if (endTimeData === "17:00") {
			    		    endTime = 8;
			    		}else if (endTimeData === "18:00") {
			    		    endTime = 9;
			    		}else if (endTimeData === "19:00") {
			    		    endTime = 10;
			    		}
			    		
			    		if(startTime !== endTime) {
			    			for(let i = startTime; i <= endTime; i++) {
			    				array.push(i);
			    			}
			    			
			    		}else if (startTime === endTime ) {
			    			array.push(startTime);
			    		}
			    		
			    		
			    		console.log(array.length)
			    		
			    		htmlArray[array[0]][day] = "<td rowspan='"+ array.length +"'>"+item.cla_name+"</td>"
			    		
			    		if(array.length > 1) {
			    			for(let i = 1; i < array.length; i++) {
			    				htmlArray[array[i]][day] = "";
			    			}
			    		
			    		}
		        	})
		        	
		        	
		    		
		    		
		    		
		    		$(".classTimeTable").html(htmlArray.join());
		        	
		       
				
		        },
		        error: function(xhr, status, error) {
		            // AJAX ��û�� ������ ����� ó�� �ڵ�
		            console.error('AJAX ��û ����:', status, error)
		        }
		        
		        });
		}
	
	
		
	
	
		
	
		
	</script>
</body>
</html>
