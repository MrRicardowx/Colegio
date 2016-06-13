
<?php
include ("conexion.php");
?>

<!DOCTYPE html>
<head>
	<head>
	  <title>Ejemplo</title>
	</head> 	

	<body>
    <div align='center'> 
    <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
    <tr> 
      <td width='150' style='font-weight: bold'>RUT</td> 
      <td width='150' style='font-weight: bold'>NOMBRE</td> 
      <td width='150' style='font-weight: bold'>APELLIDO PATERNO</td> 
      <td width='150' style='font-weight: bold'>APELLIDO MATERNO</td> 
      <td width='150' style='font-weight: bold'>DIAS AUSENTES</td> 
      <td width='150' style='font-weight: bold'>DIAS PRESENTES</td> 
      <td width='150' style='font-weight: bold'>DIAS JUSTIFICADOS</td> 
      <td width='150' style='font-weight: bold'>RUT APODERADO</td> 
      <td width='150' style='font-weight: bold'>CURSO</td> 
      <td width='150' style='font-weight: bold'></td> 
    </tr>  
		<?php
			$rs = mysql_query("SELECT * FROM alumno", $conexion); 

            if ($row = mysql_fetch_array($rs)){ 
                do{
                     echo "<tr>"
                   ."<td>".$row['RUT_Alumno']."</td>"
                   ."<td>".$row['Nombre_Alumno']."</td>"
                   ."<td>".$row['ApellidoP_Alumno']."</td>"
                   ."<td>".$row['ApellidoM_Alumno']."</td>"
                   ."<td>".$row['Dias_Presente']."</td>"
                   ."<td>".$row['Dias_Ausente']."</td>"
                   ."<td>".$row['Dias_Justificados']."</td>"
                   ."<td>".$row['RUT_Apoderado']."</td>"
                   ."<td>".$row['id_Curso']."</td>"
                   ."</tr>"; 
                }while ( $row = mysql_fetch_array($rs));
            } else { 
            echo "¡ No se ha encontrado ningún registro !"; 
            } 
            ?> 
        </table>



    <div align='center'> 
    <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
    <tr> 
      <td width='150' style='font-weight: bold'>RUT</td> 
      <td width='150' style='font-weight: bold'>NOMBRE</td> 
      <td width='150' style='font-weight: bold'>APELLIDO PATERNO</td>
      <td width='150' style='font-weight: bold'>APELLIDO MATERNO</td>
      <td width='150' style='font-weight: bold'>FECHA NACIMIENTO</td>
      <td width='150' style='font-weight: bold'>TELEFONO</td> 
      <td width='150' style='font-weight: bold'>CORREO</td> 
    </tr>  
        <?php
            $rs = mysql_query("SELECT * FROM profesor", $conexion); 

            if ($row = mysql_fetch_array($rs)){ 
                do{
                     echo "<tr>"
                   ."<td>".$row['RUT_Profesor']."</td>"
                   ."<td>".$row['Nombre_Profesor']."</td>"
                   ."<td>".$row['ApellidoP_Profesor']."</td>"
                   ."<td>".$row['ApellidoM_Profesor']."</td>"
                   ."<td>".$row['FechaNac_Profesor']."</td>"
                   ."<td>".$row['Telefono_Profesor']."</td>"
                   ."<td>".$row['Correo_Profesor']."</td>"
                   ."</tr>"; 
                }while ( $row = mysql_fetch_array($rs));
            } else { 
            echo "¡ No se ha encontrado ningún registro !"; 
            } 
            ?> 
        </table>


    <div align='center'> 
    <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
    <tr> 
      <td width='150' style='font-weight: bold'>ID ANOTACION</td> 
      <td width='150' style='font-weight: bold'>TIPO</td> 
      <td width='150' style='font-weight: bold'>DESCRPCION</td> 
      <td width='150' style='font-weight: bold'>FECHA</td> 
      <td width='150' style='font-weight: bold'>RUT ALUMNO</td> 
    </tr>  
        <?php
            $rs = mysql_query("SELECT * FROM anotacion", $conexion); 

            if ($row = mysql_fetch_array($rs)){ 
                do{
                     echo "<tr>"
                   ."<td>".$row['id_Anotacion']."</td>"
                   ."<td>".$row['Tipo']."</td>"
                   ."<td>".$row['Descripcion']."</td>"
                   ."<td>".$row['Fecha']."</td>"
                   ."<td>".$row['RUT_Alumno']."</td>"
                   ."</tr>"; 
                }while ( $row = mysql_fetch_array($rs));
            } else { 
            echo "¡ No se ha encontrado ningún registro !"; 
            } 
            ?> 
        </table>






    <div align='center'> 
    <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
    <tr> 
      <td width='150' style='font-weight: bold'>RUT</td> 
      <td width='150' style='font-weight: bold'>NOMBRE</td> 
      <td width='150' style='font-weight: bold'>APELLIDO PATERNO</td>
      <td width='150' style='font-weight: bold'>APELLIDO MATERNO</td>
      <td width='150' style='font-weight: bold'>FECHA NACIMIENTO</td>
      <td width='150' style='font-weight: bold'>TELEFONO</td> 
      <td width='150' style='font-weight: bold'>CORREO</td> 
    </tr>  
        <?php
            $rs = mysql_query("SELECT * FROM apoderado", $conexion); 

            if ($row = mysql_fetch_array($rs)){ 
                do{
                     echo "<tr>"
                   ."<td>".$row['RUT_Apoderado']."</td>"
                   ."<td>".$row['Nombre_Apoderado']."</td>"
                   ."<td>".$row['ApellidoP_Apoderado']."</td>"
                   ."<td>".$row['ApellidoM_Apoderado']."</td>"
                   ."<td>".$row['FechaNac_Apoderado']."</td>"
                   ."<td>".$row['Telefono_Apoderado']."</td>"
                   ."<td>".$row['Correo_Apoderado']."</td>"
                   ."</tr>"; 
                }while ( $row = mysql_fetch_array($rs));
            } else { 
            echo "¡ No se ha encontrado ningún registro !"; 
            } 
            ?> 
        </table>




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


     <div align='center'> 
        <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
        <tr> 
          <td width='150' style='font-weight: bold'>ID CURSO</td>
          <td width='150' style='font-weight: bold'>NIVEL</td>  
          <td width='150' style='font-weight: bold'>LETRA</td>
          <td width='150' style='font-weight: bold'>CANTIDAD ALUMNOS</td>    
          <td width='150' style='font-weight: bold'>RUT PROFESOR</td> 
        </tr>  
            <?php
                $rs = mysql_query("SELECT * FROM curso", $conexion); 

                if ($row = mysql_fetch_array($rs)){ 
                    do{
                         echo "<tr>"
                       ."<td>".$row['id_Curso']."</td>"
                       ."<td>".$row['Nivel']."</td>"
                       ."<td>".$row['Letra']."</td>"
                       ."<td>".$row['CantAlumnos']."</td>"
                       ."<td>".$row['RUT_Profesor']."</td>"
                       ."</tr>"; 
                    }while ( $row = mysql_fetch_array($rs));
                } else { 
                echo "¡ No se ha encontrado ningún registro !"; 
                } 
                ?> 
            </table>




     <div align='center'> 
        <table border='3' cellpadding='0' cellspacing='0' width='600' bgcolor='#F6F6F6' bordercolor='#FFFFFF'> 
        <tr> 
          <td width='150' style='font-weight: bold'>ID NOTAS</td>
          <td width='150' style='font-weight: bold'>N1</td>  
          <td width='150' style='font-weight: bold'>N2</td>
          <td width='150' style='font-weight: bold'>N3</td>  
          <td width='150' style='font-weight: bold'>N4</td> 
          <td width='150' style='font-weight: bold'>N5</td> 
          <td width='150' style='font-weight: bold'>N6</td> 
          <td width='150' style='font-weight: bold'>N7</td> 
          <td width='150' style='font-weight: bold'>N8</td> 
          <td width='150' style='font-weight: bold'>N9</td>
          <td width='150' style='font-weight: bold'>N10</td>    
          <td width='150' style='font-weight: bold'>RUT ALUMNO</td> 
        </tr>  
        <td width='500' style='font-weight: bold'>ID ASIGNATURA</td> 
            <?php
                $rs = mysql_query("SELECT * FROM notas", $conexion); 

                if ($row = mysql_fetch_array($rs)){ 
                    do{
                         echo "<tr>"
                       ."<td>".$row['id_Notas']."</td>"
                       ."<td>".$row['N1']."</td>"
                       ."<td>".$row['N2']."</td>"
                       ."<td>".$row['N3']."</td>"
                       ."<td>".$row['N4']."</td>"
                       ."<td>".$row['N5']."</td>"
                       ."<td>".$row['N6']."</td>"
                       ."<td>".$row['N7']."</td>"
                       ."<td>".$row['N8']."</td>"
                       ."<td>".$row['N9']."</td>"
                       ."<td>".$row['N10']."</td>"
                       ."<td>".$row['RUT_Alumno']."</td>"
                       ."<td>".$row['id_Asignatura']."</td>"
                       ."</tr>"; 
                    }while ( $row = mysql_fetch_array($rs));
                } else { 
                echo "¡ No se ha encontrado ningún registro !"; 
                } 
                ?> 
            </table>




	</body>

</html>