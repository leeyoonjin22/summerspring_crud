<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
        <link rel="stylesheet" href="CSS/header1.css">
        <link rel="stylesheet" href="CSS/main.css">
        <link rel="stylesheet" href="CSS/login.css">
        <link rel="stylesheet" href="CSS/join.css">
<title>회원가입페이지</title>
</head>
<body>
<!--헤더부분-->
        <div class="header">
            <div class="header-1">
                <div class="logo"><img src="https://images.jinair.com/images/layout/logo_02.png">
                </div>
    
                <div class="nav">
                    <ul  class="nav_menu">
                        <li><button onClick="dp_menu('dp1')" class="nav-1" id="nav1">예약</button></li>
                        <li><button onClick="dp_menu('dp1')" class="nav-1" id="nav2">서비스</button></li>
                        <li><button onClick="dp_menu('dp1')" class="nav-1" id="nav3">혜택</button></li>
                        <li><button onClick="dp_menu('dp1')" class="nav-1" id="nav4">나비포인트</button></li>
                        <li><button onClick="dp_menu('dp1')" class="nav-1" id="nav5">지니스토어</button></li>
                    </ul>
                </div>
    
                <div class="login"> 
                    <ul class="util">
                        <li id="login-button-area">
                        <a href="#" data-click-area="Gnb" data-click-name="로그인">로그인</a>
                        </li>
                        <li class="lang">
                        <a href="#">한국(한국어)/KRW</a>
                        </li>
                    </ul>
                </div>
            </div>
            
            <div class="header-2">
                <div class="dropdown-content1" id="dp1">
                    <!--예약 안의 드롭메뉴 콘텐츠-->
                    <div class="drp1-1">
                        <ul>
                            <li class="drop-first">항공권 예약</li>
                            <li>예약</li>
                            <li>최저가 항공권</li>
                        </ul>
                    </div>
                    <div class="drp1-2">
                        <ul>
                            <li class="drop-first">나의 예약</li>
                            <li>예약 조회/변경/취소</li>
                            <li>부가서비스 신청/취소</li>
                            <li>웹/모바일 체크인</li>
                        </ul>
                    </div>
                    <div class="drp1-3">
                        <ul>
                            <li class="drop-first">운항 정보</li>
                            <li>스케줄 조회</li>
                            <li>출도착 안내</li>
                            <li>취항 노선 안내</li>
                        </ul>
                    </div>  
                    <div class="drp1-4">
                        <ul>
                            <li class="drop-first">예약 및 운임 안내</li>
                            <li>예매 서비스</li>
                            <li>국내선 운임</li>
                            <li>국제선 운임</li>
                            <li>비즈니스 운임</li>
                        </ul>
                    </div>
                    <div class="drp1-5">
                        <ul>
                            <li class="drop-first">할인안내</li>
                            <li>가족운임 할인제도</li>
                            <li>상용우대 프로그램</li>
                            <li>제주도민 할인제도</li>
                            <li>재외/명예도민 할인제도</li>
                            <li>군산시민 할인제도</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--회원가입 main body 부분-->
        <div class="joinmain">
            <div class="body2">
                <div class="join1"> 
                    <p class="join1p">회원가입</p>
                  
                </div>
                <div class="join2">
                    <div class="join2-1">
                        <p class="join2p">step1 <br>
                        <p>약관동의 및 본인인증</p></p>
                       
                    </div>
                    <div class="join2-2">
                        <p class="join2p">step2 <br>
                        <p>정보입력</p></p>
                    </div>
                    <div class="join2-3">
                        <p class="join2p">step3<br>
                        	<p>가입완료</p></p>
                    </div>
                </div>
                <div class="join3">
                    <div class="join3-1">정보입력<p>*표시 항목은 필수 입력사항 입니다.</p></div>
                    <hr>
                    <form action="adduser.jsp" method="post">
                    <div class="join3-2">
                        <table>
                            <tr>
                                <th class="jointh">*이름</th>
                                <td class="jointd">
                                    <input class="joinid" type="text" id="name" name="name" maxlength="20" autocomplete="off"  aria-autocomplete="list">
                                </td>
                             </tr>
                             <tr>
                                <th class="jointh">*이메일</th>
                                <td class="jointd">
                                    <input class="joinid" type="text" id="email" name="email" maxlength="20" autocomplete="off"  aria-autocomplete="list">
                                </td>
                             </tr>
                            <tr>
                                <th class="jointh">*아이디</th>
                                <td class="jointd">
                                    <input class="joinid" type="text" id="userid" name="userid" maxlength="20" autocomplete="off"  aria-autocomplete="list">
                                </td>
                             </tr>
                             <tr>
                                <th class="jointh">*비밀번호</th>
                                <td class="jointd">
                                    <input class="joinid" type="password" id="password" name="password" maxlength="20" autocomplete="off"  aria-autocomplete="list">
                                </td>
                             </tr>
                             
                             <tr>
                                <th class="jointh">생년월일</th>
                                <td class="jointd">
                                    <input class="joinid" type="text" id="birth" name="birth" maxlength="20" title="pw" autocomplete="off"  aria-autocomplete="list" >
                                </td>
                             </tr>
                             <tr>
                                <th class="jointh">성별</th>
                                <td>
                                    <span>
                                        <input type="radio" id="sex" name="sex" value="male">
                                        <label for="male1" style="">남자</label>
                                    </span>
                                    <span>
                                        <input type="radio" id="sex" name="sex" value="female" checked="checked">
                                        <label for="female1" style="">여자</label>
                                    </span>
                                </td>
                             </tr>
                        </table>
                    </div>
                    <div class="join3-3">
                        <span class="joinbtn1"><input type="submit" value="회원가입"/>
                        </span> 
                        <span class="joinbtn2">
                            <a href="" >취소</a>
                        </span> 
                    </div>
                    </form>
                </div>
            </div>
        </div>
</body>
    <script>
        function dp_menu(x){
            let click=document.getElementById(x);
            if(click.style.visibility ==="hidden"){
                click.style.visibility = "visible";
            }
            else{
                click.style.visibility ="hidden";
            }
        }

    </script>

</html>