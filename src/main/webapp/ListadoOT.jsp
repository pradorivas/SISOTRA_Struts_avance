<%-- 
    Document   : ListadoOT
    Created on : 20/01/2017, 12:03:27 AM
    Author     : DENIS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page </title>
</head>
<body>
    <s:label value="Bienvenido al Sistema  login.username"/>
    <br/><br/>
    <h1>Listado OT</h1>
    <table border="1">
        <thead>
            <tr>
                <th>ID OT</th>
                <th>Descripcion</th>
            </tr>
        </thead>

        <s:iterator value="listaOT">
            <tr>
                <td><s:property value="IdOrdenT"/></td>
                <td><s:property value="descripcion"/></td>
                <td><s:property value="estado"/></td>
                <td><s:url var="url1" action="modificarOT">
                        <s:param name="codigoOT">
                            <s:property value="OrdenTrabajo.IdOrdenT"/>
                        </s:param>
                    </s:url>
                        <s:a href="%{url1}">Editar</s:a>
                </td>
            </tr>
        </table>
    </s:iterator>
</body>
<!--        <p:column headerText="">
            <p:commandButton value="Modificar" oncomplete="PF('dlgModificar').show();" update=":formModificar">
                <f:setPropertyActionListener target="{ordenTrabajoBean.ordenTrabajo}" value="{ot}"/>
            </p:commandButton>
        </p:column>
        <p:column headerText="">
            <p:commandButton value="Eliminar" oncomplete="PF('dlgEliminar').show();" update=":formEliminar">
                <f:setPropertyActionListener target="{ordenTrabajoBean.ordenTrabajo}" value="{ot}"/>
            </p:commandButton>
        </p:column>
    


<p:dialog id="dlg" widgetVar="dlgModificar" header="Modificar Datos" showEffect="slide" 
          hideEffect="slide" modal="true" resizable="false" >
    <h:form id="formModificar">
        <p:panelGrid columns="2" style="margin: 0 auto; font-size: 12px;">
            
            <p:outputLabel value="codigo"/>
            <p:inputText value="{ordenTrabajoBean.ordenTrabajo.idOrdenT}" 
                         readonly="true"/>
            
            <p:outputLabel value="descripcion"/>
            <p:inputText value="{ordenTrabajoBean.ordenTrabajo.descripcion}"
                         required="true" requiredMessage="descripcion obligatorio" placeholder="Escriba sus descripcion"/>

            <p:commandButton value="Guardar Cambios" actionListener="{ordenTrabajoBean.modificarOrdenTrabajo()}" 
                             update=":form_lista_OT:Tabla_lista_ot" oncomplete="PF('dlgModificar').hide();"/>
            <p:commandButton value="Cancelar" onclick="PF('dlgModificar').hide();"
                             immediate="true"/>
        </p:panelGrid>    
        <p:inputText type="hidden" value="{ordenTrabajoBean.ordenTrabajo.estado}"/>
    </h:form>
</p:dialog>

<p:dialog id="dlg2" widgetVar="dlgEliminar" header="Eliminar Datos" showEffect="slide" 
          hideEffect="slide" modal="true" resizable="false">
    <h:form id="formEliminar" style="font-size: 12px;">
        <h:outputText value="Desea Eliminar esta OT? "/>
        <p:outputLabel value=" {ordenTrabajoBean.ordenTrabajo.idOrdenT}" />
        <p:commandButton value="Si" actionListener="{ordenTrabajoBean.eliminarOrdenTrabajo()}" 
                         update=":form_lista_OT" oncomplete="PF('dlgEliminar').hide();"/>
        <p:commandButton value="No" onclick="PF('dlgEliminar').hide();"/>
    </h:form>
</p:dialog>-->


