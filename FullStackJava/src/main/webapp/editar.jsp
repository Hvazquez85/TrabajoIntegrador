<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Modificar datos - Codo a codo</title>
	<link rel="stylesheet" href="./css/general.css">
	<link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
</head>
<body>
	<jsp:include page="./nav.jsp"/>
	<main>
        <section class="contenedor__modicador__datos" id="oradorInscripcion">
            <h2>Modificar datos del Orador</h2>
            
            <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
                <div class="formContenedor">
                    <div class="formContenedor__fila">
                        <div class="inputContenedor">
                            <input type="hidden" name="id" value="<%=orador.getId()%>">
                            <input type="text"
                            name="nombre" 
                            placeholder="Nombre" 
                            aria-label="Nombre"
                            id="validationCustom02"
                            value="<%=orador.getNombre()%>" 
                            required>
                        </div>
                        <div class="inputContenedor">
                            <input type="text" 
                            name="apellido" 
                            placeholder="Apellido" 
                            aria-label="Apellido"
		                    value="<%=orador.getApellido()%>" 
		                    required>
                        </div>
                    </div>
                    
                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <input type="email" 
                            name="mail" 
                            placeholder="Email" 
                            aria-label="Email"
		                    value="<%=orador.getMail()%>"  
		                    required>
                        </div>    
                    </div>


                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <textarea name="tema" 
                            id="exampleFormControlTextarea1"
		                    placeholder="<%=orador.getTema()%>" 
		                    required><%=orador.getTema()%> </textarea>
                            <span>Recuerda incluir un titulo para tu charla</span>
                        </div>
                    </div>

                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <input type="submit" value="Modificar">
                    	</div>
                	</div>
                </div>
            </form>
            
        </section>
    </main>
	<jsp:include page="./footer.jsp"/>
</body>
</html>