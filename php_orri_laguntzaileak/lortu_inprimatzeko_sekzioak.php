<?php
session_start();
header('Content-Type: application/json');

if (!isset($_SESSION['rol_id']) || !in_array($_SESSION['rol_izena'], ['Osasun Langilea', 'Harrera Langilea'])) {
    http_response_code(403);
    echo json_encode(['error' => 'Baimenik ez']);
    exit;
}

require_once 'DB_konexioa.php';

$paziente_id = $_GET['paziente_id'] ?? null;
$h_data = $_GET['h_data'] ?? null;
$a_data = $_GET['a_data'] ?? null;
$sections = isset($_GET['sections']) ? explode(',', $_GET['sections']) : [];

if (!$paziente_id) {
    http_response_code(400);
    echo json_encode(['error' => 'Paziente IDa falta da']);
    exit;
}

// 0. Lortu Pazientearen Datu Orokorrak (Beti beharrezkoa)
$stmtP = $pdo->prepare("SELECT * FROM V_Pazientea WHERE paziente_id = ?");
$stmtP->execute([$paziente_id]);
$pazientea = $stmtP->fetch(PDO::FETCH_ASSOC);

if (!$pazientea) {
    http_response_code(404);
    echo json_encode(['error' => 'Pazientea ez da aurkitu']);
    exit;
}

$response = [];

// A. BRANDING (Beti)
$logo_path = dirname(__DIR__) . '/img/png/GOsasun_logoa.png';
$logo_data = '';
if (file_exists($logo_path)) {
    $type = pathinfo($logo_path, PATHINFO_EXTENSION);
    $data = file_get_contents($logo_path);
    $logo_data = 'data:image/' . $type . ';base64,' . base64_encode($data);
}

$branding_html = '
    <div style="display: flex; justify-content: space-between; align-items: center; border-bottom: 3px solid #0369a1; padding-bottom: 20px; margin-bottom: 30px;">
        <div style="display: flex; align-items: center;">
            ' . ($logo_data ? '<img src="' . $logo_data . '" style="width: 50px; height: 50px; margin-right: 15px;">' : '') . '
            <div>
                <h1 style="margin: 0; color: #0369a1; font-size: 28px; letter-spacing: -0.5px;">GOsasun</h1>
                <p style="margin: 0; font-size: 12px; color: #64748b; font-weight: 500;">Zure Osasun Ataria</p>
            </div>
        </div>
        <div style="text-align: right; font-size: 10px; color: #475569; line-height: 1.4;">
            <p style="margin: 0; font-weight: 600;">Arranomendia, 2</p>
            <p style="margin: 0;">20240 Ordizia, Gipuzkoa</p>
            <p style="margin: 0;">Tlf: +34 944 123 456</p>
            <p style="margin: 0;">Email: info@gosasun.eus</p>
        </div>
    </div>';
$response['branding'] = $branding_html;

// B. PATIENT SUMMARY (Beti)
$summary_html = '
    <div style="background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 8px; padding: 20px; margin-bottom: 40px;">
        <h2 style="margin: 0 0 15px 0; font-size: 18px; color: #1e293b; border-bottom: 1px solid #cbd5e1; padding-bottom: 8px;">Pazientearen Fitxa</h2>
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 15px; font-size: 13px;">
            <div><strong>Izen-abizenak:</strong> ' . htmlspecialchars($pazientea['izena'] . ' ' . $pazientea['abizenak']) . '</div>
            <div><strong>NAN:</strong> ' . htmlspecialchars($pazientea['nan']) . '</div>
            <div><strong>Jaiotze Data:</strong> ' . htmlspecialchars($pazientea['jaiotze_data']) . '</div>
            <div><strong>Telefonoa:</strong> ' . htmlspecialchars($pazientea['telefonoa']) . '</div>
            <div><strong>E-posta:</strong> ' . htmlspecialchars($pazientea['email']) . '</div>
            <div><strong>Odol Taldea:</strong> <span style="background: #fee2e2; color: #991b1b; padding: 2px 6px; border-radius: 4px; font-weight: bold;">' . htmlspecialchars($pazientea['odol_taldea']) . '</span></div>
        </div>
    </div>';
$response['patient_summary'] = $summary_html;

try {
    // 1. Jarraipenak
    if (in_array('jarraipenak', $sections)) {
        $sql = "SELECT erregistro_data, tentsio_sistolikoa, tentsio_diastolikoa, pultsua_ppm, pisua_kg, altuera, oharrak 
                FROM jarraipenak WHERE paziente_id = ?";
        $params = [$paziente_id];
        
        if ($h_data) { $sql .= " AND erregistro_data >= ?"; $params[] = $h_data . ' 00:00:00'; }
        if ($a_data) { $sql .= " AND erregistro_data <= ?"; $params[] = $a_data . ' 23:59:59'; }
        
        $sql .= " ORDER BY erregistro_data DESC";
        $stmt = $pdo->prepare($sql);
        $stmt->execute($params);
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        $html = '<h3 style="color: #0369a1; border-bottom: 2px solid #0369a1; padding-bottom: 5px;">Jarraipenak eta Neurketak</h3>';
        if (count($data) > 0) {
            $html .= '<table style="width: 100%; border-collapse: collapse; margin-top: 10px; font-size: 12px;">
                        <thead>
                            <tr style="background-color: #f1f5f9; text-align: left;">
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Data</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Tentsioa</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Pultsua</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Pisua</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Altuera</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Oharrak</th>
                            </tr>
                        </thead>
                        <tbody>';
            foreach ($data as $r) {
                $html .= '<tr>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . date('Y/m/d H:i', strtotime($r['erregistro_data'])) . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . ($r['tentsio_sistolikoa'] && $r['tentsio_diastolikoa'] ? $r['tentsio_sistolikoa'].'/'.$r['tentsio_diastolikoa'] : '-') . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . ($r['pultsua_ppm'] ? $r['pultsua_ppm'].' ppm' : '-') . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . ($r['pisua_kg'] ? $r['pisua_kg'].' kg' : '-') . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . ($r['altuera'] ? $r['altuera'].' cm' : '-') . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1; color: #475569;">' . htmlspecialchars($r['oharrak'] ?? '-') . '</td>
                          </tr>';
            }
            $html .= '</tbody></table>';
        } else {
            $html .= '<p style="color: #64748b;">Ez dago jarraipenik aukeratutako tartean.</p>';
        }
        $response['jarraipenak'] = $html;
        $response['jarraipenak_raw'] = $data;
    }

    // 2. Hitzorduak
    if (in_array('hitzorduak', $sections)) {
        $sql = "SELECT data, hasiera_ordua, arrazoia, egoera, langile_izena, langile_abizenak 
                FROM V_Hitzorduak_Osoa WHERE paziente_id = ?";
        $params = [$paziente_id];
        
        if ($h_data) { $sql .= " AND data >= ?"; $params[] = $h_data; }
        if ($a_data) { $sql .= " AND data <= ?"; $params[] = $a_data; }
        
        $sql .= " ORDER BY data DESC, hasiera_ordua DESC";
        $stmt = $pdo->prepare($sql);
        $stmt->execute($params);
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        $html = '<h3 style="color: #0369a1; border-bottom: 2px solid #0369a1; padding-bottom: 5px; margin-top: 25px;">Hitzorduen Historia</h3>';
        if (count($data) > 0) {
            $html .= '<table style="width: 100%; border-collapse: collapse; margin-top: 10px; font-size: 12px;">
                        <thead>
                            <tr style="background-color: #f1f5f9; text-align: left;">
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Data/Ordua</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Langilea</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Arrazoia</th>
                                <th style="padding: 8px; border: 1px solid #cbd5e1;">Egoera</th>
                            </tr>
                        </thead>
                        <tbody>';
            foreach ($data as $r) {
                $html .= '<tr>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . date('Y/m/d', strtotime($r['data'])) . ' ' . date('H:i', strtotime($r['hasiera_ordua'])) . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . htmlspecialchars($r['langile_izena'] . ' ' . $r['langile_abizenak']) . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . htmlspecialchars($r['arrazoia']) . '</td>
                            <td style="padding: 8px; border: 1px solid #cbd5e1;">' . htmlspecialchars($r['egoera']) . '</td>
                          </tr>';
            }
            $html .= '</tbody></table>';
        } else {
            $html .= '<p style="color: #64748b;">Ez dago hitzordurik aukeratutako tartean.</p>';
        }
        $response['hitzorduak'] = $html;
    }

    // 3. Errezetak
    if (in_array('errezetak', $sections)) {
        $sql = "SELECT e.*, 
                GROUP_CONCAT(CONCAT(b.izena, ' (', eb.dosia, ', ', eb.maiztasuna, ')') SEPARATOR '; ') as botikak_info
                FROM errezetak e
                LEFT JOIN errezeta_botikak eb ON e.id = eb.errezeta_id
                LEFT JOIN botikak b ON eb.botika_id = b.id
                WHERE e.paziente_id = ? ";
        $params = [$paziente_id];
        
        if ($h_data) { $sql .= " AND e.igorpen_data >= ?"; $params[] = $h_data; }
        if ($a_data) { $sql .= " AND e.igorpen_data <= ?"; $params[] = $a_data; }
        
        $sql .= " GROUP BY e.id ORDER BY e.igorpen_data DESC";
        $stmt = $pdo->prepare($sql);
        $stmt->execute($params);
        $data = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        $html = '<h3 style="color: #0369a1; border-bottom: 2px solid #0369a1; padding-bottom: 5px; margin-top: 25px;">Errezetak eta Diagnostikoak</h3>';
        if (count($data) > 0) {
            foreach ($data as $r) {
                $html .= '<div style="margin-top: 15px; padding: 10px; border: 1px solid #e2e8f0; border-radius: 5px;">
                            <div style="display: flex; justify-content: space-between; font-weight: bold; color: #334155;">
                                <span>' . htmlspecialchars($r['diagnostiko_laburra']) . '</span>
                                <span style="font-size: 11px;">' . date('Y/m/d', strtotime($r['igorpen_data'])) . '</span>
                            </div>
                            <p style="margin: 5px 0 0 0; font-size: 12px;"><strong>Botikak:</strong> ' . htmlspecialchars($r['botikak_info'] ?? 'Botikarik gabe') . '</p>
                            ' . ($r['iraungitze_data'] ? '<p style="margin: 2px 0 0 0; font-size: 11px; color: #64748b;">Iraungitzea: ' . date('Y/m/d', strtotime($r['iraungitze_data'])) . '</p>' : '') . '
                          </div>';
            }
        } else {
            $html .= '<p style="color: #64748b;">Ez dago errezetarik aukeratutako tartean.</p>';
        }
        $response['errezetak'] = $html;
    }

    echo json_encode(['success' => true, 'sections' => $response]);

} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Datu-base errorea: ' . $e->getMessage()]);
}
