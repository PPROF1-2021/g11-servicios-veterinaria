//carousel

window.addEventListener('load', function(){
	new Glider(document.querySelector('.carousel__lista'), {
		slidesToShow: 4,
		slidesToScroll: 4,
		dots: '.carousel__indicadores',
		arrows: {
			prev: '.carousel__anterior',
			next: '.carousel__siguiente'
		},
		responsive: [
			{
			  // screens greater than >= 775px
			  breakpoint: 450,
			  settings: {
				// Set to `auto` and provide item width to adjust to viewport
				slidesToShow: 3,
				slidesToScroll: 3
			  }
			},{
			  // screens greater than >= 1024px
			  breakpoint: 800,
			  settings: {
				slidesToShow: 4,
				slidesToScroll: 4
			  }
			}
		]
	});
});




//  JavaScript de inicio para deshabilitar el envío de formularios si hay campos no válidos
(function () {
	'use strict'

	// Fetch all the forms we want to apply custom Bootstrap validation styles to
	var forms = document.querySelectorAll('.needs-validation')

	// Loop over them and prevent submission
	Array.prototype.slice.call(forms)
		.forEach(function (form) {
			form.addEventListener('submit', function (event) {
				if (!form.checkValidity()) {
					event.preventDefault()
					event.stopPropagation()
				}

				form.classList.add('was-validated')
			

			}, false)
		}
		
		)
})()

// Funciones de los eventos.

function miFuncion(){
            alert('Opción no disponible');
        
    }
	
function bigImg(x) {
    x.style.height = "550px";
    x.style.width = "550px";
    }

function normalImg(x) {
  x.style.height = "500px";
  x.style.width = "500px";
  
   
}

  function miMensaje() {
    alert("Agregaste el producto a tu carrito!..");
  }

function alerta(){
 var valor = document.getElementById('validationCustom01').value;  
 if(valor != ''){alert('Operación Exitosa: Se completo Correctamente el Formulario');} 
}


function calcularEdad(fecha) {
	//var fecha = document.getElementsByName('fecha').value;
    var hoy = new Date();
    var cumpleanos = new Date(fecha);
    var edad = hoy.getFullYear() - cumpleanos.getFullYear();
    var m = hoy.getMonth() - cumpleanos.getMonth();

    if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
        edad--;
    }

	if (edad >= 18){
		alert("Tiene: " + edad + " Años. Eres mayor de edad puedes continuar.");
	}else{
		if (isNaN(edad)){
			alert("Error: No has escrito la fecha de nacimiento. Corrijalo para continuar.");
		}
		else{
		alert("Tiene: " + edad + " Años. Eres menor de edad NO puedes continuar.");
		
	}
	}

}
