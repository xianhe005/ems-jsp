<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ page import="java.util.*" %>
<html>
    <head>
        <base href="<%=basepath %>" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>注册用户</title>
    </head>
    <body>
        <h3>注册---->${param.msg}</h3>
        <form action="${pageContext.request.contextPath}/user/register" method="POST">

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
                真实姓名：
              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="realname">
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

            <tr>
              <td valign="middle" align="right">
                性别：
              </td>
              <td valign="middle" align="left">
                男
                <input type="radio" class="inputgri" name="gender" value="1" checked= "checked">
                女
                <input type="radio" class="inputgri" name="gender" value="0">
              </td>
            </tr>

            <tr>
              <td valign="middle" align="right">
                验证码：
                <img id="num" src="${pageContext.request.contextPath}/user/generateImageCode">
                <a href="javascript:;" onclick="document.getElementById('num').src='${pageContext.request.contextPath}/user/generateImageCode?' + (new Date()).getTime()">换一张</a>

              </td>
              <td valign="middle" align="left">
                <input type="text" class="inputgri" name="code">
              </td>
            </tr>
          </table>

          <p>
            <input type="submit" class="button" value="提交">&nbsp;&nbsp;<input type="button" class="button" value="注册" onclick="location.href='${pageContext.request.contextPath}/login.jsp'"/>
          </p>
        </form>
    </body>
</html>