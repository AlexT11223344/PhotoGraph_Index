<%--
  Created by IntelliJ IDEA.
  User: Alex Tang
  Date: 2022/6/24
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home Page</title>
</head>
<body>


<form name="keyword" action="ServiceLogic" method="get">
    <h2>Input keyword:</h2>
    <input type="text" name="keyword">
    <input type="submit" id="search" value="Search">
    <div>Input key word : ${Keyword}</div>

</form>

<form name="DBinfo" action="DbInfoServlet" method="get">
    <h2>Test connection to the DB and get infomation from it</h2>
    <input type="submit" value="Test1">
</form>

<form name="servicelogic" action="ServiceLogic" method="get">
    <h2>Test results for the input value and dbinfo</h2>
    <input type="submit" value="Test2">
</form>

<p>*********************************************************</p>
<div>Keywords list: </div>
<%--<c:forEach items="${Keywords}" var="keywords" varStatus="i">--%>
<%--    <li>${i.index + 1}. ${keywords}</li>--%>
<%--</c:forEach>--%>

<p>*********************************************************</p>
<div>Results : </div>
<c:forEach items="${result_FileName}" var="result_filename" varStatus="i">
    <li>${i.index + 1}. ${result_filename}</li>
</c:forEach>

<p id="keyword_print"></p>

</body>
</html>
