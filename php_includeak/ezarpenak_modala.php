    <!-- Ezarpenen Modala -->
    <div id="ezarpenakModala" class="modal-wrapper">
        <div class="modal-edukia">
            <div class="modal-goiburua">
                <h3><img src="<?php echo $bide_absolutua; ?>img/settings.svg" alt="" class="ikono-24px-erdian"> Web Aplikazioaren Ezarpenak (XML)</h3>
                <span class="itxi-modala">&times;</span>
            </div>
            <div class="modal-gorputza">
                <p class="testu-grisa testua-erdian-marjina-behe-20">Hemen web-aren portaera eta itxura XML fitxategian aldatu ditzakezu erakustaldi gisa</p>
                <?php if (isset($_GET['ezarpenak_gordeta'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15 testua-erdian-marjina-behe-20">Ezarpenak XML fitxategian gorde dira!</div>
                <?php endif; ?>
                <?php if (isset($_GET['ezarpenak_reset'])): ?>
                    <div class="alerta alerta-arrakasta marjina-goi-15 testua-erdian-marjina-behe-20">Hasierako baloreak berreskuratu dira!</div>
                <?php endif; ?>
                
                <form action="<?php echo $bide_absolutua; ?>php_laguntzaileak/ezarpenak_gorde.php" method="POST">
                    <input type="hidden" name="form_type" value="orokorra">
                    <input type="hidden" name="nondik" value="<?php echo htmlspecialchars($_SERVER['REQUEST_URI']); ?>">
                    
                    <div class="inprimaki-taldea">
                        <label>Defektuzko hizkuntza:</label>
                        <select name="hizkuntza" class="inprimaki-kontrola">
                            <option value="eu" <?php echo ($hizkuntza_def === 'eu') ? 'selected' : ''; ?>>Euskara</option>
                            <option value="es" <?php echo ($hizkuntza_def === 'es') ? 'selected' : ''; ?>>Castellano</option>
                            <option value="en" <?php echo ($hizkuntza_def === 'en') ? 'selected' : ''; ?>>English</option>
                        </select>
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Kolore nagusia:</label>
                        <input type="color" name="kolore_nagusia" value="<?php echo htmlspecialchars($kolore_nagusia_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Bigarren mailako kolorea:</label>
                        <input type="color" name="bigarren_kolorea" value="<?php echo htmlspecialchars($bigarren_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Footer kolorea:</label>
                        <input type="color" name="footer_kolorea" value="<?php echo htmlspecialchars($footer_kolorea_def); ?>" class="inprimaki-kontrola sarrera-altuera-50">
                    </div>

                    <div class="inprimaki-taldea">
                        <label>Aplikazioaren Itxura (Gaia):</label>
                        <select name="gaia" class="inprimaki-kontrola">
                            <option value="argia" <?php echo ($gaia_def === 'argia') ? 'selected' : ''; ?>>Argia (Mahaigaina klasikoa)</option>
                            <option value="iluna" <?php echo ($gaia_def === 'iluna') ? 'selected' : ''; ?>>Iluna (Modo oscuro)</option>
                        </select>
                    </div>

                    <div class="testua-erdian-marjina-goi-30">
                        <button type="submit" class="botoia botoi-nagusia zabalera-osoa-300px">Gorde Ezarpenak (XML-an)</button>
                    </div>
                </form>

                <form action="<?php echo $bide_absolutua; ?>php_laguntzaileak/ezarpenak_gorde.php" method="POST" class="marjina-goi-15">
                    <input type="hidden" name="ekintza" value="reset">
                    <input type="hidden" name="form_type" value="orokorra">
                    <input type="hidden" name="nondik" value="<?php echo htmlspecialchars($_SERVER['REQUEST_URI']); ?>">
                    <div class="testua-erdian">
                        <button type="submit" class="botoia botoi-itsua-gorria" onclick="return confirm('Ziur zaude hasierako baloreak berreskuratu nahi dituzula?')">Berreskuratu hasierako baloreak</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
