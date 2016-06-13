<?php
########### ESTO DEBE ESTAR EN EL HTML CON LA VISTA PA MATRICULAR##
/*
Ingrese los siguientes datos:
<form action="matriculado.php" method="post">
  <p>R.U.T: <input type="text" name="rut"><br></p>
  <p>Nombre: <input type="text" name="nombre"><br></p>
  <p>Apellido Paterno: <input type="text" name="apellidoPat"><br></p>
  <p>Apellido Materno: <input type="text" name="apellidoMat"><br></p>
  <p>Fecha de Nacimiento: <input type="date" name="fecha" value="<?php echo date('Y-m-d'); ?>" /></p>
  <p>R.U.T de su Apoderado: <input type="text" name="rutAp"><br></p>
  <p>Curso al que postula: <input type="text" name="idC"><br></p>
  <p><input type="submit" value="Matricular"></p>
</form>
*/
?>

<?php
include ("conexion.php");
/* #####33PARA VERIFICAR DATOS ##########
echo "INSERTANDO ALUMNO CON DATOS:";
echo "<br>";
echo "rut : " .$_POST["rut"]; echo "<br>";
echo "nombre: " .$_POST["nombre"];echo "<br>";
echo "apP: " .$_POST["apellidoPat"];echo "<br>";
echo "apM: " .$_POST["apellidoMat"];echo "<br>";
echo "fecha: " .$_POST["fecha"];echo "<br>";
echo "rutAP: " .$_POST["rutAp"];echo "<br>";
echo "id_Curso: " .$_POST["idC"] ;
*/

// INSERTAR DATOS DEL ALUMNO
$rut = $_POST["rut"]; #xx.xxx.xxx-x
$nombre = $_POST["nombre"];
$apellidoPaterno = $_POST["apellidoPat"];
$apellidoMaterno = $_POST["apellidoMat"];
$fecha_nac = $_POST["fecha"]; #yyyy-mm-dd
$dias_p = 0;		#POR DEFECTO ES 0
$dias_a = 0;		#POR DEFECTO ES 0
$dias_j = 0;		#POR DEFECTO ES 0
$rut_ap = $_POST["rutAp"]; # yy.yyy.yyy-y rut de apoderado que debe existir en la BD
$id_curso = $_POST["idC"]; #CURSO AL QUE PERTENCE, DEBE EXISTIR

$insert = "INSERT INTO alumno (RUT_Alumno, Nombre_Alumno,ApellidoP_Alumno,ApellidoM_Alumno,FechaNac_Alumno,Dias_Presente,Dias_Ausente,Dias_Justificados,RUT_Apoderado,id_Curso) values ('$rut', '$nombre' , '$apellidoPaterno', '$apellidoMaterno' , CAST('$fecha_nac' AS DATE) , $dias_p, $dias_a, $dias_j, '$rut_ap' , $id_curso )";
if (mysql_query($insert, $conexion)) {
   echo "Nuevo Alumno Ingresado";
} else {
   echo "Error: " . $insert . "<br>" . mysql_error($conexion);
}

?>
