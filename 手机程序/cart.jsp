<%-- 
    Document   : huawei_3c
    
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String price = request.getParameter("price");
    //int count=Integer.parseInt(request.getParameter("count"));
    Object total=session.getAttribute("total");
    if(total==null){
         session.setAttribute("total",1);
         session.setAttribute("phone1", "商品编号："+id+",名称："+name+",价格："+price);
    }
    else
    {
         int num = Integer.parseInt(session.getAttribute("total").toString());
         session.setAttribute("total", num+1);
         session.setAttribute("phone"+(num+1), "商品编号："+id+",名称："+name+",价格："+price);
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>欢迎来到手机大世界</h1>
        <hr/>
        <table width="80%" border="1">
          <tr>
            <td width="34%">商品已经成功加入购物车！</td>
            <td width="19%" align="right"><div align="center"><a href="phoneList.jsp">继续购物</a></div></td>
            <td width="21%"><div align="center"><a href="cart_detail.jsp">查看购物车</a></div></td>
            <td width="26%"><div align="center"><a href="buy.jsp">立即结算</a></div></td>
          </tr>
        </table>
                <hr/>
        phonelist@peggy store
    </center>
    </body>
</html>
