<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <title>Save Form �manojsinghdanu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"></script>
    <style>
        .control-label {
            padding-top: 6px;
        }

        .pull-left {
            margin-left: -25px;
        }

        .center {
            text-align: center;
        }

    </style>
</head>

<body class="container-fluid" style="background-color: rgb(153, 196, 180);">
    <div>
        <nav class="navbar navbar-expand-lg navbar-light text-dark ">
            <a class="navbar-brand disabled" href="#">CUSTOMER FORM</a>
            <button class="navbar-toggler " type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation"></button>
                <button class="navbar-toggler disabled" type="button" data-toggle="collapse"
                    data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="/">SaveData</a>
                        <a class="nav-item nav-link" href="/search">SearchData</a>
                        <a class="nav-item nav-link" href="/update">UpdateData</a>
                        <a class="nav-item nav-link" href="/delete">DeleteData</a>

                    </div>
                </div>
        </nav>
    </div>
    <div class="container mt-3">
        <form action="/save" method="post">
            <div class="form-group row bg-light text-dark">
                <label for="name" class="col-sm-3 font-weight-bold col-form-label ">Full Name:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control-plaintext" pattern="^[a-zA-Z\s]+$" id="name"
                        placeholder="Enter Your Name" name="name" required>
                </div>
            </div>
            <div class="form-group row bg-light">
                <label for="custype" class="col-sm-2 font-weight-bold bg-light text-dark col-form-label">Customer
                    Type:</label>
                <div class="col-sm-2">
                    <select class="form-select" class="form-control pull-left" name="customer_type" required>
                        <option disabled>-Customer Type-</option>
                        <option value="None" selected>None</option>
                        <option value="Army">Army</option>
                        <option value="Army">Politician</option>
                        <option value="Business">Business</option>
                        <option value="Scientist">Scientist</option>
                        <option value="Doctor">Doctor</option>
                        <option value="Engineer">Engineer</option>
                        <option value="Teacher">Teacher</option>
                    </select>
                </div>
                <div class="col-sm-2 ">
                    <label for="phone" class="font-weight-bold bg-light col-form-label">Phone Number:</label>
                </div>
                <div class="col-sm-4 ">
                    <input type="tel" class="form-control" maxlength="10" pattern="[6789][0-9]{9}" id="phone"
                        placeholder="Phone Number" name="phone" required>
                </div>
            </div>
            <div class="form-group row text-dark bg-light">
            
                <label for="country"
                    class="col-sm-2 font-weight-bold text-dark bg-light col-form-label">Country:</label>
                <div class="col-sm-2">
                    <select id="dropdownCountry" class="form-control pull-left" name="country" required>
                        <option selected>-Select Country-</option>
                        <c:forEach var="country" items="${countries }">
                            <option value="${country.id}">${country.name}</option>
                        </c:forEach>
                    </select>
                </div>
                <label for="custype" class="col-sm-2 font-weight-bold text-dark bg-light col-form-label">State:</label>
                <div class="col-sm-2">
                    <select id="dropdownState" class="form-control pull-left" name="state" required>
                    </select>
                </div>
                <label for="custype" class="col-sm-2 font-weight-bold text-dark bg-light col-form-label">City:</label>
                <div class="col-sm-2">
                    <select id="dropdownCity" class="form-control pull-left " name="city" required> </select>
                </div>
               
            </div>
            <div class="form-group row bg-light text-dark">
                <label for="street" class="col-sm-3 font-weight-bold col-form-label">Street/Landmark:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control-plaintext" maxlength="100" id="street"
                        placeholder="Enter Street" name="street" required>
                </div>
            </div>
            <div class="form-group row bg-light text-dark">
                <label for="pincode" class="col-sm-3 font-weight-bold col-form-label">PinCode:</label>
                <div class="col-sm-9">
                    <input type="text" maxlength="6" class="form-control-plaintext" id="pincode" pattern="[0-9]{6}"
                        placeholder="Enter Pincode" name="pincode" required>
                </div>
            </div>
            <div class="form-group row bg-light text-dark">
                <label for="created" class="col-sm-3 font-weight-bold col-form-label">Created By:</label>
                <div class="col-sm-9">
                    <input type="text" class="form-control-plaintext col-form-label" id="created"
                        pattern="^[a-zA-Z\s]+$" placeholder="Created By" name="created_by" required>
                </div>
            </div>
            <div class="center">
                <button type="submit" class="btn btn-primary ">Save Data</button><br><br>

            </div>
        </form>
    </div>
<script type="text/javascript">
	$(document).ready(function() {
						$("#dropdownState").val($("#dropdownState option:first").val());
						$('#dropdownCountry').on('change',
										function() {
											var countryId = $(this).val();
											$.ajax({
														type : 'GET',
														url : '${pageContext.request.contextPath }/loadStatesByCountry/'
																+ countryId,
														success : function(
																result) {
															var result = JSON
																	.parse(result);
															var state = '';
															state += '<option disabled selected="selected">--Select State--</option>';
															for (var i = 0; i < result.length; i++) {
																state += '<option value="' + result[i].id + '">'
																		+ result[i].name
																		+ '</option>';
															}
															$('#dropdownState')
																	.html(state);
															$("#dropdownState")
																	.val(
																			$(
																					"#dropdownState option:first")
																					.val());
															$("#dropdownCity")
																	.val(
																			$(
																					"#dropdownCity option:first")
																					.val());
														}
													});
										});

						$('#dropdownState')
								.on(
										'change',
										function() {
											var stateId = $(this).val();
											$
													.ajax({
														type : 'GET',
														url : '${pageContext.request.contextPath }/loadCitiesByState/'
																+ stateId,
														success : function(
																result) {
															var result = JSON
																	.parse(result);
															var city = '';
															city += '<option disabled selected="selected">--Select City--</option>';
															for (var i = 0; i < result.length; i++) {
																city += '<option value="' + result[i].id + '">'
																		+ result[i].name
																		+ '</option>';
															}
															$('#dropdownCity')
																	.html(city);
														}
													});
										});
					});
</script>
</body>

</html>