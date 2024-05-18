<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>Formulario de Empleados</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <style>
            body {
                background-color: #f8f9fa;
            }
            .container {
                margin-top: 50px;
            }
            .card {
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                border-radius: 10px;
            }
            .card-body {
                padding: 30px;
            }
            .form-control {
                border-radius: 5px;
            }
            .btn {
                border-radius: 5px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="card">
                        <div class="card-header text-center bg-info text-white">
                            <h4><i class="fa fa-user-plus"></i> Registrar Empleado</h4>
                        </div>
                        <div class="card-body">
                            <form action="Controlador"method="POST">
                                <div class="form-group">
                                    <label>Dni</label>
                                    <input type="text" name="txtDni" class="form-control">
                                </div>
                                <div class=form-group">
                                    <label>Nombres</label>
                                    <input type="text"  name="txtNom"  class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Teléfono</label>
                                    <input type="text"  name="txtTel" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label >Estado</label>
                                    <input type="text"  name="txtEstado" class="form-control">
                                </div>
                                <div class="mb-3">
                                    <label >Usuario</label>
                                    <input type="text"  name="txtUser" class="form-control">
                                </div>
                                <div class="text-center">
                                    <input type="submit" name="accion" value="Agregar" class="btn btn-info">
                                    <input type="submit" name="accion" value="Actualizar" class="btn btn-success">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 mb-4">
                    <div class="card">
                        <div class="card-header text-center bg-info text-white">
                            <h4><i class="fa fa-list"></i> Lista de Empleados</h4>
                        </div>
                        <div class="col-sm-8"> 
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>DNI</th>
                                        <th>NOMBRES</th>
                                        <th>TELEFONO</th>
                                        <th>ESTADO</th>
                                        <th>USUARIO</th>
                                        <th>ACCIONES</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="em" items="${Empleado}">
                                        <!-- Fila donde se mostraran los datos de la bd -->
                                        <tr>
                                            <td>${em.Id_Empleado}</td>
                                            <td>${em.Dni}</td>
                                            <td>${em.Nom}</td>
                                            <td>${em.Tel}</td>
                                            <td>${em.Estado}</td>
                                            <td>${em.User}</td>
                                            <td>
                                                <a class="btn btn-warning"href="Controlador?menu=Empleado&accion=Editar&Id_Empleado=${em.getId_Empleado()}">Editar</a>
                                                <a class="btn btn-warning"href="Controlador?menu=Empleado&accion=Delete&Id_Empleado=${em.getId_Empleado()}">Delete</a>
                                            </td>
                                        </tr>
                                    </c:forEach>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>
