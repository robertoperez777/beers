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
    <title>Sample Rate</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="stylesheets/screen.css" type="text/css" media="screen" />
</head>
<body>
    <div id="header">
        <div id="logo"><img alt="sample rate logo" src="images/samplerate2.gif" /></div>
    </div>
    <div id="nav">
        <ul>
            <li><a class="active" title="title" href="index2.html">BACK <-</a></li>
            <li><a title="title" href="intro1.html"> Experto en Chelas</a></li>
            <li><a title="title" href="#">Chelas Claras</a></li>
            <li><a title="title" href="#">Chelas Ambar</a></li>
            <li><a title="title" href="#">Oscuras</a></li>
        </ul>
    </div>
    <div id="wrap">

        <img id="masthead" alt="header image" src="images/estrella.jpg" width="100px"  align="center"/>
         <img id="masthead" alt="header image" src="images/chelas1.jpg" width="100px"  align="center"/>
        <h1>Recomendacion de CHEVES</h1>
        <p>
            
            <%
                List styles = (List)request.getAttribute("styles");
                Iterator it = styles.iterator();
                while(it.hasNext()) {
                out.print("<h1><br>RECOMENDAMOS: " + it.next() +"<h1><br>");
                }

                %>
                
         <h2><br>  CHELA FAVORITA DE LA SEMANA: ${chelasMap["Indio"]}
               ${chelaslista[0]} <h2><br>
        </p>
        
        <p> Host actual:
        <%= request.getHeader("host") %> </p> 
        <p></p>
        TODAS LAS RECOMENDACIONES DE CHELAS MEXICANAS (TODOS COLORES Y SABORES)
        <p></p>
        <TABLE>
            <%String[] items = (String[]) request.getAttribute("chelaslista");
            String var=null;
            for (int i=0; i <items.length; i++) {
                var = items[i];
               
                %>
                <tr><td><%= var %></td></tr>
                <%}%>
            
        </TABLE>
                <p></p>
               
        <div id="content">
            <h1>LAS CHEVES EN MEXICO</h1>
            <p>Las cheves mexicanas tienen larga historia como bebida fermentada tras la llegada de los conquistadores europeos en América. México es hoy uno de los principales exportadores de cerveza del mundo, pero su tradición cervecera viene de hace muchísimo tiempo. La Unesco posiciona al país como el sexto lugar a nivel mundial en consumo de cerveza, ingiriendo por persona anualmente 62 litros, quedando por debajo de España con 66 litros, Inglaterra con 103 litros, Alemania con 131 litros y República Checa con 169 litros.</p>
            <h1>MEXICANOS CHELEROS</h1>
            <p>México pinta para ser el cuarto país con mayor consumo de cerveza en el mundo, dijo Dolf van den Brink, presidente de Heineken-México, lo cual es un nuevo –y sabroso- récord. Pero lo que no dijo es que conforme a los datos de Euromonitor, las marcas Heineken-Moctezuma le comen mercado a las marcas de Anheuser Bush-Modelo que representa todavía Ricardo Tadeu</p>
        </div>
        <div id="sidebar">
            <p>Esta aplicacion permite darte algunos consejos de cuales cervezas elejir en base a tu gusto personal.</p>
        </div>
        <div id="footer">
            <p>Copyright &copy; 2016, ZENCONSULORA, all rights reserved.</p>
        </div>
    </div>
        <% out.println("<h3><br>hits: " +model.Counter.getCount() +"</h3>"); %>
</body>
</html>
