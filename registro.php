
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>consulta db</title>
    <style type="text/css">
     
      table {
        border: solid 2px #7e7c7c;
        border-collapse: collapse;
                     
      }
     
      th, h1 {
        background-color: #edf797;
      }

      td,
      th {
        border: solid 1px #7e7c7c;
        padding: 2px;
        text-align: center;
      }


    </style>
</head>
<body>
    
</body>
</html>


<?php

$user = "root";
$pass = "";
$host = "localhost";


$connection = mysqli_connect($host, $user, $pass);

//hacemos llamado al imput de formuario
$nombre = $_POST["nombre"] ;
$apellido = $_POST["apellido"] ;
$documento = $_POST["documento"] ;
$edad = $_POST["edad"] ;
$tipo_sangre = $_POST["tipo_sangre"] ;
$sexo = $_POST["sexo"] ;
$telefono = $_POST["telefono"] ;
$direccion = $_POST["direccion"] ;


if(!$connection) 
        {
            echo "No se ha podido conectar con el servidor" . mysql_error();
        }
  else
        {
            echo "<b><h3>Hemos conectado al servidor</h3></b>" ;
        }
       
        $datab = "db_form";
    
        $db = mysqli_select_db($connection,$datab);

        if (!$db)
        {
        echo "No se ha podido encontrar la Tabla";
        }
        else
        {
        echo "<h3>Tabla seleccionada:</h3>" ;
        }
        
        $instruccion_SQL = "INSERT INTO tabla_form (nombre, apellido, documento, edad, tipo_sangre, sexo, direccion, telefono)
                             VALUES ('$nombre','$apellido','$documento', '$edad', '$tipo_sangre', '$sexo', 'direccion', '$telefono')";
                           
                            
        $resultado = mysqli_query($connection,$instruccion_SQL);

        //$consulta = "SELECT * FROM tabla where id ='2'"; 
        $consulta = "SELECT * FROM tabla_form ";
        
$result = mysqli_query($connection,$consulta);
if(!$result) 
{
    echo "No se ha podido realizar la consulta";
}
echo "<table>";
echo "<tr>";
echo "<th><h1>id</th></h1>";
echo "<th><h1>Nombre</th></h1>";
echo "<th><h1>Apellido</th></h1>";
echo "<th><h1>Documento</th></h1>";
echo "<th><h1>Edad</th></h1>";
echo "<th><h1>Tipo de sangre</th></h1>";
echo "<th><h1>Sexo</th></h1>";
echo "<th><h1>Telefono</th></h1>";
echo "<th><h1>Direccion</th></h1>";
echo "</tr>";

while ($colum = mysqli_fetch_array($result))
 {
    echo "<tr>";
    echo "<td><h2>" . $colum['id']. "</td></h2>";
    echo "<td><h2>" . $colum['nombre']. "</td></h2>";
    echo "<td><h2>" . $colum['apellido'] . "</td></h2>";
    echo "<td><h2>" . $colum['documento'] . "</td></h2>";
    echo "<td><h2>" . $colum['edad'] . "</td></h2>";
    echo "<td><h2>" . $colum['tipo_sangre'] . "</td></h2>";
    echo "<td><h2>" . $colum['sexo'] . "</td></h2>";
    echo "<td><h2>" . $colum['telefono'] . "</td></h2>";
      echo "<td><h2>" . $colum['direccion'] . "</td></h2>";

    echo "</tr>";
}
echo "</table>";

mysqli_close( $connection );

   echo'<a href="index.html"> Volver Atrás</a>';


?>

