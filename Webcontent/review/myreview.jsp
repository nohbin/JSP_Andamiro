<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/resources/css/bootstrap.css?ver=1">
<link rel="stylesheet" href="../resources/css/main.css?ver=1">
<script src="resources/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Pen+Script&display=swap">

<script src="js/bootstrap.bundle.js"></script>
<style>
li {
	list-style: none;
}

a {
	color: black;
	text-decoration: none;
}

img {
	width: 10rem;
	height: auto;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../member/mypage-menu.jsp"></jsp:include>

	<!-- 내 레시피 목록 -->
	<div class="container text-center border mt-3 rounded-5">

		<section class="container">
			<table class="table justify-content-center mt-5 mb-5">
				<thead>
					<tr class="border-2 mt-3 ">
						<th scope="col">레시피</th>
						<th scope="col">레시피 제목</th>
						<th scope="col">후기</th>
						<th></th>
						<th scope="col">받은 평점</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="review" items="${reviewList}">
						<tr>
							<th scope="row"><a href="recipe_Detail.html"><br>${review.recipeId }</a></th>
							<td class=""><br>
							<b>${review.recipeName }</b></td>
							<td><a href="#"><br>
								<br>2,320건</a></td>
							<td></td>
							<td><br>
							<b> ${review.recipegrade }점</b></td>
							<td><br>
							<br>${review.regdate}</td>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</section>

		<script>
			var navLinks = document.querySelectorAll('.nav-link');
			navLinks.forEach(function(link) {
				link.addEventListener('mouseover', function() {
					navLinks.forEach(function(link) {
						link.classList.remove('active');
					});
					this.classList.add('active');
				});
			});
		</script>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>