<!-- Abisuak ez daude erabilgarri orain. Fitxategi hau hutsik utzi da. -->
            <p>Zure neurketen araberako abisu automatikoak.</p>
        </div>

        <?php if ($mezua): ?>
            <div class="alerta alerta-arrakasta"><?php echo htmlspecialchars($mezua); ?></div>
        <?php endif; ?>

        <div class="abisu-zerrenda">
            <?php if (count($abisuak) > 0): ?>
                <?php foreach ($abisuak as $a): ?>
                    <div class="abisu-txartela <?php echo !empty($a['irakurrita']) ? '' : 'ez-irakurrita'; ?>">
                        <h4>
                            <span>
                                <span class="abisu-mota mota-<?php echo isset($a['mota']) ? strtolower($a['mota']) : 'ezezaguna'; ?>">
                                    <?php echo isset($a['mota']) ? htmlspecialchars($a['mota']) : '-'; ?>
                                </span>
                                <?php echo !empty($a['irakurrita']) ? '' : '<span class="testu-arriskua-ezk"><img src="../img/svg/alert.svg" alt="" class="ikono-14px-erdian"> Berria</span>'; ?>
                            </span>
                            <?php if (empty($a['irakurrita'])): ?>
                                <form method="POST" class="barneko-bistarapena">
                                    <input type="hidden" name="mark_read_id" value="<?php echo isset($a['abisu_id']) ? $a['abisu_id'] : ''; ?>">
                                    <button type="submit" class="irakurri-botoia">Markatu irakurrita gisa</button>
                                </form>
                            <?php endif; ?>
                        </h4>
                        <p><?php echo isset($a['testua']) ? htmlspecialchars($a['testua']) : '-'; ?></p>
                        <span class="abisu-data"><img src="../img/svg/calendar-days.svg" alt="" class="ikono-ertaina marjina-esk-5"> <?php echo isset($a['data']) ? date('Y/m/d H:i', strtotime($a['data'])) : '-'; ?></span>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <div class="egoera-hutsa kutxa-hutsa-40" >
                    <div class="ikono-handia-3"><img src="../img/svg/smile.svg" alt="" class="ikono-ertaina marjina-esk-5"></div>
                    <h3>Ez duzu abisurik!</h3>
                    <p>Zure neurketa guztiak normaltasunaren barruan daude une honetan.</p>
                </div>
            <?php endif; ?>
        </div>
    </main>

<?php include_once '../php_orri_includeak/paziente_footer.php';
?>


