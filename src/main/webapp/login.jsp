<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
    <head>
        <base href="<%=basepath %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>用户登录</title>
    </head>
    <body>
        <h3>用户登录---->${param.msg}</h3>
        <form action="${pageContext.request.contextPath}/user/login" method="POST">

          <table>

            <tr>
              <td valign="middle" align="right">
                用户名：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="username">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                密码：
              </td>
              <td valign="middle" align="left">
                <input type="password" class="inputgri" name="password">
              </td>
            </tr>
          </table>

          <p>
            <input type="submit" class="button" value="提交"/>&nbsp;&nbsp;<input type="reset" class="button" value="重置"/>&nbsp;&nbsp;<input type="button" class="button" value="注册" onclick="location.href='${pageContext.request.contextPath}/register.jsp'"/>
          </p>
        </form>
    </body>
</html>