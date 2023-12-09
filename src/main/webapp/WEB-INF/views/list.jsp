<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: songsan
  Date: 12/1/23
  Time: 5:03 PM
  To change this template use File | Settings | File Templates.
--%>
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
            flex-wrap: wrap;
            background-color: white;
            grid-gap: 20px;
        }
        #block{
            /*margin: 10px;*/
            margin-top: 30px;
            width: 300px;
            height: 300px;
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
            text-align: center;

        }
        #option{
            float: right;
            width: 150px;
            margin: 5px;
            text-align: center;
            font-size: 16px;
            border: 2px solid rgb(128, 128, 128);
            border-radius: 10px;
        }
        #one_line{
            margin: 10px;
            margin-top: 40px;
            margin-left: 50px;}
    </style>
</head>
<body>
<nav class="navbar navbar-light" id="topbar">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <Label id="title">Mandarin 중고책 거래</Label>
        </a>
        <span>
            <button type="button" class="btn btn-light" onclick="location.href='add'" style="margin-right: 8px">추가하기</button>
            <button type="button" class="btn btn-secondary" onclick="location.href='login/logout'" style="margin-right: 20px">logout</button>
			</span>
    </div>
</nav>
<div class="container">
    <c:forEach items="${list}" var="u">
        <div id="block">
            <div id="block_text">
                <br>
                <h4 style="font-size: 18px;"><a href="view/${u.seq}">${u.title}</a></h4>
                <h4 style="font-size: 16px;">저자 : ${u.writer}</h4>
                <h4 style="font-size: 16px;">가격 : ${u.price}원</h4>
                <h4 style="font-size: 16px;">책 상태 : ${u.bookCondition}</h4>
                <h4 style="font-size: 16px;">판매자 : ${u.username}</h4>
                <h4 style="font-size: 16px;">연락처 : ${u.phone}</h4>
                <h4 style="font-size: 16px;">직접거래 가능여부 : ${u.direct}</h4>
                <h4 style="font-size: 14px;"><a href="editform/${u.seq}">수정하기</a></h4>
                <h4 style="font-size: 14px;"><a href="javascript:delete_ok('${u.seq}')">삭제하기</a></h4>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
