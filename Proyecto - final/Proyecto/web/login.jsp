<%-- 
    Document   : buscar
    Created on : 20/10/2017, 07:57:27 PM
    Author     : Luis Guillermo Hernandez Araujo #1682364
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelos.ComentariosPOJO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body background="Fondo.jpg">
        <h1 align="center">Iniciar Sesion</h1>
        <form action = "ComentariosControlador" method = "post" >
           
            
            <h3 align="center">Correo electronico</h3>
            <p align="center">
                <input type = "text" name = "name"/></br>
            </p>
            <h3 align="center">Contraseña</h3>
            <p align="center">
                <input type="password" name="comentario"/></</br>
            </p>
            <p align="center">
                <input type ="submit" value ="Entrar"/> 
            </p>
            <p align="center">
                <input type="hidden" name="action" value="buscar"></br>
            </p>
            
            
        </form>
                <a href="index.html" value="buscar" ><h2 align="center">Registrate aqui</h2></a></br>

        <%
            if(session != null){
                ArrayList  comentarios = (ArrayList)session.getAttribute("comentarios");
                if(comentarios != null){
        %>
        <table align="center" cellspacing="20"> 
            <tr>
                <th>Nombre</th>
                <th>Opciones</th>
            </tr> 
            <%
                for(Object o: comentarios){
                    ComentariosPOJO cms = (ComentariosPOJO) o;
            %>
             <tr>
                 <td><h3 align="center"><%=cms.getNombre()%></h3></td>
                 <td><%
                     if(cms.getNombre() != null)
                        {%>
                            <a href="Home.html"><h3 align="center">Iniciar sesion</h3></a></br>
                        <%}
                        %></td>
             </tr>  
             <%}%>
        </table> 
        
        <% }
        }
        %>
    </body>
</html>
