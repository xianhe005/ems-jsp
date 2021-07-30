<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basepath %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>添加员工信息</title>
    </head>
    <body>
        <h3>添加员工信息：${param.msg}</h3>
        <form action="${pageContext.request.contextPath}/employee/add" method="POST">

          <table>

            <tr>
              <td valign="middle" align="right">
                姓名：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="name">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                工资：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="salary">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                生日：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="birthday">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                性别：
              </td>
              <td valign="middle" align="left">
                <select name="gender">
                    <option value ="1" selected>男</option>
                    <option value ="0">女</option>
                </select>
              </td>
            </tr>
          </table>

          <p>
            <input type="submit" class="button" value="提交"/>
          </p>
        </form>
    </body>
</html>