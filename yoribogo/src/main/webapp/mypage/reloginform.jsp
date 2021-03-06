<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
      <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   <script src="../script/jquery-3.3.1.min.js" type="text/javascript"></script>
  <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/relogin.css">
   <title>Document</title>

</head>
<body>
    <jsp:include page="../include/menu.jsp"/>
    
  
  <span id="header">
          <div>
          <img id="profile" src="${pageContext.request.contextPath}${user.memProfile}"></img>
          <h2 id="id"> ${user.memId}</h2>
          <c:if test="${userRecipe.size() > 0}">
	          <p id="countRecipe">${userRecipe.size()}개의 레시피를 만듬</p>		
		  </c:if>
		  <c:if test="${userRecipe.size() == 0}">
		  	  <p id="countRecipe">아직 레시피를 등록하지 않으셨습니다!</p>		
		  </c:if>
      </div>
</span>
<div id="body">
        <div class="wrapper">
                <div class="container">
                    <h4>회원 정보 수정</h4>
                    <form class="form" action='<c:url value="/mypage/relogin.do"/>'>
                        <p>${user.memId}</p>
                        <input type="password" placeholder="비밀번호" name="pass">
                        <input type="hidden" value="${user.memId}" name="id">
                        <button id="login-button">회원정보수정</button>
                    </form>
                    <script>
               		$("input[name='pass']").on("keyup",function(){			
               			if(this == ""){
               				return;            				
               			}
               			if($(this).val().length >= 13) {

               	            $(this).val($(this).val().substring(0, 13));

               	        }
               			
               			});
                    </script>
                    </div>
                </div>                  
</div>
      

<footer style="width: 100%; background: gray; height: 300px; color: white;">
    <div id="footer">
        <img src = "${pageContext.request.contextPath}/images/logo-vertical-300px.png" style="width: 80px;"/>
        <p>
            YORIBOGO Receipes
            <br>개인정보관리책임자: 김우중
            <br>고객센터: 010-4955-6029(평일:13:30 ~ 14:30 토요일:12:00 ~ 12:01) FAX: 02-000-000 Email:xxxxx@yoribogo.com
            <br>
            <br>
            copyright @ YORIBOGO Corp. All Right Reserved.
          </p>
    </div>  
</footer>

</body>
</html>