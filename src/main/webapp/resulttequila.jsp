<%-- 
    Document   : result
    Created on : 24-dic-2016, 10:05:29
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>TEQUILAS MEXICANOS</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="stylesheets/screen.css" type="text/css" media="screen" />
</head>
<body>
    <div id="header">
        <div id="logo"><img alt="sample rate logo" src="images/logoSS.png" /></div>
    </div>
    <div id="nav">
        <ul>
            <li><a class="active" title="title" href="index.html">BACK <-</a></li>
          <!--  <li><a title="title" href="intro1.html"> Experto en Chelas</a></li>
            <li><a title="title" href="#">Chelas Claras</a></li>
            <li><a title="title" href="#">Chelas Ambar</a></li>
            <li><a title="title" href="#">Oscuras</a></li> -->
        </ul>
    </div>
    <div id="wrap">

        <img id="masthead" alt="header image" src="images/hornitos2.jpg" width="100px"  align="center"/>
         <img id="masthead" alt="header image" src="images/1800a.jpg" width="100px"  align="center"/>
        <h1>RRECOMENDACION DE TEQUILAS</h1>
        <p>
            
            <%
                List styles = (List)request.getAttribute("styles");
                Iterator it = styles.iterator();
                while(it.hasNext()) {
                out.print("<h1><br>RECOMENDAMOS: " + it.next() +"<h1><br>");
                }

                %>
                
         <h2><br>  TEQUILA FAVORITA DE LA SEMANA: ${tequilasMap["Indio"]}
               ${tequilaslista[0]} <h2><br>
        </p>
        
        <p> Host actual:
        <%= request.getHeader("host") %> </p> 
        <p></p> 
        TODAS LAS RECOMENDACIONES DE TEQUILAS MEXICANOS 
        <p></p>
        <TABLE>
            <%String[] items = (String[]) request.getAttribute("tequilaslista");
            String var=null;
            for (int i=0; i <items.length; i++) {
                var = items[i];
               
                %>
                <tr><td><%= var %></td></tr>
                <%}%>
            
        </TABLE>
                <p></p>
               
         <div id="content">
		<img id="masthead" alt="header image" src="images/1800a.jpg" width="350px"  align="center"/>
            <h1>EL TEQUILA EN MEXICO</h1>
            <p>El tequila es la bebida predilecta de muchos mexicanos y un estandarte que ha llevado el nombre de México a otros países. Nos ha acompañado en la celebración de un triunfo o de un cumpleaños, al cantar con el mariachi y también, en las más fuertes tristezas.</p>
            <h1>MEJORES TEQUILAS</h1>
            <img id="masthead" alt="header image" src="images/hornitos.jpg" width="350px"  align="center"/>
			<p>Pero, ¿realmente conoces las clases de tequila que existen y sus diferencias? ¿Puedes distinguir sus distintos sabores? ¿Sabes cuándo es prudente elegir una clase u otra?</p>
        <p>Andrés Rodríguez, presidente internacional de la Academia Mexicana del Tequila, quien nos explicó cada detalle del tequila y nos hizo una selección de los mejores tequilas que podemos encontrar en nuestro país, para que no falles cuando tengas que elegir uno para una ocasión especial y tampoco te dejes seducir por botellas sofisticadas y altos precios que pudieran no precisamente garantizar el mejor tequila.</p>
		</div>
        <div id="sidebar">
            <p>Esta aplicacion permite darte algunos consejos de cuales tequilas elejir en base a tu gusto.</p>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2016, ZENCONSULORA, all rights reserved.</p>
        </div>
    </div>
	<a href="http://www.reliablecounter.com" target="_blank"><img src="http://www.reliablecounter.com/count.php?page=mytomcatapp-app314.rhcloud.com/index2.html&digit=style/plain/1/&reloads=0" alt="" title="" border="0"></a><br /><a href="http://www.curinglight.com" target="_blank" style="font-family: Geneva, Arial; font-size: 9px; color: #330010; text-decoration: none;">Polymerisationsleuchte</a>

</body>
</html>

