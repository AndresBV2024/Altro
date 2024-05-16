<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Altro.aspx.cs" Inherits="Proyecto_Altro.ProyectoAltro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
           <title>Formulario de Reserva Altro</title>
              
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
          .checkbox-hidden {
              position: absolute;
              overflow: hidden;
              clip: rect(0 0 0 0);
              height: 1px;
              width: 1px;
              margin: -1px;
              padding: 0;
              border: 0;
            }
      

    /* Estilo para cuando el switch está activado */
   
   .switch {
      position: relative;
      display: inline-block;
      width: 40px;
      height: 20px;
      background-color: lightgrey; /* Color de fondo cuando está activo */
      border-radius: 20px;
      margin: 5px;
    }

    #miSwitch:not(:checked) + .switch {
      background-color: royalblue ; /* Color de fondo cuando está inactivo */
    }

    .switch::before {
      content: '';
      position: absolute;
      width: 16px;
      height: 16px;
      border-radius: 50%;
      background-color: white;
      top: 2px;
      left: 2px;
      transition: 0.3s;
    }

    #miSwitch:checked + .switch::before {
      transform: translateX(20px);
      background-color: whitesmoke; /* Color del círculo cuando está activo */
    }
    .centrar-texto {     /* centra el texto en la caja apto y piso */
    text-align: center;
        }
   .fecha-input {
    width: 150px; /* Ancho deseado del control */
    /* Otros estilos personalizados aquí */
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%--<nav class="navbar navbar-expand-lg navbar-light no-imprimir d-flex align-items-center" style="position: fixed; top: 0; width: 100%; z-index: 1000;">
    <div class="collapse navbar-collapse" id="navbarSupportedContent" aria-orientation="vertical">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <asp:HyperLink ID="linkButton" runat="server" NavigateUrl="~/index.html" CssClass="nav-link">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Img/ALTRO.png" CssClass="img-fluid" Style="max-width: 38px; height: auto;"
                        data-toggle="popover" data-placement="bottom" title="Nuevo Formulario" data-content="Restablece formulario" data-trigger="hover" />
                </asp:HyperLink>
            </li>
            <li class="nav-item">
                <span class="nav-link-divider"></span>
            </li>
            <li class="nav-item">
                <asp:Button ID="btnGuardar" class="btn btn-outline-success my-2 my-sm-0" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
            </li>
            <li class="nav-item">
                <span class="nav-link-divider"></span>
            </li>
            <li class="nav-item">
                <button class="btn btn-outline-primary my-2 my-sm-0" onclick="imprimirPagina()" data-toggle="popover" data-placement="bottom" title="Imprimir" data-content="Haz clic aquí para imprimir la página actual." data-trigger="hover">Imprimir</button>
            </li>
        </ul>
    </div>
</nav>--%>

       <div class="sidebar no-imprimir" style="text-align: center;">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Index.html" CssClass="nav-link">
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Img/ALTRO.png" CssClass="img-fluid" Style="max-width: 120px; height: auto;"
            data-toggle="popover" data-placement="bottom" title="Nuevo Formulario" data-content="Restablece formulario" data-trigger="hover" />
    </asp:HyperLink>  
           <hr />
           

       <%-- <asp:LinkButton ID="btnGuardar" runat="server" CssClass="btn btn-outline-link my-2 my-sm-0" OnClick="btnGuardar_Click" 
            data-toggle="popover" data-placement="bottom" title="Guardar el Formulario" 
            data-content="guardar formulario" data-trigger="hover" style="margin-bottom: 10px;">Guardar</asp:LinkButton>--%>

           
               <p class="saltos"></p>
           <asp:LinkButton ID="lnkImprimir" runat="server" 
               Text="Imprimir" OnClientClick="imprimirPagina(); return false;" 
               data-toggle="popover" data-placement="bottom" title="Imprmir el Formulario" 
                data-content="Imprimir formulario" data-trigger="hover" style="margin-bottom: 10px;"/>
      

   
    
    <hr />
         <%--  <asp:LinkButton ID="lnkIrPaginaSecundaria" runat="server" Text="Busqueda" OnClick="lnkIrPaginaSecundaria_Click" />--%>
  
</div>

<!--------------------------------------------- CONTENIDO DOCUMENTO encabezado ---------------------------------------------------->

                <div id="miDiv" cssclass="estilo-textbox" >
     <br />
                  <div class="contenido">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/ALTRO.png" CssClass="img-fluid" Style="max-width: 180px; height: auto; margin-left: 5px; margin-top: 10px;" />
          <br />
           <br />
          <center>
            <h4  style="font-size: 1.5em; font-family: Arial;">RECIBO DE RESERVA<br /><span style="font-size: 0.8em; font-family: Arial;">APARTAMENTO
            <asp:DropDownList ID="ddlapto" class="btn btn-outline"  runat="server" Style="font-size: 18px; font-weight: bold;" onchange="seleccionarEnAmbos(this)"
                 data-toggle="popover" data-placement="bottom" title="Apartamento" data-trigger="hover" ></asp:DropDownList>
            <asp:DropDownList ID="ddlpiso" class="btn btn-outline" runat="server" Style="font-size: 18px; font-weight: bold;" onchange="seleccionarEnAmbospiso(this)"
                data-toggle="popover" data-placement="bottom" title="Piso" data-trigger="hover"></asp:DropDownList>
                                                             </span></h4></center>
       
     
<!--------------------------------------------- CONTENIDO DOCUMENTO ---------------------------------------------------->
              <asp:Label ID="Label3" runat="server" Text=" Hemos recibido de "></asp:Label>     
              <asp:TextBox ID="txtnombre" runat="server" CssClass="estilo-textbox" Style="width: 300px;" Placeholder="Ingrese su nombre"></asp:TextBox>
              <asp:Label ID="Label4" runat="server" Text=", estado civil"></asp:Label>         
              <asp:TextBox ID="txtEstadoCivil" runat="server" CssClass="estilo-textbox" Style="width: 220px;" Placeholder="Ingrese su estado civil"></asp:TextBox>
              <asp:Label ID="Label5" runat="server" Text=", de oficio "></asp:Label>         
              <asp:TextBox ID="txtoficio" runat="server" CssClass="estilo-textbox" Style="width: 200px;" Placeholder="Ingrese su oficio"></asp:TextBox>
              <asp:Label ID="Label6" runat="server" Text=", vecino de"></asp:Label>         
              <asp:TextBox ID="txtdireccion" runat="server" CssClass="estilo-textbox" Style="width: 350px;" Placeholder="Ingrese su dirección"></asp:TextBox>
              <asp:TextBox ID="txtdireccion1" runat="server" CssClass="estilo-textbox" Style="width: 240px;"></asp:TextBox>
              <asp:Label ID="Label7" runat="server" Text="nacionalidad"></asp:Label>         
              <asp:TextBox ID="txtnacionalidad" runat="server" CssClass="estilo-textbox" Style="width: 200px;" Placeholder="Ingrese su nacionalidad"></asp:TextBox>
              ,<asp:DropDownList ID="ddlidentidad" class="btn btn-outline" runat="server" Style="display: inline-block; font-size: 18px; font-weight: bold;"
                data-toggle="popover" data-placement="bottom" title="Tipo de identificación" data-trigger="hover">
              </asp:DropDownList>
              <asp:Label ID="Label8" runat="server" Text="número"></asp:Label>         
              <asp:TextBox ID="txtnumeroid" runat="server" CssClass="estilo-textbox" Style="width: 130px;" Placeholder="numero de id"></asp:TextBox>
              <asp:Label ID="Label9" runat="server" Text=", teléfono celular"></asp:Label>
              <asp:TextBox ID="txtcelular" runat="server" CssClass="estilo-textbox" Style="width: 140px;" Placeholder="numero de celular"></asp:TextBox>
              <asp:Label ID="Label10" runat="server" Text=", teléfono #2"></asp:Label>
              <asp:TextBox ID="txttelefono" runat="server" CssClass="estilo-textbox" Style="width: 140px;" Placeholder="numero de telefono"></asp:TextBox>
              <asp:Label ID="Label11" runat="server" Text=",correo electrónico #1"></asp:Label>
              <asp:TextBox ID="txtemail1" runat="server" CssClass="estilo-textbox" Style="width: 580px;" Placeholder="ingrese su correo #1"></asp:TextBox>
              <asp:Label ID="Label12" runat="server" Text=", correo electrónico #2"></asp:Label>
              <asp:TextBox ID="txtemail2" runat="server" CssClass="estilo-textbox" Style="width: 520px;" Placeholder="ingrese su correo #2"></asp:TextBox>
              <asp:Label ID="Label13" runat="server" Text=", en adelante denominado el “CLIENTE”, la suma de"></asp:Label>
              <asp:TextBox ID="txtmontoletras" runat="server" CssClass="estilo-textbox" Style="width: 550px;" Placeholder="ingrese monto en letras"></asp:TextBox>
              <asp:Label ID="Label14" runat="server" Text=", dólares EEUU (USD"></asp:Label>
              <asp:TextBox ID="txtmonto0" runat="server" CssClass="estilo-textbox" Style="width: 160px; text-align: right;" onkeypress="return soloNumeros(event)" Placeholder="00,000.00" />
              <asp:Label ID="Label15" runat="server" Text="). Este pago lo realiza el CLIENTE como reserva y a cuenta del precio del apartamento N° "></asp:Label>
              <asp:TextBox ID="txtapto" runat="server" ReadOnly="true" CssClass="estilo-textbox centrar-texto" Style="width: 50px;" Placeholder="apto"></asp:TextBox>, ubicado en el PISO 
              <asp:TextBox ID="txtpiso" runat="server" ReadOnly="true" CssClass="estilo-textbox centrar-texto" Style="width: 50px;" Placeholder="piso"></asp:TextBox>.
       <%-- <asp:DropDownList ID="ddlapto2" class="btn btn-outline" runat="server" Style="display: inline-block; font-size: 18px; font-weight: bold;" 
             data-toggle="popover" data-placement="bottom" title="Apartamento" data-trigger="hover" ></asp:DropDownList>--%>     
         <%--<asp:DropDownList ID="ddlpiso2" class="btn btn-outline" runat="server" Style="display: inline-block; font-size: 18px; font-weight: bold;"
              data-toggle="popover" data-placement="bottom" title="Piso" data-trigger="hover"></asp:DropDownList>--%>
       <br />
                      <%--DESCRIPCION APARTAMENTOS--%>
     <asp:Literal ID="ltlaptos" runat="server"></asp:Literal>   
        <asp:DropDownList ID="ddltipoapto" class="btn btn-outline" runat="server" Style="display: inline-block; font-size: 18px; font-weight: bold;"
         data-toggle="popover" data-placement="bottom" title="tipo apartamento" data-trigger="hover"></asp:DropDownList>
        <br />    
                      <%--DESCRIPCION BODEGA Y PARQUEOS--%>
                      <asp:Literal ID="ltlbodyparqueos" runat="server"></asp:Literal>           
     <asp:DropDownList ID="ddlestacionamiento" class="btn btn-outline" runat="server" Style="display: inline-block; 
    font-size: 18px; font-weight: bold;" data-toggle="popover" data-placement="bottom" title="tipo estacionamiento" data-trigger="hover"></asp:DropDownList>
     <br />
      El precio <asp:DropDownList ID="ddlRespuesta" class="btn btn-outline" runat="server" 
          data-toggle="popover" data-placement="bottom" title="incluir o excluir bodega" data-trigger="hover"> </asp:DropDownList> incluye bodega.
                      <br />  
                      <%--clausula primera--%>
         <u><b>PRIMERA:</b></u> El precio del apartamento es de 
         <asp:TextBox ID="txtmontoletras2" runat="server" CssClass="estilo-textbox" Style="width: 330px;" Placeholder="ingrese monto en letras"></asp:TextBox>
        00 /100 dólares EEUU (USD$ 
         <asp:TextBox ID="txtmontoapto" runat="server" CssClass="estilo-textbox" Style="width: 160px; text-align: right;"  
                               Placeholder="00,000.00" onkeypress="return soloNumeros(event)" />
        ), que serán pagados por EL CLIENTE de la siguiente manera:
           <br />
        Prima a completarse con los siguientes pagos:   
          <div style="overflow-x: auto;">
                    <table style="width: 100%;">
                      <tr>
                        
                                <td style="text-align: left;">
                                   Un pago de Reserva el día 
                                  <asp:DropDownList ID="ddldia" class="btn btn-outline" runat="server" 
                                      data-toggle="popover" data-placement="bottom" title="Día" data-trigger="hover"></asp:DropDownList>
                                  <asp:DropDownList ID="ddlmes" class="btn btn-outline" runat="server"
                                       data-toggle="popover" data-placement="bottom" title="Mes" data-trigger="hover"></asp:DropDownList>
                                  <asp:DropDownList ID="ddlano" class="btn btn-outline" runat="server"
                                       data-toggle="popover" data-placement="bottom" title="Año" data-trigger="hover"></asp:DropDownList>
                             </td>
                        <td style="text-align: right;">
                             USD
                            <asp:TextBox ID="txtmonto1" runat="server" CssClass="estilo-textbox" Style="width: 100px; text-align: right;"  
                               Placeholder="00,000.00" onkeypress="return soloNumeros(event)"></asp:TextBox></>
                        </td>
                      </tr>
                      <tr>
                         <td style="text-align: left;">
                                  Un pago para firma de Contrato el día
                                 <asp:DropDownList ID="ddldia1" class="btn btn-outline" runat="server"
                                     data-toggle="popover" data-placement="bottom" title="Día" data-trigger="hover"></asp:DropDownList>
                                 <asp:DropDownList ID="ddlmes1" class="btn btn-outline" runat="server"
                                     data-toggle="popover" data-placement="bottom" title="Mes" data-trigger="hover"></asp:DropDownList>
                                 <asp:DropDownList ID="ddlano1" class="btn btn-outline" runat="server"
                                     data-toggle="popover" data-placement="bottom" title="Año" data-trigger="hover"></asp:DropDownList>
                             </td>
                        <td style="text-align: right;">
                              USD
                            <asp:TextBox ID="txtmonto2" runat="server" CssClass="estilo-textbox" Style="width: 100px; text-align: right;"  
                               Placeholder="00,000.00"  onkeypress="return soloNumeros(event)"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td style="text-align: left;">
                            11 cuotas mensuales consecutivas el día
                               <asp:TextBox ID="txtcuotasconsecutivas" runat="server" CssClass="estilo-textbox" Style="width: 75px;"
                                    Placeholder="Días" ></asp:TextBox>
                            de mes por
                        </td>
                        <td style="text-align: right;">
                             USD
                        <asp:TextBox ID="txtmonto3" runat="server" CssClass="estilo-textbox" Style="width: 100px; text-align: right;"  
                               Placeholder="00,000.00" onkeypress="return soloNumeros(event)"></asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                       <td style="text-align: left;">
                             Cuota 12 el día
                            <asp:DropDownList ID="ddldia2" class="btn btn-outline" runat="server"
                                data-toggle="popover" data-placement="bottom" title="Día" data-trigger="hover"></asp:DropDownList>
                            <asp:DropDownList ID="ddlmes2" class="btn btn-outline" runat="server"
                                data-toggle="popover" data-placement="bottom" title="Mes" data-trigger="hover"></asp:DropDownList>
                            <asp:DropDownList ID="ddlano2" class="btn btn-outline" runat="server"
                                data-toggle="popover" data-placement="bottom" title="Año" data-trigger="hover"></asp:DropDownList>
                             por
                         </td>
                        <td style="text-align: right;">
                              USD
                            <asp:TextBox ID="txtmonto4" runat="server" CssClass="estilo-textbox" Style="width: 100px; text-align: right;"  
                               Placeholder="00,000.00" onkeypress="return soloNumeros(event)"></asp:TextBox>
                        </td>
                      </tr>
                    </table> 
              <div />  
              <%--BOTON DESCUENTO--%>
          <%--   <asp:LinkButton ID="btnToggleDescuento" class="btn btn-primary" CssClass="no-imprimir" runat="server" Text="SI/NO" OnClientClick="toggleDescuento(); return false;"
                 data-toggle="popover" data-placement="bottom" title="Aplicar o desaplicar Descuento" data-trigger="hover"/>--%>
              <asp:Label ID="Label1" CssClass="no-imprimir" runat="server" Text="SI" style="vertical-align: middle;"></asp:Label>    
                <input type="checkbox" id="miSwitch" class="form-check-input checkbox-hidden no-imprimir" onchange="toggleDescuento()" style="vertical-align: middle;">
                <label for="miSwitch" class="form-check-label switch no-imprimir" style="vertical-align: middle;"></label>
                <asp:Label ID="Label2" CssClass="no-imprimir" runat="server" Text="NO" style="vertical-align: middle;"></asp:Label>
              <br />
            
                <div id="contenedorDescuento" style="display: block;">                   
                    Reducción de precio: Si y solo Si, el cliente cumple con el plan de pago impreso en esta reserva, se le
                    <br />
                    reconocerá un descuento de USD $ 
                    <asp:TextBox ID="txtdescuentomonto" runat="server" CssClass="estilo-textbox" Style="width: 225px; text-align: right;"  
                               Placeholder="00,000.00" onkeypress="return soloNumeros(event)"></asp:TextBox>
                    dólares.                   
                </div>
         <%--CLAUSULA SEGUNDA A QUINTA--%>
              <asp:Literal ID="ltlclausulas" runat="server"></asp:Literal>
       
        <br />
       <table>
  <tr>
    <td>EL CLIENTE:</td>
    <td><asp:TextBox ID="txtcliente" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese su nombre"></asp:TextBox></td>
  </tr>
  <tr>
    <td>N° de cuenta</td>
    <td><asp:TextBox ID="txtcuenta" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese su cuenta"></asp:TextBox></td>
  </tr>
  <tr>
    <td colspan="2"><b>Para transferencias al exterior completar:</b></td>
  </tr>
  <tr>
    <td>Dueño de la cuenta:</td>
    <td><asp:TextBox ID="txtdueñocuenta" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese su nombre"></asp:TextBox></td>
  </tr>
  <tr>
    <td>Cuenta N°:</td>
    <td><asp:TextBox ID="txtduenocuentanumero" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese su cuenta"></asp:TextBox></td>
  </tr>
  <tr>
    <td>Nombre del banco:</td>
    <td><asp:TextBox ID="txtnombrebanco" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese nombre del banco"></asp:TextBox></td>
  </tr>
  <tr>
    <td>ABA:</td>
    <td><asp:TextBox ID="txtaba" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese ABA"></asp:TextBox></td>
  </tr>
  <tr>
    <td>SWIFT:</td>
    <td><asp:TextBox ID="txtshift" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese el Swift"></asp:TextBox></td>
  </tr>
  <tr>
    <td>Dirección del banco:</td>
    <td><asp:TextBox ID="txtdireccionbanco" runat="server" CssClass="estilo-textbox" Style="width: 405px;" Placeholder="Ingrese direccion del banco"></asp:TextBox></td>
  </tr>
</table>

        <br /> 
              <%--clausula sexta--%>
              <asp:Literal ID="ltlclausulasexta" runat="server"></asp:Literal>
       
             <%-------------------  OPCIONES CON DDL O RADIO BUTTON -------------%>
         <%--    <asp:DropDownList ID="ddlDocumnetos" class="btn btn-outline no-imprimir" runat="server" 
                data-toggle="popover" data-placement="bottom" title="Documentos" data-trigger="hover"
                style="text-align: left;" onchange="mostrarTexto()">
            </asp:DropDownList>--%>
            <br />

                <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
    <div class="btn-group me-2" role="group" aria-label="First group">
        <button type="button" id="btn1" class="btn btn-outline-secondary no-imprimir" onclick="mostrarTexto(1)"
             data-toggle="popover" data-placement="bottom" title="NACIONALES PERSONA FISICA" data-trigger="hover">1</button>
        <button type="button" id="btn2" class="btn btn-outline-secondary no-imprimir" onclick="mostrarTexto(2)" 
             data-toggle="popover" data-placement="bottom" title="PERSONA JURÍDICA NACIONAL" data-trigger="hover">2</button>
        <button type="button" id="btn3" class="btn btn-outline-secondary no-imprimir" onclick="mostrarTexto(3)" 
             data-toggle="popover" data-placement="bottom" title="EXTRANJEROS RESIDENTES EN COSTA RICA PERSONAS FISICAS" data-trigger="hover">3</button>
        <button type="button" id="btn4" class="btn btn-outline-secondary no-imprimir" onclick="mostrarTexto(4)" 
             data-toggle="popover" data-placement="bottom" title="EXTRANJEROS NO RESIDENTES OTROS PAÍSES,PERSONAS FÍSICAS" data-trigger="hover">4</button>
        <button type="button" id="btn5" class="btn btn-outline-secondary no-imprimir" onclick="mostrarTexto(5)" 
             data-toggle="popover" data-placement="bottom" title="EXTRANJEROS ESTADOS UNIDOS NO RESIDENTES PERSONAS FÍSICAS" data-trigger="hover">5</button>
    </div>
</div>
      <br />
          <div id="texto1" style="display: block;">
              <asp:Literal ID="ltlop1" runat="server"></asp:Literal>
          </div>
        <div id="texto2" style="display: none;">
            <asp:Literal ID="ltlop2" runat="server"></asp:Literal>
        </div>
        <div id="texto3" style="display: none;">
            <asp:Literal ID="ltlop3" runat="server"></asp:Literal>
        </div>
        <div id="texto4" style="display: none;">
            <asp:Literal ID="ltlop4" runat="server"></asp:Literal>
        </div>
        <div id="texto5" style="display: none;">
            <asp:Literal ID="ltlop5" runat="server"></asp:Literal>
        </div>

</div>
            

              <%--   <label for="opcion1" class="no-imprimir">1</label>
                    <input type="radio" id="opcion1" class="no-imprimir" name="opcion" value="1" checked="checked" onchange="mostrarTextock()"/>
                    <label for="opcion2" class="no-imprimir">2</label>
                    <input type="radio" id="opcion2" class="no-imprimir" name="opcion" value="2" onchange="mostrarTextock()"/>
                    <label for="opcion3" class="no-imprimir">3</label>
                    <input type="radio" id="opcion3" class="no-imprimir" name="opcion" value="3" onchange="mostrarTextock()"/>
                    <label for="opcion4" class="no-imprimir">4</label>
                    <input type="radio" id="opcion4" class="no-imprimir" name="opcion" value="4" onchange="mostrarTextock()"/>
                    <label for="opcion5" class="no-imprimir">5</label>
                    <input type="radio" id="opcion5" class="no-imprimir" name="opcion" value="5" onchange="mostrarTextock()"/>--%>

            
              <br />
        
             <%--  <div class="texto-opcion" id="1" >1-NACIONALES PERSONA FISICA :
                    <br />Cédula de identidad vigente
                    <br />Perfil fisico adjunto
                   <br />Formulario CICAC (solo nacionales)
                    <br />Formulario Manejo de Información
                    <br />Plantilla solicitud asignación de cuenta
                    <br />Evidencia de ingresos (Cualquiera de estos ):
                    <br />-Orden Patronal
                    <br />-Certificación de ingresos CPA
                    <br />-Constrancia Salarial
                    </div>

              <div class="texto-opcion" id="2" style="display: none;">2-PERSONA JURÍDICA NACIONAL :
                    <br />Pasaporte y/o cédula de identidad o de residencia del representante vigente
                    <br />Perfil fisico adjunto
                   <br />Personeria jurídica con menos de 3 meces de emitida
                     <br />Composicion accionaria hasta llegar al beneficiario final
                     <br />Formulario CICAC (solo nacionales)
                     <br />Formulario Manejo de Información
                     <br />Plantilla solicitud asignación de cuenta
                    <br />Evidencia de ingresos (Cualquiera de estos ):
                    <br />-Estado financiero o flujo emitido
                   </div>  

              <div class="texto-opcion" id="3" style="display: none;">3-EXTRANJEROS RESIDENTES EN COSTA RICA PERSONAS FISICAS :
                    <br />Pasaporte vigente
                    <br />Perfil físico adjunto
                    <br />Formulario CRS-Autocertificación Individual(adjunto)
                    <br />Formulario CICAC (solo nacionales)
                    <br />Formulario Manejo de Información
                    <br />Plantilla solicitud asignación de cuenta
                    <br />Evidencia de ingresos:
                    <br />-Certificación de ingresos de un CPA, que detalle la procedencia de origen de fondos no mayor a 3 meses de emitida.
                    </div>  
           
              <div class="texto-opcion" id="4" style="display: none;">4-EXTRANJEROS NO RESIDENTES OTROS PAÍSES,PERSONAS FÍSICAS:
                    <br />Pasaporte vigente
                    <br />Perfil físico adjunto
                    <br />Formulario CRS-Autocertificación Individual(adjunto)
                    <br />Formulario CICAC (solo nacionales)
                    <br />Formulario Manejo de Información
                    <br />Plantilla solicitud asignación de cuenta
                    <br />Evidencia de ingresos:
                    <br />-Certificación de ingresos de un CPA, que detalle la procedencia de origen de fondos no mayor a 3 meses de emitida.
                    </div>  
 
              <div class="texto-opcion" id="5" style="display: none;">5-EXTRANJEROS ESTADOS UNIDOS NO RESIDENTES PERSONAS FÍSICAS :
                    <br />Pasaporte vigente
                    <br />Perfil físico adjunto
                     <br />Formulario FATCA, extranjeros Estados Unidos (adjunta)
                     <br />Formulario CRS-Autocertificación Individual(adjunto)
                     <br />Formulario CICAC (solo nacionales)
                     <br />Formulario Manejo de Información
                     <br />Plantilla solicitud asignación de cuenta
                    <br />Evidencia de ingresos:
                    <br />-Certificación de ingresos de un CPA, que detalle la procedencia de origen de fondos no mayor a 3 meses de emitida.
                   </div>--%>

            <br />

            <br />
            De acuerdo con todo lo anterior, firmamos en Heredia, 
            el día 
            <asp:DropDownList ID="ddldia3" class="btn btn-outline" runat="server"
                data-toggle="popover" data-placement="bottom" title="Día" data-trigger="hover"></asp:DropDownList> 
            del mes de 
             <asp:DropDownList ID="ddlmes3" class="btn btn-outline" runat="server"
                 data-toggle="popover" data-placement="bottom" title="Mes" data-trigger="hover"></asp:DropDownList>
            de
             <asp:DropDownList ID="ddlano3" class="btn btn-outline" runat="server"
                 data-toggle="popover" data-placement="bottom" title="Año" data-trigger="hover"></asp:DropDownList>.
            <br />
            <br />
            <br />
   
            <table style="width: 100%;">
            <tr>
            <td style="text-align: left;">
            <center>
                ____________________________________<br />
            <!-- Contenido que deseas alinear a la izquierda -->
            EL CLIENTE<br>
            <br/>
            <br />
                </center>
        </td>
        <td style="text-align: right;">
            <center>
                ________________________________________________<br />
            <!-- Contenido que deseas alinear a la derecha -->
             Por 3-101-750825 S.A.<br />
            Cédula Jurídica 3-101-750825<br/>
            EL DESARROLLADOR
                </center>
        </td>
    </tr>
</table>
 </div>
    </div>   
   </div>      
                <!--------------------------------------------- CONTENIDO DOCUMENTO ---------------------------------------------------->
      <br />
           <br />
              <br />
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


        <%--COPIA SELECCION DE DROPDOWN LIST A CAJAS--%>
          <script type="text/javascript">
      function seleccionarEnAmbos(elemento) {
          var valorSeleccionado = elemento.value;
          document.getElementById('<%=txtapto.ClientID %>').value = valorSeleccionado;
         
      }
  </script>
  <script type="text/javascript">
      function seleccionarEnAmbospiso(elemento) {
          var valorSeleccionado = elemento.value;
        
      document.getElementById('<%=txtpiso.ClientID %>').value = valorSeleccionado;
      }
  </script>

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

        <%--muestra u oculta descuento--%>
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

          <!-- Muestra y oculta area opciones -->
<script>
    var botonActivo = null;

    function mostrarTexto(numero) {
        // Si ya hay un botón activo, desactívalo
        if (botonActivo !== null) {
            botonActivo.classList.remove("active");
        }

        // Activa el botón actual
        var botonActual = document.getElementById('btn' + numero);
        botonActual.classList.add("active");
        botonActivo = botonActual;

        // Oculta todos los textos
        for (var i = 1; i <= 5; i++) {
            document.getElementById('texto' + i).style.display = 'none';
        }
        // Muestra el texto correspondiente al botón clicado
        document.getElementById('texto' + numero).style.display = 'block';
    }
</script>
        <script>
            // Obtener la fecha actual en el formato de fecha ISO (YYYY-MM-DD)
            var fechaActual = new Date().toISOString().split('T')[0];

            // Asignar la fecha actual al campo de entrada
            document.getElementById('Date').value = fechaActual;
            document.getElementById('Date1').value = fechaActual;
            document.getElementById('Date2').value = fechaActual;
        </script>
       

          <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
  <!-- jQuery (Necesario para Bootstrap) -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <!-- Bootstrap 5 JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.10.1/html2pdf.bundle.min.js" integrity="sha512-GsLlZN/3F2ErC5ifS5QtgpiJtWd43JWSuIgh7mbzZ8zBps+dvLusV+eNQATqgA/HdeKFVgA5v3S/cIrLF7QnIg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  

        </div>
    </form>
</body>
</html>
