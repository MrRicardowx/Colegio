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
  <li><a href= "vistaSecretaria_Apoderados.php">Apoderados</a></li>
  <li><a href= "vistaSecretaria_Profesores.php">Profesores</a></li>
  <li><a href= "vistaSecretaria_Cursos.php">Cursos</a></li>
  <li><a href= "vistaSecretaria_Asignaturas.php">Asignaturas</a></li>
  <li><a href= "vistaSecretaria_Notas.php">Notas</a></li>
  <li><a href= "vistaSecretaria_Anotaciones.php">Anotaciones</a></li>
</ul>  

</body>
</html>
