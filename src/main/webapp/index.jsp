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
</head>
<body>
<header>
    <p style="display: inline"><%
        new ElementsToDisplay().getTitle();

    %></p>
    <img src="resources/img/Exp_logo_RGB.svg" alt="logo Expertus" class="imgHeader">
</header>
<div></div>
<div>
    <div class="row">
        <div class="col-sm-4" style="background-color: indigo">.col-sm-6</div>
        <div class="col-sm-4" style="background-color:blueviolet;">.col-sm-6</div>
        <div class="col-sm-4" style="background-color: indigo">.col-sm-6</div>
    </div>
</div>
</body>
</html>
