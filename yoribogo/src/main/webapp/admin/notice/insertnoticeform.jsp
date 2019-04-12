<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title> [admin] 회원현황-경고상태 회원관리</title>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/notice/noticeform.css" />
</head>
<body>
<!-- 전체 내용 wrapper -->
<div id="wrapper">
  <!-- Begin Header -->
  <div id="header">
      <img id="logo" src="${pageContext.request.contextPath}/images/logo-vertical-1000px.png">
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



    <!-- 공지사항 작성 -->
    <div id="content">
        <div class="bodycontent"> 
            <form method='post' action="write.do">
                    <header>
                        <br>
                      <h2>공지사항 작성</h2>
                   </header>

                    <!-- 제목 -->
                    <div>
                      <label class="desc" id="title1" for="Field1">제목</label>
                      <div>
                        <input id="Field1" name="title" type="text" class="field text fn" value="" size="8" tabindex="1">
                      </div>
                    </div>
                      
                    <!-- 작성자 -->
                    <div>
                      <label class="desc" id="title3" for="Field3">
                      	  작성자
                      </label>
                      <div>
                            <select id="Field106" name="writer" class="field select medium" tabindex="11"> 
                                    <option value="운영자"> 운영자 </option>
                                    <option value="게시판관리자"> 게시판관리자 </option>
                                    <option value="댓글관리자"> 댓글관리자 </option>
                            </select>
                     </div>
                    </div>
                     
                    <!-- 내용 -->
                    <div>
                      <label class="desc" id="title4" for="Field4">
                        내용 입력
                      </label>
                    
                      <div>
                        <textarea id="Field4" name="content" spellcheck="true" rows="25" cols="50" tabindex="4"
                        placeholder="내용을 입력하세요!"></textarea>
                      </textarea>
                      </div>
                    </div>

                    <!-- 등록하기 폼!-->
                    <div>
                      <div>
                        <input id="saveForm" name="saveForm" type="submit" value="등록하기">
                        <input id="saveForm" name="saveForm" type="submit" value="취소하기">
                      </div>
                    </div>
           </form>
       </div>
    </div>


     <!-- 하단  로고 -->
     <div id="footeradmin"> 
       <img id="bt_logo" src="/yoribogo/images/logo-vertical-1000px.png"> 
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