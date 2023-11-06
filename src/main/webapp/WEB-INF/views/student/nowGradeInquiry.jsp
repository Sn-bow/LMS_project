<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://code.jquery.com/jquery-3.6.0.min.js"
      integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
      crossorigin="anonymous"
    ></script>
    <title>grade check</title>
    <style>
      body {
        margin: 0;
        padding: 0;
      }
      .header {
        width: 100%;
        height: 100px;
        background: linear-gradient(
          155deg,
          rgba(0, 128, 0, 0.2),
          rgba(0, 128, 0, 0.5) 60%
        );
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid rgb(130, 130, 130);
      }
      .header > img {
        width: 180px;
        height: 65px;
        margin-left: 15px;
      }
      .header > div {
        margin-right: 15px;
      }

      .header > div > a {
        font-size: 20px;
        font-weight: 600;
        margin: 10px;
        text-decoration: none;
        color: rgba(0, 0, 0, 0.6);
      }

      .header > div > a:hover {
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
      .aside > div {
        border-bottom: 1px solid rgb(130, 130, 130);
        height: 50px;
        margin-bottom: 10px;
      }

      .aside > div:nth-child(1) {
        margin-top: 25px;
      }

      .aside > div > a {
        width: 100%;
        height: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        text-decoration: none;
        color: rgba(240, 240, 240);
        transition: all 0.3s ease-in-out;
      }

      .aside > div > a:hover {
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

      .student-info-box > div:nth-child(2) {
        margin-left: 15px;
      }

      .student-info-box > div > span {
        padding: 6px;
        border: 2px solid gray;
        border-radius: 5px;
      }
      .class-box {
        width: 100%;
        height: 100%;
      }
      .class-box > table {
        width: 100%;
        border: 1px solid black;
        border-collapse: collapse;
      }

      table {
        width: 100%;
        border-collapse: collapse;
      }

      th,
      td {
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

      td > a {
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
      <c:import url="/WEB-INF/views/layout/aside.jsp"/>
      <section class="gradeBigBox">
        <div>
          <h3>학생정보</h3>
          <table>
            <tr>
              <th>이름</th>
              <td>김수진</td>
              <th>학번</th>
              <td>12345</td>
              <th>학과</th>
              <td>경찰행정학과</td>
              <th>학년</th>
              <td>2</td>
              <th>학기</th>
              <td>3</td>
            </tr>
          </table>
        </div>
        <div>
          <h3>금학기 성적조회</h3>
          <table>
            <tr>
              <th>과목명</th>
              <th>교수명</th>
              <th>이수구분</th>
              <th>학점</th>
              <th>출석</th>
              <th>중간</th>
              <th>기말</th>
              <th>과제</th>
              <th>점수</th>
              <th>등급</th>
            </tr>
            <tr>
              <td>컴퓨터 수학</td>
              <td>박혜성</td>
              <td>전공</td>
              <td>3</td>
              <td>0</td>
              <td>0</td>
              <td>0</td>
              <td>0</td>
              <td>0.0</td>
              <td>F</td>
            </tr>
          </table>
        </div>
      </section>
    </main>
  </body>
</html>
