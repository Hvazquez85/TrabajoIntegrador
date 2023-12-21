<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="domain.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oradores - Codo a Codo</title>
    <link rel="stylesheet" href="./css/general.css">
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
</head>
<body>
<jsp:include page="./nav.jsp"/>
<main>
    <section class="contenedor__tabla">
        <table class="tabla">
                <caption>CONOCE TODOS LOS ORADORES QUE SE PRESENTAN</caption>

                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Tema</th>
                    </tr>
                </thead>
                <%
            	    List<Orador> listado = (List<Orador>)request.getAttribute("listado");
                %>
                <tbody>
                    <%
					    for( Orador  unOrador : listado) {
				    %>
                    <tr>
                        <td data-label="#"><%=unOrador.getId()%></td>
                        <td data-label="Nombre"><%=unOrador.getNombre()%></td>
                        <td data-label="Apellido"><%=unOrador.getApellido()%></td>
                        <td data-label="Tema"><%=unOrador.getTema()%></td>
                    </tr>
                    <%
                	    }
                    %>
                </tbody>
            </table>

        </section>
        
</main>
<jsp:include page="./footer.jsp"/>