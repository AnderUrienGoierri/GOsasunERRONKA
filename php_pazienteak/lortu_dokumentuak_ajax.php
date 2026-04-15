<?php
// lortu_dokumentuak_ajax.php (PAZIENTEA)
require_once '../php_orri_laguntzaileak/DB_konexioa.php';
session_start();

if (!isset($_SESSION['rol_id']) || $_SESSION['rol_izena'] !== 'Pazientea') {
    echo "<p class='alerta alerta-errorea'>Baimenik gabe.</p>";
    exit;
}

$j_id = intval($_GET['id'] ?? 0);
if (!$j_id) {
    echo "<p class='testua-erdian padding-20'>Ez da jarraipenik aurkitu.</p>";
    exit;
}

$stmt = $pdo->prepare("SELECT * FROM dokumentuak WHERE jarraipena_id = ? ORDER BY igotze_data DESC");
$stmt->execute([$j_id]);
$dokumentuak = $stmt->fetchAll(PDO::FETCH_ASSOC);

if (empty($dokumentuak)) {
    echo "<p class='testua-erdian padding-20'>Ez dago dokumenturik jarraipen honentzat.</p>";
} else {
    echo '<table class="taula-sinplea">';
    echo '<thead><tr><th>Izena</th><th>Data</th><th>Deskribapena</th><th>Ekintza</th></tr></thead>';
    echo '<tbody>';
    foreach ($dokumentuak as $d) {
        echo '<tr>';
        echo '<td>' . htmlspecialchars($d['dokumentu_izena']) . '</td>';
        echo '<td>' . date('Y/m/d', strtotime($d['igotze_data'])) . '</td>';
        echo '<td><small>' . htmlspecialchars($d['deskribapena'] ?: '-') . '</small></td>';
        echo '<td>
                <a href="../' . htmlspecialchars($d['bidea_zerbitzarian']) . '" target="_blank" class="botoi-ikonoa">
                    <img src="../img/svg/download.svg" class="ikono-txikia">
                </a>
            </td>';
        echo '</tr>';
    }
    echo '</tbody>';
    echo '</table>';
}
?>
