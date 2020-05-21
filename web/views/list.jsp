<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Dmiwer
  Date: 21.05.2020
  Time: 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>

<body>
<div>
    <h1>Super app!</h1>
</div>

<div>
    <div>
        <div>
            <h2>Users</h2>
        </div>
        <%
            List<String> names = (List<String>) request.getAttribute("userNames");

            if (names != null && !names.isEmpty()) {
                out.println("<ui>");
                for (String s : names) {
                    out.println("<li>" + s + "</li>");
                }
                out.println("</ui>");
            } else out.println("<p>There are no users yet!</p>");
        %>
    </div>
</div>

<div>
    <button onclick="location.href='/web_project_war_exploded'">Back to main</button>
</div>
</body>
</html>
