<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%@page  import="com.emergentes.modelo.GestorProductos"%>
<%
   if (session.getAttribute("agenda")== null)
   {
       GestorProductos objeto1 = new GestorProductos();
       objeto1.insertarProducto(new Producto(1, "COCA COLA","8.5",100));
       objeto1.insertarProducto(new Producto(2, "PEPSI","11",50));
       objeto1.insertarProducto(new Producto(3, "FRACK","6",100));
       objeto1.insertarProducto(new Producto(4, "SERRANITAS","2.5",80));
       
       session.setAttribute("agenda", objeto1);
   }
%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL - PRODUCTOS </title>
    </head>
    <body>
         <h1>LISTA DE PRODUCTOS</h1>
        <a href="Controller?op=nuevo">NUEVO PRODUCTO</a>
        <table border="2">
            <tr>
                <th>ID</th>
                <th>PRODUCTO</th>
                <th>PRECIO</th>
                <th>CANTIDAD</th>
                <th>MODIFICAR</th>
                <th>ELIMINAR</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}">MODIFICAR</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}">ELIMINAR</a></td>
                </tr>                
            </c:forEach>
        </table>
    </body>
</html>
