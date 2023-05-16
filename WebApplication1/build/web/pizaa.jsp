<%-- pizza.jsp --%>
<!DOCTYPE html>
<html>
<head>
 <title>Pizza Toppings</title>
 <style>
     p{
         text-align: center;
     }
    img {
      display: block;
      margin: 0 auto;
      width: 35vh;
      height: 30vh;
    }
  </style>
</head>
<body>

 <!--<h1>Pizza Toppings</h1>-->

 <%
 String salute[] = request.getParameterValues("salute");
 String name = request.getParameter("name");
 String toppings[] = request.getParameterValues("toppings");
 %>

 <p >Dear <strong><%= salute[0] %> <%= name %></strong></p>
 <img src="pizza.jpg" >
 <p>Your Pizza is served with your favorites toppings: 
  <%
 out.print(toppings[0]);
 for (int i=1; i<toppings.length; i++) {
 out.print(" ,"+toppings[i]);
 }
 %>
 </p>
 <!--<p><strong>Toppings:</strong></p>-->
 <ul>
 <%
// for (int i=0; i<toppings.length; i++) {
// out.println("<li>" + toppings[i] + "</li>");
// }
 %>
 </ul>

</body>
</html>