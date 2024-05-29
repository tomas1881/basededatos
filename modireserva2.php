<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reservas / D'eventos</title>
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&family=Roboto:wght@400;500;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid py-5">
        <div class="container">
            <div class="reservation position-relative overlay-top overlay-bottom">
                <div class="row align-items-center">
                    <div class="col-lg-6 my-5 my-lg-0">
                        <div class="p-5">
                            <div class="mb-4">
                                <h1 class=" m-0 display-4 fa text-white service-icon">D'eventos</h1>
                                <h1 class="text-primary">Bienvenidos</h1>
                            </div>
                            <?php
                            include("db.php");
                            include("validar.php");
                            ?>


                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                   
                    <form action="modireserva.php" method="post">

                    <label class="text-primary  "for="usuario">ID del reserva a modificar:</label><br>
                    <input type="text" id="usuario" name="usuario"><br>
                    <style>

                   .btn {

                         background-color: peru; 
                         border: none; 
                         color: white; 
                         padding: 10px 20px; 
                         text-align: center; 
                         text-decoration: none; 
                         display: inline-block; 
                         font-size: 16px; 
                          margin: 4px 2px; 
                           cursor: pointer; 
                        }
                         input[name="btnmodificar"] {
                        }
                        </style>
                      </style>
                     <input name="btnmodificar" class="btn" type="submit" value="Modificar Reserva">


                    </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>