<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
   <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
  <link rel="stylesheet" href="../css/signup.css">

   <title>Document</title>
</head>
<body>
  <jsp:include page="../include/logoutmenubar.jsp" />
    <div class="wrapper">
            <div class="container">
                <h1>Welcome</h1>
                
                <form class="form" id="signup">
                    <h5>프로필 사진</h5>
                    <a id="profilePhoto" href="#" >+</a>
                    
                    <script>
                    /*
                    	$("#profilePhoto").click(
                    				
                    	);
                    */
                    </script>
                    <input id="email" type="text" placeholder="이메일" name="email">
                    <h5 id="emailChecked"></h5>
                                       
                    <input type="text" placeholder="회원 아이디" name="id">
                    <h5 id="idChecked"></h5>
                    <input type="password" placeholder="비밀번호" name="pass">
                    <h5 id="passChecked"></h5>
                    <input type="password" placeholder="비밀번호 확인" name="pass2">
                    <h5 id="pass2Checked"></h5>
                    
                    <div id = "favorite">
                    <div>키워드</div>
                    <input id="favoriteSearch" type="text" placeholder="검색">
                    <div>    
                        
                        <button id="favoriteThing">
                        <i class="fas fa-plus-square fa-2x"></i>
                        <span>채식주의</span>
                        </button>
                        
                    </div>
                    </div>
                    <button type="submit" id="login-button">회원가입</button>
                    <a id="back" href="../login/loginform.jsp" >이전</a>
                
                <script>
            	$("#login-button").click(function(event){
        			event.preventDefault();

                	$('form').fadeOut(500);
                	$('.wrapper').addClass('form-success');
           		});
        			let emailFlag = false;
        			let idFlag = false;
                    let passFlag = false;
        			let pass2Flag = false;
        			
        			let email;
        			let id;
        			let pass;
            		$("input[name='email']").on("keyup",function(){			
            			
            			$.ajax({
            				url : "checkbyemail.do",
            				data: "email=" + $("input[name='email']").val(),
            				success : function(result){
            					if(result == 0){
            					$("#emailChecked").html("사용가능한 이메일입니다.");	
            					$("#emailChecked").css({"color" : "springgreen"});	
            					emailFlag = true;
            					email = $("input[name='email']");
            					
            					}else if($("input[name='email']").val() == ""){
            						$("#emailChecked").html("");				
            							
            					}else{
            						$("#emailChecked").html("사용할 수 없는 이메일입니다.");									
            						$("#emailChecked").css({"color" : "red"});	
            					}
            				}
            			});	
            			}            		
            		);
            		
            		
            		
            		$("input[name='id']").on("keyup",function(){			
            			
            			$.ajax({
            				url : "checkbyid.do",
            				data: "id=" + $("input[name='id']").val(),
            				success : function(result){
            					if(result == 0){
            					$("#idChecked").html("사용가능한 아이디입니다.");	
            				
            					$("#idChecked").css({"color" : "springgreen"});	
            					idFlag = true;
            					id = $("input[name='id']");
            					
            					}else if($("input[name='id']").val() == ""){
            						$("#idChecked").html("");					
            					}else{
            						$("#idChecked").html("사용할 수 없는 아이디입니다.");									
	            					$("#idChecked").css({"color" : "red"});	
            							
            					}
            				}
            			});	
            		}            		
            		);
            		
            		
            		
            		let passCheck; 
            		$("input[name='pass']").on("keyup",function(){			
            			passCheck = $("input[name='pass']").val();
            			if(passCheck = ""){
            				return;            				
            			}
            			if(passCheck.length < 8){
            						$("#passChecked").html("비밀번호는 8자 이상입니다.");									
	            					$("#passChecked").css({"color" : "red"});	
            				
            			}else if(passCheck.length > 13){
            						$("#passChecked").html("비밀번호는 13자 이하입니다.");									
	            					$("#passChecked").css({"color" : "red"});	
            			}else{
            						$("#passChecked").html("사용가능한 비밀번호입니다.");									            				
	            					$("#passChecked").css({"color" : "springgreen"});	
	            					passFlag = true;
	            					passCheck = $("input[name='pass']").val();
            			}
            			
            			});
            		
            		$("input[name='pass2']").on("keyup",function(){			
            			if(passCheck = "" || $("input[name='pass2']").val().length == 0){
            				return;            				
            			}
            			if(passCheck !== $("input[name='pass2']").val()){
            						$("#pass2Checked").html("비밀번호를 확인해주세요.");									
	            					$("#pass2Checked").css({"color" : "red"});	
            			}else{
            						$("#pass2Checked").html("확인했습니다.");									            				
	            					$("#pass2Checked").css({"color" : "springgreen"});	
	            					pass2Flag = true;
	            					pass2 = $("input[name='pass2']");
            			}
            			
            			}            		
            		);
            		
            		$("#login-button").click(
            			function(){
	           				if(idFlag && emailFlag && passFlag && pass2Flag){
    	        				$.ajax({
        	    					url:"signup.do",
            						data: "id=" + "email="+"pass=",
            						success:function(){
            						
            						}
            					});
            					
           					}else{
    							alert("입력 내용을 확인해주세요.");       					
           					}
            			}
            		);
            		
                    </script>
                    
                
                
                </form>
                
                
               
            </div>
            
           
		<jsp:include page="../include/bubble.jsp" />
    </div>
</body>
</html>