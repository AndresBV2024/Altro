<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltroBusqueda.aspx.cs" Inherits="Proyecto_Altro.AltroBusqueda" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Buqueda Reserva</title>
     <style>
  
     #miDiv {
   width: 8.5in;
   text-align: justify; /* Justificar el texto */
   margin: 0 auto;
   /*margin-left: 250px;*/ /* Ajuste para compensar el ancho del sidebar */
            /*padding: 20px;*/
 }

    /* Estilos para la impresión */
    @media print { 
        @page {
        margin-top: 2cm; /* Margen superior de 2 cm */
    }
    .contenido {
        
        text-align: justify;
        font-size: 12pt;
        line-height: 1.5;
    }
    }
     /* Estilo para los TextBox */
     .estilo-textbox {
         border: none;
         border-bottom: 1px solid black;
         font-family: Arial;
         font-size: 16px;
     }
   @media print {
      .no-imprimir {
         display: none !important;
          overflow: visible !important;
      }
       body {
   -webkit-print-color-adjust: exact;
        }
   }
   .nav-link-button {
        max-width: 100%;
        max-height: 100%;
    }
   .nav-link-divider {
    border-right: 1px solid rgba(0, 0, 0, 0.1);
    margin: 0 10px; /* Ajusta el margen según sea necesario */
}
   /* Márgenes de 2.5cm --------------------------------------------- */
     body {
            margin-top: 0.5cm; /* Margen superior de 3cm */
            margin-bottom: 1cm; /* Margen inferior de 2cm */
            margin-left: 1cm; /* Margen izquierdo de 2.5cm */
            margin-right: 1cm; /* Margen derecho de 2.5cm */
        }
        
        /* Establece el tamaño de la página */
        @page {
            size: 21cm 29.7cm; /* Tamaño de una hoja carta */
            margin-top: 1.5cm; /* Margen superior de 3cm */
            margin-bottom: 1cm; /* Margen inferior de 2cm */
            margin-left: 1cm; /* Margen izquierdo de 2.5cm */
            margin-right: 1cm; /* Margen derecho de 2.5cm */
        }

         /* Estilos adicionales para el sidebar */
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            width: 250px;
            background-color: white; /* Color del sidebar */
            padding-top: 20px; /* Ajuste del espacio para el encabezado */
        }
        /* Ajuste texto del espacio para el encabezado */
        .sidebar a {
            padding: 5px 10px;
            text-decoration: none;
            font-size: 18px;
            color: black;
            display: block;
            
          
            
        }
        .sidebar a:hover {
            background-color: whitesmoke; /* Color de fondo al pasar el mouse */
           
             
        }

</style>
</head>
<body>
    <form id="form1" runat="server">

   <div class="sidebar text-center">
    <h3>Altro <br />Buquedas</h3>
    <ul class="nav flex-column">
      <table>
    <tr>
        <td>
            <asp:RadioButton ID="rb1" runat="server" Checked="True" Text="" GroupName="Busqueda" onclick="rbBusqueda(this)" CssClass="form-check-input" />
    <label class="form-check-label" for="rb1">Id</label>
        </td>
        <td>
              <asp:RadioButton ID="rb2" runat="server" Text="" GroupName="busqueda" onclick="rbBusqueda(this)" CssClass="form-check-input" />
    <label class="form-check-label" for="rb2">Nombre</label>
        </td>
    </tr>
</table>
                         <p class="saltos"></p>
                       <asp:TextBox ID="txtbuscar" CssClass="estilo-textbox" runat="server">                
                       </asp:TextBox>
                         <p class="saltos"></p>
       
                          <asp:LinkButton ID="LbBuscar" runat="server" CssClass="btn btn-outline-link my-2 my-sm-0" OnClick="btnBuscar_Click" 
                            data-toggle="popover" data-placement="bottom" title="Buscar" 
                            data-content="Iniciar Busqueda" data-trigger="hover" style="margin-bottom: 10px;">Buscar</asp:LinkButton>
    </ul>
</div>



        <div>
        </div>
            <%-- contenido de la pagina ---------------------------------------------------------------%>
        <br />
          <div class="contenido" style="margin-left:500px;">
              <asp:GridView ID="gvdata" runat="server">
                  
              </asp:GridView>


              </div>
          <%-- script ---------------------------------------------------------------%>
                <script>
                    function imprimirPagina() {
                        window.print();
                    }
                </script>

    

     <script>
         function rbBusqueda(radioButton) {
             var otrosRadios = document.querySelectorAll('[id^="rb"]');
             for (var i = 0; i < otrosRadios.length; i++) {
                 if (otrosRadios[i] !== radioButton) {
                     otrosRadios[i].checked = false;
                 }
             }
         }
     </script>



   <%--     <script type="text/javascript">
            function seleccionarEnAmbos(elemento) {
                var valorSeleccionado = elemento.value;
                document.getElementById('<%=ddlapto2.ClientID %>').value = valorSeleccionado;

            }
        </script>--%>
<%--<script type="text/javascript">
    function seleccionarEnAmbospiso(elemento) {
        var valorSeleccionado = elemento.value;

        document.getElementById('<%=ddlpiso2.ClientID %>').value = valorSeleccionado;
    }
</script>--%>

    <script>
        function mostrarTextock() {
            var selectedValue = document.querySelector('input[name="opcion"]:checked').value;

            var textos = document.querySelectorAll('.texto-opcion');
            for (var j = 0; j < textos.length; j++) {
                textos[j].style.display = 'none';
            }

            var textoMostrar = document.getElementById(selectedValue);
            if (textoMostrar) {
                textoMostrar.style.display = 'block';
            }
        }
    </script>


   <script>
       function mostrarTexto() {
           // Obtener el valor seleccionado del DropDownList
           var selectedValue = parseInt(document.getElementById('ddlDocumnetos').value);

           // Ocultar todos los textos
           var numeros = [1, 2, 3, 4, 5];
           for (var i = 0; i < numeros.length; i++) {
               var texto = document.getElementById(numeros[i]);
               if (texto) {
                   texto.style.display = 'none';
               }
           }

           // Mostrar el texto correspondiente al valor seleccionado
           var textoMostrar = document.getElementById(selectedValue);
           if (textoMostrar) {
               textoMostrar.style.display = 'block';
           }
       }
   </script>


     <script>
             function toggleDescuento() {
                 var contenedor = document.getElementById('contenedorDescuento');
                 if (contenedor.style.display === 'block') {
                     contenedor.style.display = 'none';
                 } else {
                     contenedor.style.display = 'block';
                 }
             }
     </script>
      <script>
          function soloNumeros(event) {
              var charCode = (event.which) ? event.which : event.keyCode;
              if (charCode == 46 || charCode == 44) { // Permitir punto (.) y coma (,)
                  return true;
              }
              if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                  alert("Este campo solo acepta números y los caracteres ',' y '.' como separadores decimales o miles.");
                  return false;
              }
              return true;
          }
      </script>

                 <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
 <!-- jQuery (Necesario para Bootstrap) -->
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <!-- Bootstrap 5 JavaScript -->
 <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  

    </form>
</body>
</html>
