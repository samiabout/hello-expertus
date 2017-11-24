<!DOCTYPE html>
<%@page import="beans.ElementsToDisplay"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<html >
<head>
    <meta charset="utf-8">
    <title>Expertus</title>
    <link type="text/css" rel="stylesheet" href="resources/StyleSheet.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="resources/JqueryScript.js" type="text/javascript"></script>
</head>
<body>
<header>
    <%@ include file="WEB-INF/body/header.jsp" %>

</header>

<div>
    <div class="row">
        <div class="col-sm-4" style="background-color: indigo">.col-sm-6</div>
        <div class="col-sm-4" style="background-color:blueviolet;">.col-sm-6</div>
        <div class="col-sm-4" style="background-color: indigo">.col-sm-6</div>
    </div>
</div>

<form method="post" action="TSP" class="form-horizontal">
    <fieldset>

    <button type="button" value="" id="addVal" class="btn btn-default">Add Another Value</button>
    <div id="p_vals">

    </div>

<div class="form-group">
    <div class="col-sm-offset-6 col-sm-6">
        <button type="submit" value="Sign in" class="btn btn-default">Sign Up</button>
    </div>
</div>
</fieldset>
</form>
</body>
</html>
