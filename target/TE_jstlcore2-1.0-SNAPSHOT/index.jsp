<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            if (session.getAttribute("listaper") == null){
                ArrayList<Persona> lista = new ArrayList<Persona>();
                //agregamos la lista a la coleccion
                lista.add(new Persona(1,"Fredy Condodri", "72012345", "freddy@hotmail.es"));
                lista.add(new Persona(2,"Asucena Martinez", "72012351", "asucean@hotmail.com"));
                lista.add(new Persona(3,"Maria Choque", "72012342", "maria@yahoo.com"));
               //colocamos la lista como una tributo de las session
               session.setAttribute("listaper", lista);
            }
        %>
        
        <h1>Ejemplos de JSTL Core</h1>
        <ul>
            <li><a href="jstl_if.jsp">Ejemplo del IF</a></li>
            <li><a href="jstl_choose.jsp"> Probando choose</a></li>
            <li><a href="jstl_foreach.jsp"> Recorriendo la coleccion son un foreach </a></li>
        </ul>

    </body>
</html>
