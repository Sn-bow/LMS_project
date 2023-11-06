<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    </style>
  </head>
  <body>
    <header class="header">
      <img src="${root}image/jonggak_un_full_logo_green.png" />
      <div>
        <a href="#">홈페이지</a>
        <a href="#">로그인</a>
      </div>
    </header>
    <nav class="navigation"></nav>
    <main class="main-contain">
      <div class="cal-box"></div>
      <div class="social-box"></div>
      <div class="api-box">
        <div class="crawling"></div>
        <div class="noitce"></div>
        <div class="book-api"></div>
      </div>
    </main>
  </body>
</html>
