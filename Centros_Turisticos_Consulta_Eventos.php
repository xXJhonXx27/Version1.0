<!DOCTYPE html>
<html lang="ES">
<head>
  <meta charset="UTF-8">
  <title>Bogota Turismo</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>
  <body background="">
  <?php 
  $servidor="localhost";
  $usuario="root";
  $passwd="";
  $baseDatos="bogota_turismo";
  $conexion=new mysqli ($servidor,$usuario,$passwd);
  $conexion->set_charset ("UTF8");
  $db=$conexion->select_db ("$baseDatos");
  //echo "esta instruccion se esta ejecutando si no hay errores de      conexion"
  $queryD="SELECT * FROM tipos_eventos";
  $resultadoC=mysqli_query($conexion,$queryD);
  $contadorR=1;
  while ($registroT=mysqli_fetch_row($resultadoC)){
    echo "<br><center><table width='50%' border='1'><tr style='color:#01DF01;font-size:25px'><td>";
    echo $registroT [0]."</td></tr><tr style='color:#01DF01;font-size:17px'><td>";
    echo $registroT [1]."</td></tr><tr style='color:#01DF01;font-size:17px'><td>";
    echo $registroT [4]."</td></td> </table></center>";
    echo "<br>";
  $contadorR++;
  }
  ?>
<script src="js/jquery.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 
<center><a style="color: #01DF01; font-size: 35px" href="Centros_Turisticos_Consulta.html"> Click Aqui Para Realizar Otra Consulta </a></center>
</body>