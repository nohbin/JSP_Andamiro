<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.css?ver=1">
<link rel="stylesheet" href="resources/css/signin.css?ver=1">
<script src="resources/js/member.js?ver=1"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Pen+Script&display=swap">
<style>
a {
	color: black;
	text-decoration: none;
}

li {
	list-style: none;
}
</style>
</head>
<body>
	<jsp:include page="/header.jsp"></jsp:include>

	<main class="form-signin w-100 m-auto text-center">
		<form action="MemberServlet" method="post" name="frm" >
		<input type="hidden" name="command" value="member_login">
			<img class="mb-4" src="resources/img/mainlogo.png" alt="" width="72" height="57">
			<h1 class="h3 mb-3 fw-normal">로그인</h1>

			<div class="form-floating mb-2 rounded-5">
				<input type="text" class="form-control rounded-3" id="floatingInput" name="userid" placeholder="userid" value="${id }"> 
				<label for="floatingInput">아이디를 입력해주세요</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control rounded-3" id="floatingPassword" name="pwd" placeholder="Password"> 
				<label for="floatingPassword">비밀번호</label>
			</div>
			<div class="form-floating my-3">
				<a href="MemberServlet?command=member_find">아이디 / 비밀번호 찾기</a>
			</div>
			<button class="w-100 btn btn-lg" type="submit" onclick="return loginCheck()" style="background-color: #fac279;">
				로그인
			</button>
			<p class="mt-5 mb-3 text-muted">&copy; 2023</p>
		</form>
	</main>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>