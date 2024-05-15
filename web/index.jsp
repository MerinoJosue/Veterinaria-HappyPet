
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <title>Document</title>
    </head>
    <body>
        <div class="menu-logo">
            <a href="#" class="logo">logo</a>

        </div>

        <div class="text-center">
            <label>Bienvenidos(a) a HappyPet</label>
        </div>
        <div class="container mt-4 col-lg-4">
            <div class="card col-sm-10">
                <div class="card-body text-right">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group">
                            <label>Usuario</label>
                            <input type="text" name="txtuser" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Contraseña:</label>
                            <input type="password" name="txtpass" class="form-control">
                        </div>
                    </form>
                </div>
                <div class="card-body text-center">
                    <input type="submit" name="accion" value="Ingresar" class="btn btn-primary">
                </div>

            </div>
        </div>
                            <img src="imagen/Perritos.png" alt="70" width="170"/>

        <h1></h1>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
    </body>
</html>