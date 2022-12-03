<?php

function saludar() {
	echo '¡Hola! XD';
	echo '<br>';
}

saludar();
saludar();
saludar();
saludar();
saludar();
saludar();

echo '<hr>';




// --------------------------

function saludar2() {
	return 'Hola';
}

// Se llama a la función saludar2(), pero el contenido retornado no se guardó en ningún lugar ni se mostró en pantalla.
saludar2();

// Se llama a la función saludar2(), y se hace un echo del contenido devuelto por la misma
echo saludar2();


// Se llama a la función saludar2(), y lo que retorna se almacena como contenido de la variable $miSaludo. De momento no se muestra en pantalla.
$miSaludo = saludar2();

// Se imprime en pantalla el contenido de $miSaludo ('Hola')
echo $miSaludo;

echo '<hr>';

// ------------------------


function sumar($a, $b) {
	// $a = 4;
	// $b = 6;
	$total = $a + $b;
	return $total;
}


echo sumar(10, 20);
echo '<br>';
echo sumar(1, 4);

$producto1 = 100;
$producto2 = 200;
$subtotal = sumar($producto1, $producto2);

echo '<br>';

// echo $subtotal;

$descuento = 10;

$valorDelProducto = $subtotal - $descuento;

echo 'El valor final, con el descuento incluido es de ' . $valorDelProducto . '<br>';

// echo sumar();



// ---------------------------


function getNombreCompletoFormateado($nombre, $apellido) {
	// $nombreCompleto = '<strong>' . $nombre . ' ' . $apellido . '</strong>'
	// return $nombreCompleto;
	return '<strong>' . $nombre . ' ' . $apellido . '</strong>';
}



echo getNombreCompletoFormateado('Ana', 'Torres') . '<br>';
echo getNombreCompletoFormateado('Damián', 'Peralta') . '<br>';

echo '<hr>';

function getDatosCliente($nombre, $apellido, $pais) {
	// return '<br>Nombre completo: ' .
	//  '<strong>' . $nombre . ' ' . $apellido . '</strong>'
	//  . '<br>País: <strong>' . $pais . '</strong>'
	//  ;
	return '<br>Nombre completo: ' .
	 getNombreCompletoFormateado($nombre, $apellido)
	 . '<br>País: <strong>' . $pais . '</strong>'
	 ;
}

echo getDatosCliente('Laura', 'García', 'Argentina');
echo getDatosCliente('Luis', 'Ramos', 'Perú');
