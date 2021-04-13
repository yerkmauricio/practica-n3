<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>
            <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request">
                REGISTRO DE  
            </c:if>  
            
            <c:if test="${requestScope.op == 'modificar'}" var="res" scope="request">
                MODIFICAR
            </c:if> 
               PRODUCTO
        </h1>
        
        
        <jsp:useBean id="miProducto" scope="request" class="com.emergentes.modelo.Producto"/>
             
        <form action="Controller" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id"
                               value="<jsp:getProperty name="miProducto" property="id" />">
                    </td>
                </tr>
                <tr>
                    <td>PRODUCTO</td>
                    <td><input type="text" name="producto"
                               value="<jsp:getProperty name="miProducto" property="producto" />">
                    </td>
                </tr>
                <tr>
                    <td>PRECIO</td>
                    <td>
                        <input type="text" name="precio"
                               value="<jsp:getProperty name="miProducto" property="precio" />">
                    </td>
                </tr>
                <tr>
                    <td>CANTIDAD</td>
                    <td><input type="text" name="cantidad"
                               value="<jsp:getProperty name="miProducto" property="cantidad" />">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="hidden" name="opg" value="${requestScope.op}"/>
                        <input type="hidden" name="op" value="grabar"/>
                    </td>
                    <td> <input type="submit" value="enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
