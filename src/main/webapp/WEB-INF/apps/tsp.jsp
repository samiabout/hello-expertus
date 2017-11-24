<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sami-
  Date: 23/11/2017
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@page import="beans.ElementsToDisplay"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<html >
<head>
    <meta charset="utf-8">
    <title>Expertus</title>
    <link type="text/css" rel="stylesheet" href="resources/StyleSheet.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="../../resources/JqueryScript.js" type="text/javascript"></script>
</head>
<body>

<header>
    <%@ include file="../body/header.jsp" %>

</header>
<c:if test="${sessionScope.user != null}">
This is a Travelling salesman problem solver : <br>
Given a list of cities and the distances between each pair of cities, what is the shortest possible route that visits each city exactly once and returns to the origin city?
<br>You can add up to 15 cities! (1.3E12 different possible solutions !)
<form method="post" action="expertusTSP" class="form-horizontal">
    <fieldset>

        <button type="button" value="" id="addVal" class="btn btn-default">Add Another Value <br> (random values are suggested)</button>
        <div id="p_vals">

        </div>

        <div class="form-group">
            <div class="col-sm-offset-6 col-sm-6">
                <button type="submit" value="" class="btn btn-default">Compute</button>
            </div>
        </div>
    </fieldset>
</form>
${solution}
</c:if>
</body>
</html>
