<%-- 
    Document   : index
    Created on : 24 jun. 2021, 12:12:25
    Author     : Marcos Castelli
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <title>Mi formulario</title>
    </head>
    <body>
        <div class="container">

            <h1>Formulario - Unidad 2 (Backend)</h1>
            <div class="row">
                <div class="col-sm">
                    <form action="index.jsp" method="post">
                        <div class="mb-3">
                            <label for="nombre" class="form-label">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="nameHelp">
                            <div id="nameHelp" class="form-text">Coloque aqui solo su nombre, o nombres no su apellido.</div>
                        </div>
                        <div class="mb-3">
                            <label for="apellido" class="form-label">Apellido:</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" aria-describedby="apellidoHelp">
                            <div id="apellidoHelp" class="form-text">Coloque aqui solo su apellido.</div>
                        </div>
                        <div class="mb-3">
                            <label for="edad" class="form-label">Edad:</label>
                            <input type="text" class="form-control" id="edad" name="edad">
                        </div>
                        <div class="mb-3">
                            <label for="hobbie" class="form-label">Hobbie:</label>
                            <input type="text" class="form-control" id="hobbie" name="hobbie">
                        </div>
                        <div class="mb-3">
                            <label for="editor" class="form-label">Editor de codigo preferido:</label>
                            <input type="text" class="form-control" id="editor" name="editor">
                        </div>
                        <div class="mb-3">
                            <label for="so" class="form-label">Sistema operativo que utiliza:</label>
                            <input type="text" class="form-control" id="so" name="so">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Enviar</button>
                    </form>




                </div> <%--fin col-sm --%>
            </div> <%--fin row --%>

            <div class="row">
                <div class="col-sm">
                    <div class="alert alert-primary mt-3" role="alert">

                        <%
                            // Recupero datos del formulario    
                            String nombre = request.getParameter("nombre");
                            String apellido = request.getParameter("apellido");
                            String edad = request.getParameter("edad");
                            String hobbie = request.getParameter("hobbie");
                            String editor = request.getParameter("editor");
                            String so = request.getParameter("so");

                            if (nombre != "" && apellido != "" && edad != "" && hobbie != "" && editor != "" && so != "") {
                                // Salida por consola
                                out.println("Nombre y apellido : " + nombre + " " + apellido + "<br>");
                                out.println("Edad: " + edad + "<br>");
                                out.println("Su hobbie: " + hobbie + "<br>");
                                out.println("Editor de codigo preferido: " + editor + "<br>");
                                out.println("Sistema Operativo que usa: " + so);
                            } else {
                                out.println("No puedes dejar ningun campo vacio o el formulario no se enviara.");
                            }


                        %>
                    </div> <%--fin alert --%>

                </div><%--fin col-sm 2 --%>

            </div><%--fin row 2 --%>

        </div> <%--fin container --%>
    </body>
</html>
