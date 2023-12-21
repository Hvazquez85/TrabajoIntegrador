<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprar tickets - Codo a Codo</title>
    <link rel="stylesheet" href="./css/general.css">
    <link rel="shortcut icon" href="./assets/img/codoacodo.png" type="image/x-icon">
</head>
<body>
    <jsp:include page="./nav.jsp"/>
    
    <main>
        <div class="contenedor_tarjetas">
            <div class="contenedor_categoria ctn_color_azul categoria_estudiante">
                <h3>Estudiante</h3>
                <p>Tiene un descuento<span>80%</span></p>
                <p class="color_gris">*presentar documentacion</p>
            </div>

            <div class="contenedor_categoria ctn_color_celeste categoria_trainee">
                <h3>Trainee</h3>
                <p>Tiene un descuento<span>50%</span></p>
                <p class="color_gris">*presentar documentacion</p>
            </div>

            <div class="contenedor_categoria ctn_color_mostaza categoria_junior">
                <h3>Junior</h3>
                <p>Tiene un descuento<span>15%</span></p>
                <p class="color_gris">*presentar documentacion</p>
            </div>
        </div>

        <section class="venta_tickets">
            <h1>VENTA<span>VALOR DE TICKET $200</span></h1>

            <form>
                <div class="formContenedor">
                    <div class="formContenedor__fila">
                        <div class="inputContenedor inputContenedorNombre">
                            <input type="text" id="nombre" placeholder="Nombre" >
                        </div>
                        <div class="inputContenedor inputContenedorApellido">
                            <input type="text" id="apellido" placeholder="Apellido">
                        </div>
                    </div>
                    <div class="contenedor_fila_correo inputContenedorCorreo">
                        <input type="text" id="correo" placeholder="Correo">
                    </div>

                    <div class="formContenedor__fila">
                        <div class="inputContenedor inputContenedorCantidad" >
                            <label class="info_contenedor" for="cantidad">Cantidad</label>
                            <input type="text" id="cantidad" placeholder="Cantidad">
                        </div>
                        <div class="inputContenedor">
                            <label class="info_contenedor" for="categoria">Categoria</label>
                            <select name="categoria" id="categoria" class="conteneder_opciones">
                                <option value="Estudiante">Estudiante</option>
                                <option value="Trainee">Trainee</option>
                                <option value="Junior">Junior</option>
                                <option value="General">General</option>
                            </select>
                        </div>
                    </div>

                    <div class="contenedor_total">
                        <p>Total a pagar: $ <span id="total"></span></p>
                    </div>
            

                    <div class="contenedor__fila">
                        <div class="inputContenedor_btns">
                            <input id="btn_borrar" type="button" value="Borrar">
                            <input id="btn_resumen" type="button" value="Resumen">
                        </div>
                    </div>
                </div>
            </form>
        </section>
    </main>

    <jsp:include page="./footer.jsp"/>
    <script src="./js/script.js"></script>
</body>
</html>