<a href="http://php.net/manual/es/function.strtoupper.php" target="_blank">strtoupper()</a><br>
<a href="http://php.net/manual/es/function.strtolower.php" target="_blank">strtolower()</a><br>
<a href="http://php.net/manual/es/function.ltrim.php" target="_blank">ltrim()</a><br>
<a href="http://php.net/manual/es/function.rtrim.php" target="_blank">rtrim()</a><br>
<a href="http://php.net/manual/es/function.trim.php" target="_blank">trim()</a><br>
<a href="https://www.php.net/manual/es/function.str-replace.php" target="_blank">str_replace()</a><br>
<a href="http://php.net/manual/es/function.substr.php" target="_blank">substr()</a><br>
<a href="http://php.net/manual/es/function.strlen.php" target="_blank">strlen()</a><br>
<a href="http://php.net/manual/es/function.is-int.php" target="_blank">is_int()</a><br>
<hr>
<pre>
<h1>Funciones de PHP</h1>
<hr>
<h2>Funciones de manejo de string</h2>
<h3>strtoupper() y strtolower()</h3>
<?php
$textoOriginal = 'Este es un texto de ejemplo';
echo 'Texto original: <b>' . $textoOriginal . '</b><br>';
?>
<h4>strtoupper()</h4>
<!-- Convierte todo el texto a mayúsculas -->

<?php

echo 'Todo el texto a mayúsculas: <b>' . strtoupper($textoOriginal) . '</b><br>';

?>

<h4>strtolower()</h4>
<!-- Convierte todo el texto a minúsculas -->

<?php

echo 'Texto a minúsculas: <b>' . strtolower($textoOriginal) . '</b><br><br>';

?>

<h3>trim(), ltrim() y rtrim()</h3>
<!-- Quitan caracteres en blanco de un texto -->

<?php

$textoParaRecortar = '       Este es el    texto con algunos caracteres invisibles.            ';
echo 'Texto para recortar: <b>&quot;' . $textoParaRecortar . '&quot;</b><br>';
echo 'Texto sin caracteres invisibles a la izquierda: <b>&quot;' . ltrim($textoParaRecortar) . '&quot;</b><br>';
echo 'Texto sin caracteres invisibles a la derecha: <b>&quot;' . rtrim($textoParaRecortar) . '&quot;</b><br>';
echo 'Texto sin caracteres invisibles ni a la izquierda ni a la derecha: <b>&quot;' . trim($textoParaRecortar) . '&quot;</b><br>';

echo 'Texto sin caracteres invisibles: <b>&quot;' . str_replace(' ', '', $textoParaRecortar). '&quot;</b><br>';
?>

<h3>substr()</h3>
<!-- Extrae parte de una cadena de caracteres -->

<?php
$cuil = '20-12345678-4';
echo 'CUIL: ' . $cuil . '<br>';
echo 'Desde el caracter número 0: ' . substr($cuil, 0) . '<br>';
echo 'Desde el caracter número 1: ' . substr($cuil, 1) . '<br>';
echo 'Desde el caracter número 3: ' . substr($cuil, 3) . '<br>';
echo 'Desde el caracter número 6: ' . substr($cuil, 6) . '<br>';
echo 'Desde el caracter número 0, los siguientes 2 caracteres: ' . substr($cuil, 0, 2) . '<br>';
echo 'Desde el caracter número 3, los siguientes 8 caracteres: ' . substr($cuil, 3, 8) . '<br>';
echo 'Los últimos 5 caracteres: ' . substr($cuil, -5) . '<br>';
echo 'El último caracter: ' . substr($cuil, -1) . '<br>';
?>

<h3>strlen()</h3>
<!-- Longitud de una cadena de caracteres -->

<?php
$textoDePrueba = 'Este es un texto de prueba';
echo 'Texto de prueba: <b>&quot;' . $textoDePrueba . '&quot;<b>';
echo 'El texto de prueba anterior tiene un largo de ' . strlen($textoDePrueba) . ' caracteres';
?>

<hr>

<h2>Funciones de manejos de números</h2>

<h3>round(), ceil() y floor()</h3>
<!-- Funciones de redondeo -->

<?php
$precio = 467.738;
echo 'Precio original: ' . $precio . '<br>';
echo 'Precio redondeado a entero: ' . round($precio) . '<br>';
echo 'Precio redondeado con 1 decimal: ' . round($precio, 1) . '<br>';
echo 'Precio redondeado con 2 decimales: ' . round($precio, 2) . '<br>';
echo 'Precio redondeado a la decena: ' . round($precio, -1) . '<br>';
echo 'Precio redondeado a la centena: ' . round($precio, -2) . '<br>';


$precio2 = 23.12;
echo 'Precio original: ' . $precio2 . '<br>';
echo 'Precio subido a entero: ' . ceil($precio2) . '<br>';

$precio3 = 42.74;
echo 'Precio original: ' . $precio3 . '<br>';
echo 'Precio bajado a entero: ' . floor($precio3) . '<br>';
?>

<hr>
<h2>Funciones de manejo de tipos de datos</h2>

<h3>is_int()</h3>

<?php
$ejemplo = 4;

echo 'número 4: ' . is_int($ejemplo); // true
echo '<br>';

$texto = 2;
echo 'texto: ' . is_int($texto); // false

echo '<br>';

$ejemplo2 = 37;
if (is_int($ejemplo2)) { // true
	echo 'La variable $ejemplo2 contiene un número entero.<br>';
} else {
	echo 'La variable $ejemplo2 NO contiene un número entero.<br>';
}

$ejemplo3 = 95.48;
if (is_int($ejemplo3)) { // false
	echo 'La variable $ejemplo3 contiene un número entero.<br>';
} else {
	echo 'La variable $ejemplo3 NO contiene un número entero.<br>';
}

$ejemplo4 = 'texto texto texto';
if (is_int($ejemplo4)) { // false
	echo 'La variable $ejemplo4 contiene un número entero.<br>';
} else {
	echo 'La variable $ejemplo4 NO contiene un número entero.<br>';
}

$ejemplo5 = true;
if (is_int($ejemplo5)) { // false
	echo 'La variable $ejemplo5 contiene un número entero.<br>';
} else {
	echo 'La variable $ejemplo5 NO contiene un número entero.<br>';
}

?>
<h3>is_string()</h3>
<?php

if (is_string('texto')) { // true
	echo 'Es un texto<br>';
} else {
	echo 'No es un texto<br>';
}

if (is_string(44)) { // false
	echo 'Es un texto<br>';
} else {
	echo 'No es un texto<br>';
}

if (is_string('44')) { // true
	echo 'Es un texto<br>';
} else {
	echo 'No es un texto<br>';
}

if (is_string('')) { // true
	echo 'Es un texto<br>';
} else {
	echo 'No es un texto<br>';
}

?>
<h3>is_numeric()</h3>
<?php

if (is_numeric(3)) { // true
	echo 'Es numérico<br>';
} else {
	echo 'No es numérico<br>';
}

if (is_numeric(3.2)) { // true
	echo 'Es numérico<br>';
} else {
	echo 'No es numérico<br>';
}

if (is_numeric('300.02')) { // true
	echo 'Es numérico<br>';
} else {
	echo 'No es numérico<br>';
}

if (is_numeric('texto no numérico')) { // false
	echo 'Es numérico<br>';
} else {
	echo 'No es numérico<br>';
}

if (is_numeric('25 autos')) { // false
	echo 'Es numérico<br>';
} else {
	echo 'No es numérico<br>';
}

?>
<hr>
<h2>Funciones de verificación de contenidos o existencia de variables</h2>
<h3>isset()</h3>
<?php
// isset devuelve true cuando una variable existe y no es null.

$x1 = 40;
if (isset($x1)) { // true
	echo 'x1 está seteada (es decir, existe y no es null).<br>';
} else {
	echo 'x1 NO está seteada (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

$x2 = 0;
if (isset($x2)) { // true
	echo 'x2 está seteada (es decir, existe y no es null).<br>';
} else {
	echo 'x2 NO está seteada (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

if (isset($x3)) { // false, ya que no existe
	echo 'x3 está seteada (es decir, existe y no es null).<br>';
} else {
	echo 'x3 NO está seteada (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

$x4 = null;
if (isset($x4)) { // false, ya que existe, pero es null
	echo 'x4 está seteada (es decir, existe y no es null).<br>';
} else {
	echo 'x4 NO está seteada (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

$x5 = '';
if (isset($x5)) { // true, ya que existe, por más que sea un string vacío
	echo 'x5 está seteada (es decir, existe y no es null).<br>';
} else {
	echo 'x5 NO está seteada (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

$miArray[0] = 40;
if (isset($miArray[0])) { // true
	echo 'El ìndice 0 de miArray está seteado (es decir, existe y no es null).<br>';
} else {
	echo 'El ìndice 0 de miArray NO está seteado (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

if (isset($miArray[999])) { // true
	echo 'El ìndice 999 de miArray está seteado (es decir, existe y no es null).<br>';
} else {
	echo 'El ìndice 999 de miArray NO está seteado (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}

if (isset($_GET['algo'])) { // true, si se recibe por $_GET el parámetro 'algo'
	echo 'El ìndice algo de _GET está seteado (es decir, existe y no es null).<br>';
} else {
	echo 'El ìndice algo de _GET NO está seteado (ya sea porque no existe, o porque existe pero contiene un null).<br>';
}


if (isset($_GET['nombre'])) { // true, si se recibe por $_GET el parámetro 'nombre'
	echo 'El nombre recibido por GET es: ' . $_GET['nombre'] . '<br>';
} else {
	echo 'No se recibió el nombre.<br>';
}


if (isset($_GET['nombre'])) { // true, si se recibe por $_GET el parámetro 'nombre'
	if (strlen($_GET['nombre']) > 0) {
		echo 'El nombre recibido por GET es: ' . $_GET['nombre'] . '<br>';
	} else {
		echo 'Se recibió por GET un nombre vacío.<br>';
	}
} else {
	echo 'No se recibió el nombre.<br>';
}


?>
<h3>empty()</h3>
<?php
/* empty() devuelve true cuando una variable está vacía.
	empty() considera que una variable está "vacía" cuando contiene uno de los siguientes valores:
	0
	0.0
	''
	'0'
	false
	null
	[] (array vacío)
	o la variable no está definida
 */

if (empty('')) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty('4')) { // false
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty('algo')) { // false
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty(false)) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty(true)) { // false
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty(null)) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty($variableInexistente)) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty(0)) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

if (empty('0')) { // true
	echo 'empty<br>';
} else {
	echo 'not empty<br>' ;
}

?>
</pre>
