<%-- 
    Document   : huawei_3c
    
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
     String infor;
     String phone[]=null;
     int num=0;
     Object total = session.getAttribute("total");
     if(total==null||total.toString().equals("0")){
        infor = "购物车是空的！"; 
     }
         else{
           infor = "您的购物车里的货物信息为：";
           num = Integer.parseInt(total.toString());
           phone = new String[num];
           for(int i=0;i<num;i++){
        	  // for(int j=0;j<num;j++) 
        		  //if(session.getAttribute("phone"+(j+1)).toString()==)
                 phone[i] = session.getAttribute("phone"+(i+1)).toString();
               //System.out.println(phone[i]);
           }
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
        </table>
                <hr/>
        phonelist@peggy store
    </center>
    </body>
</html>
