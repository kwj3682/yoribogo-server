<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='fmt' uri='http://java.sun.com/jsp/jstl/fmt'%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> [admin] 회원현황-경고상태 회원관리</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/css/recipe/listbestcomment.css"/>
</head>
<body>
<!-- 전체 내용 wrapper -->
<div id="wrapper">
  <!-- Begin Header -->
  <div id="header">
      <img id="logo" src="../images/logo-vertical-1000px.png">
    <h1><a href="#">ADMINISTRATOR</a></h1></div>
  <!-- End Header -->
  <!-- Begin Navigation -->
  <div id="navigation">  
  <div class="admin">
    <ul>
        <li><a href="../1_admin-Member/membersearch.html" id="member">회원현황</a> 
          <ul>
              <li><a href="/yoribogo/admin/member/listmember.do">회원검색</a></li>
              <li><a href="/yoribogo/admin/member/listmemberreport.do">경고상태 회원관리</a></li>
          </ul>
        </li>

         <li><a href="../2_admin-Board/boardlist.html" id="board">게시글관리</a>
            <ul>
            <li><a href="/yoribogo/admin/recipe/listrecipe.do">게시글 관리</a></li>
            <li><a href="/yoribogo/admin/notice/noticeform.do">공지사항 작성</a></li>
            <li><a href="/yoribogo/admin/notice/bannerform.do">배너 업로드</a></li>
            </ul>
         </li>

         <li><a href="../3_admin-Comment/comment.html" id="comment">댓글관리</a>
             <ul>
          <li><a href="/yoribogo/admin/recipe/listcomment.do">댓글 관리</a></li>
          <li><a href="/yoribogo/admin/recipe/listbestcomment.do">베스트 댓글 관리</a></li>
        </ul>
      </li>
</ul>
   </div>
  </div>
  <!-- End Navigation -->



    <!-- 가운데 내용 컬럼 -->
    <div id="content">
        <table>
            <tr class="top">
                <th class="no">번호</th>
                <th class="board">게시판</th>
                <th class="writer">작성자</th>
                <th class="content">내용</th>
                <th class="regDate">작성일</th>
                <!-- 좋아요 수로 정렬하기 -->
                <th class="num">좋아요♡</th>  
            </tr>
            <c:forEach var="clist" items="${comment}"> 
                 <tr>
                        <td>${clist.commentNo}</td>
                        <td>${clist.title}</td>
                        <td>${clist.memId}</td>
                        <td>${clist.commentContent}</td>
                        <td> <fmt:formatDate value="${clist.commentRegDate}" pattern="yy.MM.dd" /> </td>
                        <td>${clist.commentReportCount}</td>
                  </tr>
            </c:forEach>       
        </table>
    </div>

   <!-- 글 검색-->
   <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
   <div class="search_input">
           <div class="container-4">
             <input type="search" id="search" placeholder="작성자로 검색!" />
             <button class="icon"><i class="fa fa-search"></i></button>
           </div>
   </div>
             <div id="page">
                <div class="before"> <a href="#"> 이전 </a> </div>
                <div> <a href="#"> 1 </a> </div>
                <div> <a href="#"> 2 </a> </div>
                <div> <a href="#"> 3 </a> </div>
                <div> <a href="#"> 4 </a> </div>
                <div> <a href="#"> 5 </a></div>
                <div> <a href="#"> 6 </a> </div>
                <div> <a href="#"> 7 </a> </div>
                <div> <a href="#"> 8 </a></div>
                <div> <a href="#"> 9 </a> </div>
                <div> <a href="#"> 10 </a> </div>
                <div class="after"> <a href="#"> 다음 </a> </div> 
             </div> 

     <!-- 하단  로고 -->
     <div id="footeradmin"> 
       <img id="bt_logo" src="../images/logo-vertical-1000px.png"> 
      </div>

  <!-- End Wrapper div -->
 </div>

 
 <footer style="position: relative; width: 100%; background: gray; height: 300px; color:white;">
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
    