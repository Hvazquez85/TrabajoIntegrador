<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="domain.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Oradores a presentarse - Codo a codo</title>
	<link rel="stylesheet" href="./css/general.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
</head>
<body>
	<jsp:include page="./nav.jsp"/>
	<main>
        <div class="contenedor__dashboard__general">
            <section class="contenedor__dashboard">
                <h2>Encontra tus oradores favoritos por sus temas</h2>
                
                <form action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="post">
                    <div class="contenedor__dashboard__buscador__input">
                        <input class="contenedor__dashboard__buscador" name="temabuscar" id="temabuscar" type="search" placeholder="Escribi un tema" aria-label="Buscar">
                        <button class="contenedor__dashboard__btn" type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
                    </div>    
                    
                </form>
                
            </section>
    
            <section class="contenedor__oradores__presentacion" id="restoOradores">
    			
                <table class="tabla_dashboard">
                	<caption>Conoce todos los oradores que se presentan</caption>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Tema</th>
                            <th></th>
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
                            <td>
                                <a class="tabla__btn btn_color_cian" role="button" role="button" href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">Editar</a> | 
                                <button type="button" class="tabla__btn btn_color_rojo" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="openDeleteOradorModal(<%=unOrador.getId()%>)">Eliminar</button>
                            </td>
        
                        </tr>
                        
                        <%
                            }
                        %>
                        
                    </tbody>
                </table>
            </section>
        </div>
    
    </main>

    <div class="overlay" id="deleteOradorModal">
        <div class="contenedor__modal">
            <form action="<%=request.getContextPath()%>/DeleteOradorController">
                <input type="hidden" name="idOrador" id="idOrador">
                
                <div class="header__modal">
                    <h5 class="header__modal__title">Dar de baja Orador</h5>
                    <button class="title__modal__btn__close" type="button" onclick="closeDeleteOradorModal()" data-bs-dismiss="modal" aria-label="Close"><i class="fa-solid fa-xmark"></i></button>
                </div>

                <div class="body__modal">
                    ¿Confirma que desea eliminar?
                </div>

                <div class="footer__modal">
                    <button class="tabla__btn btn_color_cian" type="button" data-bs-dismiss="modal" onclick="closeDeleteOradorModal()">Cancelar</button>
                    <button class="tabla__btn btn_color_rojo" type="submit">Eliminar</button>
                </div>
            </form>
        </div>
    </div>
    
	<jsp:include page="./footer.jsp"/>
	<script src="./js/script.js"></script>
</body>
</html>