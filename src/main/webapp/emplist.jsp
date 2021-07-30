<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basepath %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Insert title here</title>
    </head>
    <body>
        <h1>emp list</h1>
        <div id="wrap">
            <div id="top_content">
                <div id="header">
                    <div id="rightheader">
                        <p>
                            2009/11/16
                            <br/>
                        </p>
                    </div>
                    <div id="topheader">
                        <h3 id="title">
                            <a href="#">main</a>
                        </h3>
                    </div>
                    <div id="navigation"></div>
               </div>
               <div id="content">
                    <p id="whereami"></p>
                    <h3>
                        Welcome ${sessionScope.user.realname}
                    </h3>
                    <table class="table" border="1" cellpadding="0" cellspacing="0">
                        <tr class="table_header">
                            <td>
                                ID
                            </td>
                            <td>
                                Name
                            </td>
                            <td>
                                Salary
                            </td>
                            <td>
                                Birthday
                            </td>
                            <td>
                                Gender
                            </td>
                            <td>
                                Operation
                            </td>
                        </tr>
                        <c:forEach items="${requestScope.employees}" var="employee" varStatus="sta">

                            <tr
                                <c:if test="${sta.index % 2 == 0}">
                                    class="row1"
                                </c:if>
                                <c:if test="${sta.index % 2 != 0}">
                                    class="row2"
                                </c:if>
                            >
                                <td>
                                    ${employee.id}
                                </td>
                                <td>
                                    ${employee.name}
                                </td>
                                <td>
                                    ${employee.salary}
                                </td>
                                <td>
                                    <fmt:formatDate value="${employee.birthday}" pattern="yyyy/MM/dd"/>
                                </td>
                                <td>
                                    ${employee.gender?"男":"女"}
                                </td>
                                <td>
                                    <a href="javascript:;" onclick="deleteEmployee()">删除</href>
                                    <script>
                                      function deleteEmployee() {
                                        if(window.confirm('确定要删除这条记录吗？')) {
                                          location.href = '${pageContext.request.contextPath}/employee/delete?id=${employee.id}';
                                        }
                                      }
                                    </script>
                                    &nbsp;
                                    <a href="${pageContext.request.contextPath}/employee/detail?id=${employee.id}">更新</href>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>

                    <p>
                        <a href="${pageContext.request.contextPath}/addEmp.jsp">添加员工信息</href>
                    </p>
               </div>
            </div>
        </div>
    </body>

    <style>
      .table {
        width: 60%;
      }
      .td {
        width: 10%;
      }
      .table_header {
        background-color: gray;
        color: blue;
      }
      .row1 {
        background-color: white;
      }
      .row2 {
        background-color: rgb(209, 207, 207);
      }
    </style>
</html>