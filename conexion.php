
    <?php 
// Conectamos con la base de datos y almacenamos la conexión en la variable conexión 
        $conexion = mysql_connect("localhost", "root", "123");
 
        //creamos una condicional IF para estar seguros de que hemos conectado correctamente
 
        if(!$conexion) 
        {
            echo "No se ha podido conectar con el servidor" . mysql_error();
        }
        else
        {
            echo "Hemos conectado al servidor <br />";
        }
 
        //seleccionamos la base de datos a la que conectarlos, el primer parametro es nuestra BD y el segundo la conexion
 
        $db_seleccionada = mysql_select_db("colegio", $conexion);
 
        //Escribimos una condicional para que en el caso de que tengamos un error al conectar nos muestre un mensaje
 
        if(!$db_seleccionada)
        {
            echo "Hay un problema al seleccionar la base de datos" . mysql_error();
        }
        else
        {
            echo "Conectado correctamente a la base de datos <br />";
        }
?>
