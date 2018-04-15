<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


<title>Home</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
			</div>
			<div class="col-sm-8">
				<form action="" class="form-control">
					<h5>Ders Programı</h5>
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">Sıra</th>
								<th scope="col">Ders Kodu</th>
								<th scope="col">Ders Adı</th>
							</tr>
						</thead>

						<c:if test="${ not empty ls }">
							<tbody>
								<c:forEach var="item" items="${ ls }">

									<tr id="${ item.getDid() }">
										<td>${ item.getDid() }</td>
										<td>${ item.getDkodu() }</td>
										<td>${ item.getDadi() }</td>
									</tr>

								</c:forEach>
							</tbody>
						</c:if>

					</table>

					<div style="display: none;" id="djson">
						<div class="form-group row">
							<label for="kodu" class="col-sm-2 col-form-label">Dersin
								Kodu</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="kodu" name="kodu">
							</div>
						</div>

						<input type="hidden" id="id" name="id">
						<div class="form-group row">
							<label for="adi" class="col-sm-2 col-form-label">Dersin
								Adı</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="adi" name="adi">
							</div>
						</div>

						<div class="form-group row">
							<label for="icerigi" class="col-sm-2 col-form-label">Dersin
								İçeriği</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" id="icerigi"
									name="icerigi">
							</div>
						</div>

						<div class="form-group">
							<button type="button" id="xbutton"
								class="btn btn-outline-primary btn-sm">XML Göster</button>
							<button type="button" id="jbutton"
								class="btn btn-outline-success btn-sm">JSON Göster</button>
						</div>

						<div class="form-group">
							<label for="veri">Kodlanmış Veri</label>
							<textarea class="form-control" id="veri" rows="3"></textarea>
						</div>
					</div>
				</form>



			</div>
			<div class="col-sm-2"></div>
		</div>
	</div>
</body>
</html>
<script src='<s:url value="/resources/js/js.js"></s:url>'></script>


