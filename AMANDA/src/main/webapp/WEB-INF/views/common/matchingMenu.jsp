<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: "Lato", sans-serif;
}

/*  */
.btn {
	all: unset;
	cursor: pointer;
	background-color: white;
	color: #fd6584;
	/* padding: 1em 2em; */
	padding: 0em 2em;
}

.button--flip {
	transform-style: preserve-3d;
	position: relative;
	transition: transform 290ms ease-in-out;
}

.button--flip .button__face {
	/* transform: translateZ(1.5em); */
	transform: translateZ(0.5em);
	/*  background-color: black;  */
}

.button--flip .button__top {
	margin-left: 135px;
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	transform: translateY(50%) rotateX(-90deg);
	background-color: #fd6584;
	color: white;
}

.button--flip:hover {
	transform-origin: center;
	transform: rotateX(90deg);
}
::-webkit-scrollbar {
	display: none;
}

/*  */
.sidenav {
	height: 100%;
	width: 400px;
	position: absolute;
	z-index: 2;
	top: 0;
	left: 0;
	background-color: #febebe; /* mistyrose, bisque, cornsilk */
	background-color: white;
	overflow-x: hidden;
	/*   transition: 0.5s; */
	padding-top: 60px;
	border-right: 2px solid;
	font-size: 25px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 20px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover {
	/* color: #f1f1f1; */
	color: #fd6584;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

#but {
	font-size: 20px;
	font-weight: bold;
	margin: 20px;
}

.alramMsgcss {
	background-color: red;
	border-radius: 50% 50% 50% 50%;
	width: 30px;
	height: 30px;
	font-size: 60;
	color: white;
	text-align: center;
	margin-left: 70%;
	margin-top: 2%;
	position: absolute;
}

.mgIcon {
	width: 100px;
	height: 100px;
	position: absolute;
	margin-left: 55%;
	margin-bottom: 10%;
}
/* 채팅 css */
.chatListView{
    width: auto;
    height: 80%;
    margin-top: 10%;
    margin-bottom: 10%;
    border: 1px solid black;
    z-index: 1000;
    text-align: center;
    border-radius: 0.5em;
    overflow-x: hidden;
    overflow-y: auto;
    margin-left: 1em;
}
.chatListView::-webkit-scrollbar {
	display: none;
}
.chatRoomImg{
	margin:1em;
}
.chatUserImg{
	width: 4em;
    height: 4em;
    border-radius: 50% 50% 50% 50%;
    border: 1px solid lightgray;
}
.chatUserName{
	margin: 0;
    font-size: smaller;
    font-weight: bold;
}
.signalChat{
	position: absolute;
    right: 1em;
    top: 0.7em;
    background-color: red;
    border-radius: 50% 50% 50% 50%;
    width: 1.5em;
    height: 1.5em;
    font-size: small;
    color: white;
}
.scViewBtn{
	position: fixed;
    right: 7em;
    border-radius: 10%;
    background-color: white;
    width: 2em;
    height: 4em;
    top: 37%;
    z-index: 100;
    border: 1px solid lightgray;
}
.crShowView{
	position: fixed;
    right: 0;
    width: 7em;
    height: 70%;
    z-index: 1000;
    margin-top: 5%;
}
.crShowView.hidecView{
	-webkit-transform:translateX(6em);
	transition-duration: 0.5s;
}
.crShowView.showView{
	-webkit-transform:translateX(0);
	transition-duration: 0.5s;
}
</style>
</head>
<body>

	<!-- <div id="mySidenav" class="sidenav">
  <a>Profile</a>
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  	<img alt="사진없음" src="me.jpg" style="width: 400px; height: 400px; margin-left: 22px; border-radius: 100px;">
  <a class="menuBtn" href="#">About</a>
  <a class="menuBtn" href="#">Services</a>
  <a class="menuBtn" href="#">Clients</a>
  <a class="menuBtn" href="#">Contact</a>
</div> -->

	<div id="mySidenav" class="sidenav">
		<div id="pAll" style="width: 500px; height: 70px; margin-left: 10%;">
			<a href="SendMsg.do" id="pArea">
				<img src="resources/images/mgicon.png" class="mgIcon">
			</a> 
				<!-- <button class="alramMsgcss" id="likeSignal">0</button> -->
		</div>
		<a>Profile</a> <a href="javascript:void(0)" class="closebtn"
			onclick="closeNav()">&times;</a>
		<!-- <img alt="사진없음" src="me.jpg" style="width: 400px; height: 400px; margin-left: 22px; border-radius: 100px;"> -->
		<img alt="사진없음" src="resources/face/G.jpg"
			style="width: 370px; height: 400px; margin-left: 22px; border-radius: 100px;">

		<div id="but" align="center">
			<div class="button button--flip">
				<button class="btn button__face"
					onclick="location.href='SuccessReturn.do'">Matching</button>
				<button class="btn button__top" style="margin-left: 137px;"
					onclick="location.href='SuccessReturn.do'">Matching</button>
			</div>
			<br>
			<div class="button button--flip">
				<button class="btn button__face"
					onclick="location.href='OrderPage.do'">Payment</button>
				<button class="btn button__top" style="margin-left: 137px;"
					onclick="location.href='OrderPage.do'">Payment</button>
			</div>
			<br>
			<div class="button button--flip">
				<button class="btn button__face"
					onclick="location.href='SendMsg.do'">Message</button>
				<button class="btn button__top" onclick="location.href='SendMsg.do'"
					style="margin-left: 128px;">Message</button>
			</div>
			<br>
			<div class="button button--flip">
				<button class="btn button__face"
					onclick="location.href='LikeLists.do'">Like List</button>
				<button class="btn button__top" style="margin-left: 133px;"
					onclick="location.href='LikeLists.do'">Like List</button>
			</div>
			<br>
			<div class="button button--flip">
				<button class="btn button__face"
					onclick="location.href='Mlogout.do'">Logout</button>
				<button class="btn button__top" style="margin-left: 133px;"
					onclick="location.href='Mlogout.do'">Logout</button>
			</div>
		</div>
	</div>



	<!-- <div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; AMANDA</span>
</div> -->

	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "400px";
			/* document.getElementById("main").style.marginLeft = "450px"; */
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0%";
			/* document.getElementById("main").style.marginLeft= "0";  */
		}
	</script>


	<script>
		function alramMsg() {
			$.ajax({
				url : "alramMsg.do",
				data : {
					user_id : "${sessionScope.loginUser.user_id}"
				},
				success : function(data) {
					if(data>0){
						$("#pArea").fadeIn( 'slow' );
						$("<p class='alramMsgcss' id='alMsg'>" + data 
						+ "</p>").appendTo("#pArea");
					}else{
						$("#pArea").fadeOut( 'slow' );
					}
				}
			});
		};

		$(function() {
			alramMsg();
			setInterval(function() {
				alramMsg();
			}, 3000);
		});
	</script>

 
	<!-- like용 node script -->
	<!-- <script src="http://192.168.219.105:80/socket.io/socket.io.js"></script>
	<script>
		$(function() {
			const socket = io("http://192.168.130.136:80");
			// 로그인시 
			socket.emit('loginUser', "홍길동");

			// 창이 닫히면 node쪽에 저장된 이름값이 삭제
			window.onbeforeunload = function() {
				socket.emit('logoutUser', "홍길동");
			}
			// like db에 저장 완료시
			function like(userName) {
				socket.emit('sendLike', userName);
			}
			// 나에게 넘어온 like
			socket.on('getLike', function(userName) {
				$("#likeSignal").html("1");
			});
			
			$("#likeSignal").click(function(){
				like('홍길동');
			});
		});
	</script> -->
	<!-- 채팅 목록 -->
	<div id="crShowViewDiv" class="crShowView hidecView">
		<input type="button" id="scViewBtn" class="scViewBtn" value="<">
		<div id="chatListView" class="chatListView">
			
		</div>
		<form name="popForm" method="get">
			<input type="hidden" name="user1" id="user1">
			<input type="hidden" name="user2" id="user2">
		</form>
		
	</div>
<!-- 채팅목록 스크립트 -->
<script type="text/javascript">
		var chatView;
		
		window.addEventListener("beforeunload", function (event) {
			chatView.close();
		});

		function newWindow(user1, user2){
			$("#user1").val(user1);
			console.log($("#user1").val());
			$("#user2").val(user2);
			console.log($("#user2").val());
			var popForm = document.popForm;
			if(chatView != null){
				chatView.close();
			}
			chatView = window.open("", "Amanda", "left=100, top=100, location=0, resizable=0, menubar=0, status=0, titlebar=0, toolbar=0", true);
			chatView.resizeTo("370", "600");
			chatView.resizeBy("0", "0");
			
			popForm.action = "chChat.do";
			popForm.method = "post";
			popForm.target = "Amanda";
			popForm.submit();
			
		}
		
		$("#scViewBtn").click(function(){
			if($("#crShowViewDiv").hasClass("hidecView") == true){
				$("#crShowViewDiv").removeClass("hidecView");
				$("#crShowViewDiv").addClass("showView");
				$("#scViewBtn").val(">");
			}else{
				$("#crShowViewDiv").addClass("hidecView");
				$("#crShowViewDiv").removeClass("showView");
				$("#scViewBtn").val("<");
			}
		});
		// 채팅 목록 가져오기
		function findChatRoom(){
			$.ajax({
				url:"chfindChat.do",
				type:"post",
				data:{userName : "홍길동"},
				dataType:"json",
				success:function(data){
					var roomDiv = $("#chatListView");
					console.log(data);
					for(var i in data){
						/* 수정 */
						var addRoom = $("<div></div>").attr("onclick", "newWindow('4','"+data[i].uMid+"')").addClass("chatRoomImg").appendTo(roomDiv);
						var addSignal = $("<p></p>").appendTo(addRoom);
						if(data[i].conSum > 0){
							addSignal.addClass("signalChat").text(data[i].conSum);
						}
						var chatImg = $("<img>").attr("src", "resources/img/"+data[i].renameFileName).addClass("chatUserImg").appendTo(addRoom);
						var userName = $("<p></p>").text(data[i].userNick).addClass("chatUserName").appendTo(addRoom);
						
					}
				}
			});
		}
	</script>
</body>

</html>
