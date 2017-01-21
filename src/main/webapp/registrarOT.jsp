<%-- 
    Document   : registrarOT
    Created on : 20/01/2017, 12:08:31 AM
    Author     : DENIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><s:text name="formulario.titulo.nuevo"/></h1>
        
        <s:form action="EVregistrarOT">           
            <s:textfield key="formulario.nombre" name="ordenTrabajo.IdOrdenT"/>
            <s:textfield key="formulario.apellido" name="ordenTrabajo.Descripcion"/>
            <s:submit key="formulario.boton"/>
        </s:form>
        
        <p><s:actionmessage/></p>
    </body>
</html>
