<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: sami-
  Date: 23/11/2017
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
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
<br>You can add as many cities as you want!
    <br> The algorithm finds an exact solution for up to 15 cities (1.3E12 different possible solutions !)
    <br> Over 15 cities, it computes an approximated solution.<br>
<form method="post" action="expertusTSP" class="form-horizontal">
    <fieldset>

        <button type="button" value="" id="addVal" class="btn btn-default">Add Another Value <br> (random values are suggested)</button>
        <br><br>
        <div id="p_vals">

        </div>

        <div class="form-group">
            <div class="col-sm-offset-6 col-sm-6">
                <button type="submit" value="" class="btn btn-default">Compute</button>
            </div>
        </div>
    </fieldset>
</form>
    <div>
    <c:if test="${nodesListe != null}">
    Liste des nodes:<br>
    <c:forEach items="${nodesListe}" var="nodeListe">
        ${nodeListe.name} : x=${nodeListe.x}  y=${nodeListe.y}<br>
    </c:forEach><br>
    <br>${msg}, found between <span style="color:blue">${nbPossibilities}</span> possibilities :<br>
    total distance : ${totalDistance}<br><br>Best path : <br>
    <c:forEach items="${nodesSolution}" var="nodeSolution">
        ${nodeSolution.name} : x=${nodeSolution.x}  y=${nodeSolution.y}<br>
    </c:forEach>
    <br>
    <br>
    ${solution}
    </c:if>
    </div>
</c:if>

</body>
</html>
