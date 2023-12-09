<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: songsan
  Date: 12/1/23
  Time: 7:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

  <script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <title>Mandarin</title>

  <style>
    #title1{
      padding-left : 5px;
      padding-bottom: 5px;
      font-size: 25px;
      font-weight: bold;
      color: white;
    }

    #topbar{
      background-color: black;
    }
    .container{
      display: flex;
      justify-content: center;
      background-color: white;
      grid-gap: 20px;
    }
    #block{
      /*margin: 10px;*/
      margin-top: 30px;
      width: 550px;
      height: 500px;
      border: 5px solid rgb(128, 128, 128);
      border-radius: 5%;
      background-color: white;
    }
    #block_img{
      background-color: white;
      height: 200px;
      margin-top: 50px;
      margin-bottom: 50px;
      text-align: center;
    }
    #block_text{
      color: black;
      text-align: center; /* 가운데 정렬에서 좌측 정렬로 변경 */
      padding: 10px; /* 내부 여백을 주어 더 깔끔하게 표시할 수 있습니다. */

    }
    #option{
      float: right;
      width: 150px;
      margin: 5px;
      text-align: center;
      font-size: 20px;
      border: 2px solid rgb(128, 128, 128);
      border-radius: 10px;
    }
    #one_line{
      margin: 10px;
      margin-top: 40px;
      margin-left: 50px;
    }

  </style>
</head>
<body>
<nav class="navbar navbar-light" id="topbar">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <Label id="title1">Mandarin 중고책 거래</Label>
    </a>
    <span>
            <button type="button" class="btn btn-light" onclick="location.href='add'" style="margin-right: 8px">Add</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='login/logout'" style="margin-right: 20px">logout</button>
			</span>
  </div>
</nav>
<%--@elvariable id="boardVO" type="com.example.board"--%>
<form:form modelAttribute="boardVO" method="POST" action="../editok">
  <form:hidden path="seq"/>

  <div class="container">
    <div id="block">
      <div id="block_text">
        <table id ="edit">
          <tr><td>책 제목</td><td><form:input path="title"/> </td></tr>
          <tr><td>책 설명</td><td><form:textarea path="content" cols="50" row="5" /></td></tr>
          <tr><td>저자</td><td><form:input path="writer"/></td></tr>
          <tr><td>출판사</td><td><form:input path="publisher"/> </td></tr><tr>
          <td>발행일</td><td><form:input path="publication_date" type="date" /></td></tr>
          <tr><td>장르</td><td><form:input path="genre"/> </td></tr><tr>
          <td>책 상태</td>
          <td><form:select path="bookCondition">
            <form:option value="깨끗함" label="깨끗함" />
            <form:option value="필기감 있음" label="필기감 있음" />
          </form:select>
          </td>
        </tr>
          <tr><td>판매자</td><td><form:input path="username"/> </td></tr>
          <tr><td>판매자 연락처</td><td><form:input path="phone"/> </td></tr>
          <tr><td>가격</td><td><form:input path="price"/> </td></tr>
          <tr><td>직접 거래 가능 여부</td><td><label><form:checkbox path="direct" value="1" /> 가능</label></td></tr>

        </table>

        <input type="submit" value="수정하기"/>
        <button type="button" onclick="location.href='../list'">목록보기</button>
      </div>
    </div>
  </div>
</form:form>
</body>
</html>