
<%@page import="Modelo.Cliente"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bienvenido(a) a HappyPet</h1>
        <%
            List<Cliente> listaclientes = (List) request.getSession().getAttribute("listaclientes");
            int cont = 1;
            for (Cliente usu : listaclientes) {


        %>

        <p><b>Clientes N°<%=cont%></b></p>
        <p><b>ID_Clientes: <%=usu.getId_Cliente()%></b></p>
        <p><b>Nombre <%=usu.getNombre()%></b></p>
        <p><b>Dni: <%=usu.getDni()%></b></p>
        <p><b>Apellido: <%=usu.getApellido()%></b></p>
        <p><b>Direccion: <%=usu.getDireccion()%></b></p>
        <p><b>Telefono: <%=usu.getTelefono()%></b></p>
        <p><b>Coreo: <%=usu.getCorreoElectronico()%></b></p>
        <% cont++;%>
        <%}%>
    </body>
</html>
