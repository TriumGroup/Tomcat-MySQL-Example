<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Users</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container">
      <h2>Tomcat + MySQL Example</h2>
      <p>Created by Mikhail Snitavets, Ivan Shimko, Andrey Tatarenko</p>
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Email</th>
            <th>Phone</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="user" items="${requestScope.users}">
            <tr>
              <td>${user.id}</td>
              <td>${user.name}</td>
              <td>${user.surname}</td>
              <td>${user.email}</td>
              <td>${user.phone}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
