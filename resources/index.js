document.addEventListener("DOMContentLoaded", function () {
    // Constantes para valores y descuentos
    const ticketInfo = {
      valor: 1000,
      descuentos: {
        estudiante: 0.35,
        trainee: 0.25,
        junior: 0.15,
      },
    };
  
    // Elementos del formulario
    const formElements = {
      nombre: document.querySelector('input[placeholder="Nombre"]'),
      apellido: document.getElementById("apellido"),
      mail: document.getElementById("mail"),
      cantidadTickets: document.getElementById("cantidadTickets"),
      categoria: document.getElementById("categoriaSelect"),
    };
  
    const totalPago = document.getElementById("totalPago");
  
    const btnResumen = document.getElementById("btnResumen");
    const btnBorrar = document.getElementById("btnBorrar");
  
    // Función para quitar el estilo de error
    function quitarClaseError() {
      const formControls = document.querySelectorAll(".form-control");
      formControls.forEach((control) => control.classList.remove("is-invalid"));
    }
  
// Función para calcular el total a pagar
function total_a_pagar() {
    quitarClaseError();
    const cantidad = parseInt(formElements.cantidadTickets.value);
    const categoriaValue = parseInt(formElements.categoria.value);
    let totalValorTickets = cantidad * ticketInfo.valor;
  
    if (categoriaValue === 1 || categoriaValue === 2 || categoriaValue === 3) {
      const categoriaSeleccionada = formElements.categoria.options[formElements.categoria.selectedIndex].text.toLowerCase();
      const descuento = ticketInfo.descuentos[categoriaSeleccionada];
      totalValorTickets -= descuento * totalValorTickets;
    }
  
    totalPago.textContent = totalValorTickets;
  }
  
    // Función para borrar el total
    function reset_total_a_pagar() {
      quitarClaseError();
      totalPago.textContent = "";
    }
  
    // Agregar escuchadores de eventos
    btnResumen.addEventListener("click", total_a_pagar);
    btnBorrar.addEventListener("click", reset_total_a_pagar);
  });
  