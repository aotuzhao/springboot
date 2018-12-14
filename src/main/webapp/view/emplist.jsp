<%@ page  pageEncoding="UTF-8"
         isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>emplist</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/css/style.css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js"></script>
    <style type="text/css">

        #whereami a:link, #whereami a:visited {
            color: #B334B2;
            text-decoration: underline;
        }

        #uf h1, #uf h2,
        #uf h3, #uf h4, #uf h5 {
            color: #B334B2;
        }

        #uf h1 {
            font-family: "Trebuchet MS", Arial, Helvetica;
            padding: 0;
            margin: 0 0 15px 0;
            font-size: 2em;
        }

        #uf h2 {
            font-family: "Trebuchet MS", Arial, Helvetica;
            padding: 0;
            margin: 0 0 15px 0;
            font-size: 1.5em;
        }


        #af h1, #af h2,
        #af h3, #af h4, #af h5 {
            color: #B334B2;
        }

        #af h1 {
            font-family: "Trebuchet MS", Arial, Helvetica;
            padding: 0;
            margin: 0 0 15px 0;
            font-size: 2em;
        }

        #af h2 {
            font-family: "Trebuchet MS", Arial, Helvetica;
            padding: 0;
            margin: 0 0 15px 0;
            font-size: 1.5em;
        }

    </style>

</head>
<body>
<div id="wrap">
    <div id="top_content">
        <jsp:include page="header.jsp"/>
        <div id="content">

            <h1>Welcome!</h1>
            <table class="table">
                <tbody id="tbody">
                <tr class="table_header">
                    <td>ID</td>
                    <td>Name</td>
                    <td>Salary</td>
                    <td>Age</td>
                    <td>Operation</td>
                </tr>
                <c:forEach var="emp" items="${requestScope.emps}">
                    <tr class="row1">
                        <td>${emp.id}</td>
                        <td>${emp.name} </td>
                        <td>${emp.salary} </td>
                        <td>${emp.age} </td>
                        <td><fmt:formatDate value="${emp.indate}" pattern="yyyy-MM-dd"/> </td>
                    </tr>
                </c:forEach>

                </tbody>

            </table>

        </div>
        <jsp:include page="footer.jsp"/>
    </div>
</div>
</body>
</html>

