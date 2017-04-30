<%-- 
    Document   : Cliente
    Created on : 29-abr-2017, 8:31:07
    Author     : JUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>CLIENTE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    </head>
    <body>
        <div class="panel panel-primary">
            <div class="panel-heading">CALCULAR VOLUMEN</div>
            <div class="panel-body">
                
                <form action="index.jsp" method="POST">
                    <input type="text" name="Caja_Radio" class="form-control" placeholder="Ingrese el radio">
                    <input type="submit" name="Btn_Calcular" value="CALCULAR" class="btn btn-danger">
                </form>
                
                      <%-- start web service invocation --%><hr/>
    <%
    try {
	esfera.VolumenEsfera_Service service = new esfera.VolumenEsfera_Service();
	esfera.VolumenEsfera port = service.getVolumenEsferaPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double radio = Double.valueOf(request.getParameter("Caja_Radio"));
	// TODO process result here
	java.lang.Double result = port.volumen(radio);
        if (radio <= 0) 
        {
            out.println("El radio no puede ser menor o igual a 0");
        }
        else
        {
            out.println("El volumen de la esfera es: " + result);
        }
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
  
               
            </div>
        </div>
    </body>
</html>
