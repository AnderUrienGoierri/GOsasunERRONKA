<!-- Abisuak ez daude erabilgarri orain. Fitxategi hau hutsik utzi da. -->

    if (!empty($arrazoiak)) {
        $is_read = in_array($j['id'], $irakurritako_ids);
        
        // Soilik gehitu irakurri gabekoak (Erabiltzailearen eskaeraren arabera)
        if (!$is_read) {
            $abisuak[] = [
                'id' => $j['id'],
                'pazientea' => $j['izena'] . " " . $j['abizenak'],
                'paziente_id' => $j['paziente_id'],
                'data' => $j['erregistro_data'],
                'deskribapena' => implode(", ", $arrazoiak),
                'irakurrita' => false
            ];
        }
    }
}

$orri_izenburua = "Abisuak - GOsasun";
$uneko_orria = "abisuak";
$css_pertsonalizatua = "abisuak_jarraipenak.css";

include_once '../php_orri_includeak/osasun_langile_goiburua.php';
?>

    <main class="panel-nagusia">
        <div class="orri-goiburua">
            <div>
                <h2><img src="../img/svg/bell-ring.svg" alt="" class="ikono-ertaina marjina-esk-5"> Osasun Abisuak</h2>
                <p>Zure pazienteen neurketa ez-ohikoen zerrenda. Berrikusi eta jarraitu kasu bakoitza.</p>
            </div>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>

        <div class="abisu-zerrenda">
            <?php if (count($abisuak) > 0): ?>
                <?php foreach ($abisuak as $a): ?>
                    <div class="abisu-txartela-medikua abisua-berria">
                        <div class="abisua-header">
                            <div>
                                <span class="etiketa etiketa-gorria">Berria</span>
                                <strong class="marjina-ezk-10"><?php echo htmlspecialchars($a['pazientea']); ?></strong>
                            </div>
                            <span class="testu-gris-txikia"><?php echo date('Y/m/d H:i', strtotime($a['data'])); ?></span>
                        </div>
                        <div class="abisua-gorputza">
                            <p class="marjina-behe-15"><?php echo htmlspecialchars($a['deskribapena']); ?></p>
                            <div class="flex-tartea-10">
                                <a href="jarraipenak.php?paziente_id=<?php echo $a['paziente_id']; ?>" class="botoia botoi-ertza-txikia">
                                    <img src="../img/svg/search.svg" alt="" class="ikono-txikia marjina-esk-5"> Xehetasunak
                                </a>
                                <form method="POST" style="display: inline;">
                                    <input type="hidden" name="mark_read_id" value="<?php echo $a['id']; ?>">
                                    <button type="submit" class="botoia botoi-nagusia-txikia">Irakurrita markatu</button>
                                </form>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="testua-erdian hutsartea-100 opazitatea-50">
                    <img src="../img/svg/check-circle.svg" alt="" class="ikono-handia-48 marjina-behe-15">
                    <p>Ez dago abisu berririk. Zure pazienteen neurketa guztiak normaltasunaren barruan daude.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php include_once '../php_orri_includeak/osasun_footer.php'; ?>
