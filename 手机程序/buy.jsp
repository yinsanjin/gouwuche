<%-- 
    Document   : huawei_3c
   
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
     String infor;
     String phone[]=null;
     int num=0;
     double price=0;
     Object total = session.getAttribute("total");
     if(total==null||total.toString().equals("0")){
        infor = "购物车是空的！"; 
     }
         else{
           infor = "您的购物车里的货物信息为：";
           num = Integer.parseInt(total.toString());
           phone = new String[num];
           for(int i=0;i<num;i++){
               phone[i] = session.getAttribute("phone"+(i+1)).toString();
               int index = phone[i].toString().lastIndexOf("：");
               price  += Double.parseDouble(phone[i].toString().substring(index+1));
           }
         }
     
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>欢迎来到手机大世界</h1>
        <hr/>
                <table width="80%" border="1" align="center">
           <% 
            if(num==0){
                %>
                  <tr align="center">
                  <td width="34%"><%=infor%></td>
                 </tr>
            <%
            }
            else
            {
            %>  
                 <tr align="center">
                  <td width="34%"><%=infor%></td>
                 </tr>
            <%
             for(int i=0;i<num;i++){
              %>
                  <tr align="center">
                  <td width="34%"><%=phone[i]%></td>
                 </tr>
              <%
            }
            }
        %>
        <tr align="center"><td>您一共要付的总价格为：<%=price%>元</td></tr>
        <tr align="center"><td><input type="button"  value="确定付款" onclick="window.location.href='payoff.jsp'"/><input type="button"  value="评价商品" onclick="window.location.href='comment.jsp'"/></td></tr>
        </table>
                <hr/>
        phonelist@peggy store
    </center>
    </body>
</html>
