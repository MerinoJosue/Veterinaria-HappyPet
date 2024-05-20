<%-- 
    Document   : prueba.jsp
    Created on : 18 may. 2024, 22:49:30
    Author     : Ionic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos del usuario</h1>
        <form action="SvClientes">
            <p><label>ID_Cliente: </label> <input type="text" name="id_cliente"></p>
            <p><label>nombre: </label> <input type="text" name="nombre"></p>
            <p><label>dni: </label> <input type="text" name="dni"></p>
            <p><label>Apellido: </label> <input type="text" name="apellido"></p>
            <p><label>Direccion: </label> <input type="text" name="direccion"></p>
            <p><label>Telefono: </label> <input type="text" name="telefono"></p>
            <p><label>Correo: </label> <input type="text" name="correo"></p>
            <button type="submit">Enviar</button>
            
            
        </form>
    </body>
</html>
