<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Contenedor principal con flexbox para disposición flexible -->
        <div class="d-flex">

            <!-- contenedor con clase 'card' de Bootstrap que ocupa 6 columnas en pantallas pequeñas -->
            <div class="card col-sm-6">
                <div class="card-body">
                    <form action="Controlador?menu=Empleado"method="POST">
                        <!-- Grupo de formulario para el campo Dni -->
                        <div class="form-group">
                            <label>Dni</label>
                            <input type="text" value="${empleado.getDni}" name="txtDni" class="form-control">
                        </div> 
                        <!-- Grupo de formulario para el campo Nombres -->
                        <div class="form-group">
                            <label>Nombres</label>
                            <input type="text" value="${empleado.getNom} name="txtNombres" class="form-control">
                        </div> 
                        <!-- Grupo de formulario para el campo Telefono -->
                        <div class="form-group">
                            <label>Telefono</label>
                            <input type="text" value="${empleado.getTel} name="txtTelefono" class="form-control">
                        </div> 
                        <!-- Grupo de formulario para el campo Estado -->
                        <div class="form-group">
                            <label>Estado</label>
                            <input type="text" value="${empleado.getEstado} name="txtEstado" class="form-control">
                        </div> 
                        <!-- Grupo de formulario para el campo Usuario -->
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" value="${empleado.getUser} name="txtUsuario" class="form-control">
                        </div>
                        <!-- Botón de envío del formulario -->
                        <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                        <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                    </form>
                </div>
            </div>

            <!-- Tabla ocupando 8 columnas en pantallas pequeñas -->
            <div class="col-sm-8">
                <table class="table table-hover">
                    <thead>
                        <!-- Cabecera de la tabla -->
                        <tr>
                            <th>DNI</th>
                            <th>NOMBRES</th>
                            <th>TELEFONO</th>
                            <th>ESTADO</th>
                            <th>USUARIO</th>
                            <th>ACCIONES</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Fila de datos vacía -->
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Segunda tarjeta: otro contenedor con clase 'card' de Bootstrap -->
        <div class="card">
            <div class="card-body">
                <!-- Segundo formulario dentro de la tarjeta -->
                <form>
                    <!-- Grupo de formulario para el campo Dni -->
                    <div class="form-group">
                        <label>Dni</label>
                        <input type="text" name="txtDni" class="form-control">
                    </div> 
                    <!-- Grupo de formulario para el campo Nombres -->
                    <div class="form-group">
                        <label>Nombres</label>
                        <input type="text" name="txtNombres" class="form-control">
                    </div> 
                    <!-- Grupo de formulario para el campo Telefono -->
                    <div class="form-group">
                        <label>Telefono</label>
                        <input type="text" name="txtTelefono" class="form-control">
                    </div> 
                    <!-- Grupo de formulario para el campo Estado -->
                    <div class="form-group">
                        <label>Estado</label>
                        <input type="text" name="txtEstado" class="form-control">
                    </div> 
                    <!-- Grupo de formulario para el campo Usuario -->
                    <div class="form-group">
                        <label>Usuario</label>
                        <input type="text" name="txtUsuario" class="form-control">
                    </div>
                    <!-- Botón de envío del formulario -->
                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                </form>
            </div>
        </div>

        <!-- Segunda tabla -->
        <div>
            <table class="table table-hover">
                <thead>
                    <!-- Cabecera de la tabla -->
                    <tr>
                        <th>DNI</th>
                        <th>NOMBRES</th>
                        <th>TELEFONO</th>
                        <th>ESTADO</th>
                        <th>USUARIO</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="em" items="${empleados}">
                    <!-- Fila donde se mostraran los datos de la bd -->
                    <tr>
                        <td>${em.getId()}</td>
                        <td>${em.getDni()}</td>
                        <td>${em.getNom()}</td>
                        <td>${em.getTel()}</td>
                        <td>${em.getEstado()}</td>
                        <td>${em.getUser()}</td>
                        <td>
                            <a class="btn btn-warning"href="Controlador?menu=Empleado&accion=Editar=${em.getId()}">Editar</a>
                            <a class="btn btn-warning"href="Controlador?menu=Empleado&accion=Delete=${em.getId()}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- Scripts de Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>

