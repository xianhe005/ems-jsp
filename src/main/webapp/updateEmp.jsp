<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basepath %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>更新员工信息</title>
    </head>
    <body>
        <h3>更新员工信息：${param.msg}</h3>
        <form action="${pageContext.request.contextPath}/employee/update" method="POST">

          <table>

            <tr>
              <td valign="middle" align="right">
                ID：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" value="${employee.id}" disabled>
              </td>
            </tr>
            <input type="text" name="id" value="${employee.id}" hidden>
            <tr>
              <td valign="middle" align="right">
                姓名：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="name" value="${employee.name}">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                工资：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="salary" value="${employee.salary}">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                生日：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="birthday" value="<fmt:formatDate value="${employee.birthday}" pattern="yyyy/MM/dd"/>">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                性别：
              </td>
              <td valign="middle" align="left">
                <select name="gender">
                    <option value ="1"
                        <c:if test="${employee.gender}">
                            selected
                        </c:if>
                    >男</option>
                    <option value ="0"
                        <c:if test="${!employee.gender}">
                            selected
                        </c:if>
                    }">女</option>
                </select>
              </td>
            </tr>
          </table>

          <p>
            <input type="submit" class="button" value="更新"/>
          </p>
        </form>
    </body>
</html>