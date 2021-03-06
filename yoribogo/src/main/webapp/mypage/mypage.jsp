<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta http-equiv="X-UA-Compatible" content="ie=edge">
   <script src="../script/jquery-3.3.1.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <link rel="stylesheet" href="../css/mypage.css">
   <title>my page</title>

</head>
<body>
   
	<jsp:include page="/include/menu.jsp"/>
    
  
  <span id="header">
      <div>
      	  <form action="<c:url value="/mypage/reloginform.do"/>">
          	
      	  	<button><div id="settingProfile" style="cursor: pointer;"><i class="fas fa-cog fa-3x"></i></div></button>
      	  </form>
          <img id="profile" src="${pageContext.request.contextPath}${user.memProfile}"></img>
          <h2 id="id"> ${user.memId}</h2>
          <c:if test="${userRecipe.size() > 0}">
	          <p id="countRecipe">${userRecipe.size()}개의 레시피를 만듬</p>		
		  </c:if>
		  <c:if test="${userRecipe.size() == 0}">
		  	  <p id="countRecipe">아직 레시피를 등록하지 않으셨습니다!</p>		
		  </c:if>
		  <br>
		  <div id="interest"><h2>*관심사*</h2></div>
		  <div id="interestlist"><h2>${user.memFavor1}  ${user.memFavor2}  ${user.memFavor3}</h2></div>
      </div>
      
    </span>

    <div>
      <div id = "recent">
        
        <h3 id="recentTitle">작성 게시물</h3>

          <p>총 ${userRecipe.size()}개의 게시물</p>
          <hr>
          <div class="recentPost">
            <div class="recentPost_body">
			<c:if test="${userRecipe.size() > 0}">
            	<c:forEach var="recipe" items="${userRecipe}" begin="0" end="2">
                	<div class="profileBlock_body_inner" style="background-image: url('${pageContext.request.contextPath}${recipe.photo}'); background-size: cover;">
                  		<div  class="innerWrapper">  
                  		<img id = "profileBlock_body_inner_profile" src="${pageContext.request.contextPath}${user.memProfile}"/>  
		                   <div class="innerWrapper_inner">
		                   	 <input type="hidden" name="likeRecipeNo" value="${likeRecipe.recipeNo}">
        		             <div><fmt:formatDate value="${recipe.regDate}" pattern="MM.dd hh:mm" /></div>
                 		     <div>${user.memId}</div>
                     		 <div><i class="fas fa-star"></i>${recipe.grade}/5</div>
                    	   </div>
                    		 <div class="paragraph">${recipe.summary}</div>
                  		</div>
                	</div>
                </c:forEach>
             <div id="moreInfo" style="cursor: pointer;" onclick="location.href='/yoribogo/recipe/list.do'">
                 <i class="fas fa-chevron-right"></i>
             </div>
		  	</c:if>

  
            </div>
        </div>
      </div>

      <div id = "like"> 
        <h3 id= "likeTitle">총 ${userLikeRecipe.size()}개의 게시글에 좋아요를 눌렀습니다.</h3>

        <div class="whetherRecommendation">
          <div class="whetherRecommendation_body">
         <!-- 
         ${PageContext.request.contextPath}${likeRecipe.recipePhoto}
          -->
         <c:if test="${userLikeRecipe.size() > 0}">
         	<c:forEach var="likeRecipe" items="${userLikeRecipe}">
              <div class="profileBlock_body_inner" style="background-image: url(/yoribogo/${PageContext.request.contextPath}${likeRecipe.recipePhoto}); background-size: cover;">
                  <div  class="innerWrapper">  
                  <img id = "profileBlock_body_inner_profile" src="/yoribogo/${PageContext.request.contextPath}${likeRecipe.memProfile}"/>  
                   <div class="innerWrapper_inner">
                     <input type="hidden" name="likeRecipeNo" value="${likeRecipe.recipeNo}">
                     <div><fmt:formatDate value="${likeRecipe.recipeRegDate}" pattern="MM.dd hh:mm" /></div>
                     <div>${likeRecipe.memId}</div>
                     <div><i class="fas fa-star"></i>${likeRecipe.recipeGrade}/5</div>
                    </div>
                    <div class="paragraph">${likeRecipe.recipeSummary}</div>
                  </div>
                </div>
            </c:forEach>
		  </c:if>
                
                  
                </div>
              </div>
      </div>
       <c:if test="${userLikeRecipe.size() ne 0}">
            <div id="moreInfo2"style="cursor: pointer;" onclick="location.href='/yoribogo/recipe/list.do'">
          <i class="fas fa-chevron-down fa-2x"></i>
      		</div>
        </c:if>
        <script>
      

       
          </script>
      

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