<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login - Codo a codo</title>
<link rel="stylesheet" href="./css/general.css">
<link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
</head>
<body>
	<jsp:include page="./nav.jsp"/>
	<main>
		<section class="contenedor__login">
            <div class="login" id="oradorInscripcion">
                <h2>Login - Codo a codo</h2>
    
                <form action="<%=request.getContextPath()%>/LoginAdminController" method="post">
                    <div class="formContenedor">
                        <div class="contenedor__fila">
                            <div class="inputContenedor">
                                <input type="text" name="nombre" placeholder="Usuario" aria-label="Nombre" required>
                            </div>
                        </div>
    
                        <div class="contenedor__fila">
                            <div class="inputContenedor">
                                <input type="password" name="password" placeholder="Contraseña" aria-label="Password" required>
                            </div>
                        </div>
    
                        <div class="contenedor__fila">
                            <div class="inputContenedor">
                                <input type="submit" value="Login">
                            </div>
                        </div>
                    </div>
                </form>
                
            </div>
        </section>
	</main>
	<jsp:include page="./footer.jsp"/>
</body>
</html>