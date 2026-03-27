<?php
// Archivo de prueba para verificar que todo funciona
echo "PHP funciona correctamente<br>";

// Verificar conexión a la BD
require_once '../php_laguntzaileak/DB_konexioa.php';

if ($pdo) {
    echo "Conexión a BD exitosa<br>";
} else {
    echo "Error en conexión a BD<br>";
}

// Verificar que los archivos XML se cargan
$config_path = '../xml_konfigurazioa/config.xml';
if (file_exists($config_path)) {
    echo "Archivo config.xml encontrado<br>";
} else {
    echo "Archivo config.xml NO encontrado<br>";
}

// Verificar idioma
$hizkuntza_xml = '../xml_hizkuntzak/eu.xml';
if (file_exists($hizkuntza_xml)) {
    echo "Archivo eu.xml encontrado<br>";
} else {
    echo "Archivo eu.xml NO encontrado<br>";
}

echo "Todos los checks completados!";
?>
