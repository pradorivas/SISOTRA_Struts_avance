<%-- 
    Document   : ListadoOT
    Created on : 20/01/2017, 12:03:27 AM
    Author     : DENIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title> JSP Page</title>
    </head>
    <body><center>
        <h2><s:text name="titulo.listado"/></h2>
        <s:if test="listaOT.isEmpty()">
            No hay datos
        </s:if>
        <s:else>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID OT</th>
                        <th>Descripcion</th>
                        <th>Estado</th>
                    </tr>
                </thead>
                <s:iterator value="listaOT">
                    <tr>
                        <td><s:property value="IdOrdenT"/></td>
                        <td><s:property value="descripcion"/></td>
                        <td><s:property value="estado"/></td>
                        <s:url var="url1" action="modificarOT">
                            <s:param name="cod">
                                <s:property value="IdOrdenT"/>
                            </s:param>
                        </s:url>
                        <s:url var="url2" action="deleteOT">
                            <s:param name="cod">
                                <s:property value="IdOrdenT"/>
                            </s:param>
                        </s:url>
                        <td>
                            <s:a href="%{url1}">Editar</s:a>
                            </td>
                            <td>
                            <s:a href="%{url2}">Eliminar</s:a>
                            </td>
                        </tr>
                </s:iterator>
            </table>
        </s:else>
        <br>
        <br></center>
</body>
</html>


