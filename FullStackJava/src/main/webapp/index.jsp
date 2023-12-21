<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>La conferencia - Codo a Codo</title>
    <link rel="stylesheet" href="./css/general.css">
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
</head>
<body>
	
	<jsp:include page="./header.jsp"/>
    <main>
        <section id="oradores" class="oradores">
            <h2>CONOCE A LOS <span>ORADORES</span></h2>
            <div class="contenedor_general">
                <div class="contenedor__foto__descripcion">
                    <div class="img">
                        <img src="./assets/img/steve.jpg" alt="Foto de Steve Jobs">
                    </div>
                    <div class="contenido">
                        <h4 class="colorAmarillo">JavaScript</h4>
                        <h4 class="colorCeleste">React</h4>
                        <h3>Steve Jobs</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam molestiae laborum 
                        ipsam totam qui ducimus praesentium at, similique, atque provident veritatis 
                        iure non cumque porro! Iste dicta vero cum eligendi?</p>
                    </div>
                </div>
                <div class="contenedor__foto__descripcion">
                    <div class="img">
                        <img src="./assets/img/bill.jpg" alt="Foto de Bill Gates">
                    </div>
                    <div class="contenido">
                        <h4 class="colorAmarillo">JavaScript</h4>
                        <h4 class="colorCeleste">React</h4>
                        <h3>Bill Gates</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam molestiae laborum 
                        ipsam totam qui ducimus praesentium at, similique, atque provident veritatis 
                        iure non cumque porro! Iste dicta vero cum eligendi?</p>
                    </div>
                </div>
                <div class="contenedor__foto__descripcion">
                    <div class="img">
                        <img src="./assets/img/ada.jpeg" alt="Foto de Ada Lovelace">
                    </div>
                    <div class="contenido">
                        <h4 class="colorGris">JavaScript</h4>
                        <h4 class="colorRojo">React</h4>
                        <h3>Ada Lovelace</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam molestiae laborum 
                        ipsam totam qui ducimus praesentium at, similique, atque provident veritatis 
                        iure non cumque porro! Iste dicta vero cum eligendi?</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="seccion__resto__oradores">
            <a href="<%=request.getContextPath()%>/FindAllOradorController" class="btn_ancla btn_resto_oradores">Conoce al resto de ORADORES</a>
        </section>

        <section class="seccion__lugar__fecha" id="lugarYFecha">
            <div class="seccion__lugar__fecha__imagen">
                <img src="./assets/img/honolulu.jpg" alt="Imagen de Hawai">
            </div>
            <div class="seccion__lugar__fecha__informacion">
                <h2>Bs As - Octubre</h2>
                <p>Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos. 
                    Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu 
                    se refiere al área urbana en la costa sureste de la Isla de Oabu, la ciudad y el condado de Honolulu han 
                    formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km<span>2</span> de superficie)</p>
                <a class="btn_ancla btnColorTransparente" href="#">Conocé más</a>
            </div>
        </section>

        <section class="inscripcion__orador" id="oradorInscripcion">
            <h2>CONVIÉRTETE EN UN <span>ORADOR</span></h2>
            <p>Anótate como orador para dar una <span>charla ignite.</span> Cuéntanos de qué quieres hablar!</p>
            
            <form action="<%=request.getContextPath()%>/CreateOradorController" method="POST">
                <div class="formContenedor">
                    <div class="formContenedor__fila">
                        <div class="inputContenedor">
                            <input name="nombre" placeholder="Nombre" aria-label="Nombre" required>
                        </div>
                        <div class="inputContenedor">
                            <input name="apellido" placeholder="Apellido" aria-label="Apellido" required>
                        </div>
                    </div>
                    
                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <input type="email" name="mail" placeholder="Email" aria-label="Email" required>
                        </div>
                    </div>

                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <textarea name="tema" placeholder="Sobre que quieres hablar?" required></textarea>
                            <span>Recuerda incluir un titulo para tu charla</span>
                        </div>
                    </div>

                    <div class="contenedor__fila">
                        <div class="inputContenedor">
                            <input type="submit" value="Enviar">
                    	</div>
                	</div>
                </div>
            </form>
            
        </section>
    </main>
    <jsp:include page="./footer.jsp"/>
</body>
</html>