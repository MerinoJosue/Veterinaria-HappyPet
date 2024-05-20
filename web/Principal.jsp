<%-- 
    Document   : Principal
    Created on : 12 may. 2024, 21:58:37
    Author     : Ionic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Veterinaria</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="style.css">

    </head>
    <body>
        <header class="header">

            <div class="menu container">

                <a href="#" class="logo">logo</a>
                <input type="checkbox" id="menu"/>
                <label for="menu">
                    <img src="imagen/Perritos.png" class="menu-icono" alt=""/>
                </label>
                <nav class="navbar navbar-expand-lg navbar-light bg-info" >
                    <div class="collapse navbar-collapse"id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item"><a style="margin-left: 10px;border: none"class="fa-sharp fa-solid fa-hospital-user"href="ControladorProductos?menu=Productos&accion=Listar">Productos</a></li>
                        <li class="nav-item"><a style="margin-left: 10px;border: none" class="fa-solid fa-bed-pulse" href="ControladorCliente?menu=Cliente&accion=Listar">Clientes</a></li>
                        
                        <li class="nav-item"><a style="margin-left: 10px;border: none" class="fa-solid fa-hospital" href="ControladorEmpleado?menu=Empleado&accion=Listar">Empleado</a></li>
                        <li class="nav-item"><a style="margin-left: 10px;border: none" class="fa-solid fa-bed-pulse" href="Controlador?menu=RegistrarVenta">NuevaVenta</a></li>
                        <li class="nav-item"><a style="margin-left: 10px;border: none" class="fa-solid fa-phone" href="Controlador?menu=Proveedores">Proveedores</a></li>
                        <li class="nav-item"><a style="margin-left: 10px;border: none" class="fa-solid fa-envelope" href="Controlador?menu=Cliente">Registrar Cita</a></li>
                    </ul>
                     </div>
                </nav>
            </div>

            <div class="header-content container">
                <div class="header-txt">
                    <h1> Centro de veterinaria</h1>
                    <p>
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Consequuntur architecto
                        labore veniam earum doloremque inventore sit? Rerum pariatur suscipit reiciendis omnis,
                        totam ipsa nostrum aspernatur, dolorem ad fugit distinctio molestias.
                    </p>
                    <a href="#" class="btn-1">informacion</a>
                </div>
                <div class="header-img">
                    <img src="veterinaria image/left.png" alt="">
                </div>
            </div>
        </header>
        <section class="about container">
            <div class="about-img">
                <img src="veterinaria image/about.png" alt="">
            </div>
            <div class="about-txt">
                <h2>Nosotros</h2>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Minus consequatur ipsa inventore
                    id ad vero earum molestiae ea quis saepe, adipisci fugit placeat voluptatum quae, ipsum vitae. 
                    Accusantium, error ipsa!
                </p>
                <br>
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsum ad labore laboriosam quas amet 
                    similique eligendi, non incidunt corporis cumque neque esse eos dolore. Quos ratione saepe explicabo 
                    nobis tenetur.
                </p>

            </div>

        </section>

        <main class="servicios">
            <h2>Servicios</h2>
            <div class="servicios-content container">
                <div class="servicio-1">
                    <i class="fa-sharp fa-solid fa-hospital-user"></i>
                    <h3>pediatria</h3>
                </div>
                <div class="servicio-1">
                    <i class="fa-solid fa-hospital"></i>
                    <h3>ginecologia</h3>
                </div>
                <div class="servicio-1">
                    <i class="fa-solid fa-bed-pulse"></i>
                    <h3>Dermatologia</h3>
                </div>
                <div class="servicio-1">
                    <i class="fa-solid fa-hospital"></i>
                    <h3>cardiologia</h3>
                </div>

            </div>
        </main>

        <section class="formulario container">
                <ul>
                    <li><input type="submit" name="send" class="btn" value="Agregar Cliente" onclick="myfunction()"></li>
                    <br>
                    <li><input type="submit" name="ver" class="btn" value="Ver clientes" onclick="myfunctionVer()"></li>
                    <br>
                    <li><input type="submit" name="edit" class="btn" value="Editar Cliente" onclick="myfunctionEditar()"></li>
                    <br>
                </ul>
            <form action="send.php" method="post" autocomplete="off">
                <h2>Agenda consulta</h2>
                <div class="input-group">
                    <div class="input-container">
                        <input type="text" name="name" placeholder="Nombre y apellido">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <div class="input-container">
                        <input type="text" name="dni" placeholder="Dni">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <div class="input-container">
                        <input type="tel" name="telefono" placeholder="Telefono o celular">
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="input-container">
                        <input type="text" name="mascota" placeholder="Nombre de la mascota">
                        <i class="fa-solid fa-user"></i>
                    </div>
                    <div class="input-container">
                        <input type="text" name="RazzoEs" placeholder="Raza - Especie">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                </div>
            </form>
        </section>

        <footer class="footer">
            <div class="footer-content container">
                <div class="link">
                    <a href="#" class="logo">logo</a>
                </div>
                <div class="link">
                    <ul>
                        <li><a href="#">Inicio</a></li>
                        <li><a href="#">Nosotros</a></li>
                        <li><a href="#">Servicios</a></li>
                        <li><a href="#">Contenido</a></li>
                    </ul>
                </div>
            </div>
        </footer>

    </body>
</html>