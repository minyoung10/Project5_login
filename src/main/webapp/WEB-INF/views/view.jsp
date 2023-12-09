<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
      height: 550px;
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
<table modelAttribute="boardVO">

  <div class="container">
    <div id="block">
      <div id="block_text">
        <br><br><br>
        <h2 style="font-size: 24px;">${boardVO.title}</h2>
        <h4 style="font-size: 16px;">${boardVO.content}</h4>
        <h4 style="font-size: 16px;">저자 | ${boardVO.writer}</h4>
        <h4 style="font-size: 16px;">출판사 | ${boardVO.publisher}</h4>
        <h4 style="font-size: 16px;">발행일 | ${boardVO.publication_date}</h4>
        <h4 style="font-size: 16px;">장르 | ${boardVO.genre}</h4>
        <h4 style="font-size: 16px;">책 상태 | ${boardVO.bookCondition}</h4>
        <h4 style="font-size: 16px;">가격 | ${boardVO.price}원</h4>
        <h4 style="font-size: 16px;">판매자 | ${boardVO.username}</h4>
        <h4 style="font-size: 16px;">판매자 번호 | ${boardVO.phone}</h4>
        <h4 style="font-size: 16px;">직접거래 가능여부 | ${boardVO.direct}</h4>
        <h4 style="font-size: 16px;">등록 일자 | ${boardVO.regdate}</h4>

      </div>
    </div>
  </div>
</table>


<P> <a href="../list">목록보기</a></P>
</body>
</html>
