<%-- 
    Document   : payoff

--%>

<%@page import="java.security.AllPermission"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    //ServletContext application = getServletContext();
    String goods = request.getParameter("goods");
    String service = request.getParameter("service");
    Vector<String> v;
    v = (Vector<String>) application.getAttribute("mess");
    if (goods != null && service != null && !goods.equals("") && !service.equals("")) {
        if (v != null) {
            v.add(goods + ";" + service);
        } else {
            v = new Vector<String>();
            v.add(goods + " " + service);
            application.setAttribute("mess", v);
        }
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
       a{text-decoration:none;}
       body{background-color:#aabbcc;}
    </style>
    </head>
    <body>
    <center>
        <h1>欢迎来到手机大世界</h1>
        <hr/>
        <form id="form1" name="form1" method="post" action="">
            <table width="73%" height="249" border="0">
                <tr>
                    <td width="8%" height="76">评价商品</td>
                    <td width="92%"><textarea name="goods" cols="100" rows="5"></textarea></td>
                </tr>
                <tr>
                    <td height="93">评价服务</td>
                    <td height="93"><textarea name="service" cols="100" rows="5"></textarea></td>
                </tr>
                <tr align="center">
                    <td colspan="2"><input type="submit" name="Submit" value="提交评价" /></td>
                </tr>
            </table>
        </form>
        <%
            if (v != null) {
                for (int i = 0; i < v.size(); i++) {
        %>     
        <hr align="center" width="80%" size="1" noshade="noshade"/>
        <%
                    out.print(v.elementAt(i));
                }
            } else {
                out.print("目前还没有评论！");
            }
        %>

        <br/>
         <br/>
          <br/>
        <hr/>
        
        phonelist@peggy store
    </body>
</html>
