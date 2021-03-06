<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
   <title>Document</title>
   
</head>
<body>
	<jsp:include page="/include/menu.jsp"/>
    
  
  <div>
      <div id = "main1">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                   <ol class="carousel-indicators">
                     <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                     <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                   </ol>
                   <div class="carousel-inner">
                     <div class="carousel-item active">
                       <img class="d-block w-100" src="https://www.sbs.com.au/food/sites/sbs.com.au.food/files/IMG_1105.jpg
                       " alt="첫번째 슬라이드">
                       <div class="carousel-caption d-none d-md-block">
                          <h1>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia ad mollitia impedit ut ab facilis soluta quidem labore dolore fugit!</h1>
                          <p>- Augustinus -</p>
                      </div>
                    </div>
                    <div class="carousel-item">
                      <img class="d-block w-100" src="http://premiermeatcompany.com/wp-content/uploads/2015/10/WebRes_Chicken_05-1.jpg" alt="두번째 슬라이드">
                             <div class="carousel-caption d-none d-md-block">
                                <h1>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quasi exercitationem quibusdam quisquam. Atque, odio illo qui soluta assumenda quae obcaecati?
                                </h1>
                                <p>- Johann Wolfgang von Goethe -</p>
                            </div>
                          </div>
                          <div class="carousel-item">
                            <img class="d-block w-100" src="https://www.seriouseats.com/recipes/../images/2015/02/20150218-gigantes-bean-salad-2.jpg" alt="세번째 슬라이드">
                                   <div class="carousel-caption d-none d-md-block">
                                      <h1>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nesciunt, illum. Unde quasi vero assumenda accusamus sed distinctio eaque exercitationem ut.</h1>
                                      <p>- Hans Christian Andersen -</p>
                                  </div>
                     </div>
                   </div>
                   <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                     <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                     <span class="sr-only">이전</span>
                   </a>
                   <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                     <span class="carousel-control-next-icon" aria-hidden="true"></span>
                     <span class="sr-only">다음</span>
                   </a>
         </div>           
 
      </div>


      <div id = "main2">
        
        <h3 id="main2Title">최근 게시물</h3>

          <p>최근에 등록된 레시피를 찾아보세요.</p>
          <hr>
          <div class="recentPost" >
              <div class="recentPost_body">
              <!-- 3개가 필요함 -->
               <c:forEach var="rec" items="${recipe}" begin="0" end="2">
                  <div class="profileBlock_body_inner"  onclick="location.href='/yoribogo/recipe/detail.do?no=${rec.no}';" style="background-image: url('${pageContext.request.contextPath}${rec.photo}'); background-size: cover;">
                    <div  class="innerWrapper">
                    <img id = "profileBlock_body_inner_profile" src="${pageContext.request.contextPath}${rec.profile}"/>  
                     <div class="innerWrapper_inner">
                       <div><fmt:formatDate value="${rec.regDate}" pattern="yy.MM.dd" /></div>
                       <div>${rec.memId}</div>
                       <div><i class="fas fa-star"></i>${rec.grade}</div>
                      </div>
                      <div class="paragraph">${rec.summary}</div>
                    </div>
                  </div>
                  
                  
          	  </c:forEach>
                  
                  
                </div>
            </div>
         </div>
            
      <div id = "main3">
        <h2 style="border-top: 1px solid gainsboro; margin-top: 95px; padding-top: 30px;">"회원님에게 추천"</h2>
        
        <div id = "main3_pic">
         <c:forEach var="rec" items="${recipe}" begin="0" end="3">
          <span class = "main3_pic">
            <img src="${pageContext.request.contextPath}${rec.photo}"/>
              <p>
                  <a>${rec.title}</a>
                <br>
                <br>
              		${rec.summary}
              </p>
          </span>
          </c:forEach>
          </div>
          <img src = "../images/logo-horizontal-300px.png" width="300px"/>
      </div>
      



      <div id = "main4"> 
        <h3 id= "main4Title">오늘 같은 날씨엔,</h3>
        <div class="whetherRecommendation">
            <div class="whetherRecommendation_body">
           
           		<!-- 최초 실행 시 총 9개가 화면에 출력 -->
            <c:forEach var="rec" items="${recipe}" begin="0" end="8">
                <div class="profileBlock_body_inner"  onclick="location.href='/yoribogo/recipe/detail.do?no=${rec.no}';"  style="background-image: url(${pageContext.request.contextPath}${rec.photo}); background-size: cover;">
                    <div  class="innerWrapper">  
                    <img id = "profileBlock_body_inner_profile" src="${pageContext.request.contextPath}${rec.profile}"/>  
                     <div class="innerWrapper_inner">
                       <div><fmt:formatDate value="${rec.regDate}" pattern="yy.MM.dd" /></div>
                       <div>${rec.memId}</div>
                       <div><i class="fas fa-star"></i>${rec.grade}</div>
                      </div>
                      <div class="paragraph">${rec.summary}</div>
                    </div>
                  </div>
    		</c:forEach> 
    		
    		
           </div>
      </div>
      </div>
      
      <div id="main5">
        <h3 id="main5Title">이달의 추천왕</h3>
        <div class="statistics_body">

        <div></div>
        <div id="statistics">
            <div id="statistics_king">
            </div>
        </div>
        <div></div>
    </div>
    </div>


    </div>

    <footer style="position: relative; width: 100%; background: gray; height: 300px; color:white;">
    <div id="footer">
        <img src = "../images/logo-vertical-300px.png" style="width: 80px;"/>
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