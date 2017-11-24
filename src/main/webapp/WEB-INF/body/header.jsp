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
<div class="row">
    <a href="/expertus">
    <div class="col-sm-4">
    <img src="resources/img/Exp_logo_RGB.svg" alt="logo Expertus" class="imgHeader">
    <jsp:useBean id="homepage" scope="session" class="beans.ElementsToDisplay"></jsp:useBean>
    <p style="display: inline">

        <jsp:getProperty property="title" name="homepage" /><br>

    </p>
</div></a>
<div class="col-sm-4">
    <p><a href="/expertusTSP">${sessionScope.user.userName}</a> </p>
</div>
    <div class="col-sm-4">
        <p>logout </p>
    </div>
</div>
</body>