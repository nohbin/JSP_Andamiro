<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/bootstrap.css">
<link rel="stylesheet" href="../resources/css/join.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Nanum+Pen+Script&display=swap">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<style>
li {
	list-style: none;
}

a {
	color: black;
	text-decoration: none;
}

label[for=name] button {
	color: rebeccapurple;
}
</style>
</head>
<body>
	
	<jsp:include page="../header.jsp"></jsp:include>
	
	

   


    

        <section class="py-5 text-center container">
            <div class="row py-lg-5">
                <div class="col-lg-6 col-md-8 mx-5">

                </div>
            </div>
        </section>


	<div class="container">
    <div class="row row-cols-1 row-cols-sm-3 row-cols-md-3 g-3 my-3">
        <c:forEach var="main" items="${eventList}">
            <div class="col mb-5">
                <div class="card shadow-sm">
                    <a href="EventServlet?command=EventContestViewform">
                        <img src="resources/img/${main.imgsum}" class="bd-placeholder-img card-img-top"
                            width="100%" height="200" role="img" aria-label="베너"
                            focusable="false">
                        <title>Placeholder</title>
                        <rect width="100%" height="%"></rect>
                        </img>
                        <div class="card-body">
                            <p class="card-text">
                                <font style="vertical-align: inherit;" size="4px" color="black">${main.ing}</font>
                            </p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group"></div>
                                <small class="text-muted">
                                    <font style="vertical-align: inherit;">
                                        <font style="vertical-align: inherit;">
                                            ${main.evstart}~${main.evend}
                                        </font>
                                    </font>
                                </small>
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</div>









	<jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>