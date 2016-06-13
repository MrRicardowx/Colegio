<?php
include ("conexion.php");
?>

</!DOCTYPE html>
<html>
<head>
<style>
ul#menu {
    padding: 0;
}

ul#menu li {
    display: inline;
}

ul#menu li a {
    background-color: black;
    color: white;
    padding: 10px 20px;
    text-decoration: none;
    border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
    background-color: orange;
}
</style>
</head>
<body>

<h2>Vista Secretaria</h2>

<ul id="menu">
  <li><a href= "vistaSecretaria_Alumnos.php">Alumnos</a></li>
  <li><a href="vistaSecretaria_Apoderados.php">Apoderados</a></li>
  <li><a href="vistaSecretaria_Profesores.php">Profesores</a></li>
  <li><a href="vistaSecretaria_Cursos.php">Cursos</a></li>
  <li><a href="vistaSecretaria_Asignaturas.php">Asignaturas</a></li>
  <li><a href="vistaSecretaria_Notas.php">Notas</a></li>
  <li><a href="vistaSecretaria_Anotaciones.php">Anotaciones</a></li>
</ul>  

<div aling= "right">
    <form action="ingresarAsignatura.php">
    <p><input type="submit" value="ingresar Asignatura"></p>
</div>



  <div align='center'> 
        <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
        <tr> 
          <td width='150' style='font-weight: bold'>ID ASIGNATURA</td>
          <td width='150' style='font-weight: bold'>NOMBRE ASIGNATURA</td>  
          <td width='150' style='font-weight: bold'>RUT PROFESOR</td> 
        </tr>  
            <?php
                $rs = mysql_query("SELECT * FROM asignatura", $conexion); 

                if ($row = mysql_fetch_array($rs)){ 
                    do{
                         echo "<tr>"
                       ."<td>".$row['id_Asignatura']."</td>"
                       ."<td>".$row['Nombre_Asignatura']."</td>"
                       ."<td>".$row['RUT_Profesor']."</td>"
                       ."</tr>"; 
                    }while ( $row = mysql_fetch_array($rs));
                } else { 
                echo "¡ No se ha encontrado ningún registro !"; 
                } 
                ?> 
            </table>
</div>  
          
<div aling= "right">
    <form action="vistaSecretaria.php">
    <p><input type="submit" value="Volver al Login"></p>
</div>

</body>
</html>
