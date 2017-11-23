<%--
  Created by IntelliJ IDEA.
  User: sami-
  Date: 22/11/2017
  Time: 18:11
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link type="text/css" rel="stylesheet" href="../../resources/StyleSheet.css">
    <title>Title</title>
</head>
<body>
<header>
    <%@ include file="../body/header.jsp" %>
</header>
<br>
<div class="row">
    <div class="col-sm-6">
        <form method="post" action="expertus">
            <fieldset>
                <legend>Sign up!</legend>
                <input type="hidden" name="form" value="signUp">

                <div class="form-group">
                    <label for="username" class="control-label col-sm-6">User Name</label>
                    <div class="col-sm-6">
                        <input type="text" id="username" name="username" value="<c:out value="${user.userName}"/>"
                               size="20" maxlength="20"/>
                    </div>
                </div>
                </br>
                <div class="form-group">

                    <label for="password" class="control-label col-sm-6">Password</label>
                    <div class="col-sm-6">
                        <input type="password" id="password" name="password" required value="" size="20"
                               maxlength="20"/>
                    </div>
                </div>
                </br>
                <div class="form-group">
                    <label for="passwordconf" class="control-label col-sm-6">Password confirmation</label>
                    <div class="col-sm-6">
                        <input type="password" id="passwordconf" name="passwordconf" required value="" size="20"
                               maxlength="20"/>
                    </div>
                </div>
                </br>

                <div class="form-group">
                    <div class="col-sm-offset-6 col-sm-6">
                        <button type="submit" class="btn btn-default">Sign Up</button>
                    </div>
                </div>
                <br/>

                <p style="${form.success ? 'background-color: greenyellow' : 'background-color: red'}">${form.msg}</p>
            </fieldset>
        </form>
    </div>
    <div class="col-sm-6">

        <form method="post" action="expertus" class="form-horizontal">
            <fieldset>
                <legend>Sign in!</legend>
                <input type="hidden" name="form" value="signIn">
                <div class="form-group">
                    <label for="usernameC" class="control-label col-sm-6">User Name</label>
                    <div class="col-sm-6">
                        <input type="usernameC" id="usernameC" name="usernameC" required size="20" maxlength="60"/>
                    </div>
                </div>
                </br>
                <div class="form-group">
                    <label for="passwordC" class="control-label col-sm-6">password</label>
                    <div class="col-sm-6">
                        <input type="password" id="passwordC" name="passwordC" required value="" size="20"
                               maxlength="20"/>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-6 col-sm-6">
                        <button type="submit" value="Sign in" class="btn btn-default">Sign Up</button>
                    </div>
                </div>

                <p style="${form.successC ? 'background-color: greenyellow' : 'background-color:red'}">${form.msgC}</p>
            </fieldset>
        </form>
    </div>
</div>
<div>
    database:
    users:
<c:forEach items="${users}" var="user">
    ${user.userName}
</c:forEach>
</div>
</body>
</html>
