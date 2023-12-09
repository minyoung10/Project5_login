<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <script src="https://kit.fontawesome.com/e879e74340.js" crossorigin="anonymous"></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

  <title>Mandarin</title>

  <style>
    #title{
      padding-left : 5px;
      padding-bottom: 5px;
      font-size: 25px;
      font-weight: bold;
      color: black;
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
      <Label id="title">Mandarin 중고책 거래</Label>
    </a>
  </div>
</nav>
<form action="addok" method="post">
  <div class="container">
    <div id="block">
      <div id="block_text">
        <table id="edit">
          <tr><td>책 제목</td><td><input type="text" name="title"/></td></tr>
          <tr><td>책 설명</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
          <tr><td>저자</td><td><input type="text" name="writer"/></td></tr>
          <tr><td>출판사</td><td><input type="text" name="publisher"/></td></tr> <tr>
          <td>발행일</td><td><input type="date" name="publication_date" /></td></tr>
          <tr>
            <td>장르</td>
            <td>
              <label><input type="radio" name="genre" value="전공서적"/>전공서적</label>
              <label><input type="radio" name="genre" value="교양서적"/>교양서적</label>
              <label><input type="radio" name="genre" value="기독서적"/>기독서적</label>
            </td>
          </tr>
          <tr>
            <td>책 상태</td>
            <td>
              <select name="bookCondition">
                <option value="깨끗함">깨끗함</option>
                <option value="필기감 있음">필기감 있음</option>
              </select>
            </td>
          </tr>
          <tr><td>판매자</td><td><input type="text" name="username"/></td></tr>
          <tr><td>판매자 연락처</td><td><input type="text" name="phone"/></td></tr>
          <tr><td>가격</td><td><input type="text" name="price"/></td></tr>
          <tr><td>직접 거래 가능 여부</td><td><label><input type="checkbox" name="direct" value="1"/> 가능</label></td>
          </tr>
        </table><br>
        <button type="button" onclick="location.href='list'">목록보기</button>
        <button type="submit">등록하기</button>
      </div>
    </div>
  </div>
</form>
</body>
</html>
