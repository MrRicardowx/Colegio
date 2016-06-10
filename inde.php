
<?php
include ("conexion.php");
?>
<html>
	<head>
		<title>Ejemplo</title>
	</head> 		
	<body>
		<?php
			echo "Bienvenidos a aprenderaprogramar.com";
		?>
	</body>

<?php
$sql = "SELECT * FROM alumno";
$resultado = mysql_query($sql, $conexion);

if (!$resultado) {
    echo "Error de BD, no se pudo consultar la base de datos\n";
    echo "Error MySQL: " . mysql_error();
    exit;
}

while ($fila = mysql_fetch_assoc($resultado)) {
    echo $fila['RUT_Alumno'];
    echo $fila['Nombre_Alumno'];
}

mysql_free_result($resultado);

?>
</html>