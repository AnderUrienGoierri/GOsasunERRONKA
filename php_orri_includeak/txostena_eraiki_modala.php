<!-- php_orri_includeak/report_modal.php -->
<div id="txostenModala" class="modala" style="display:none; position:fixed; z-index:5000; left:0; top:0; width:100%; height:100%; background:rgba(0,0,0,0.6); backdrop-filter:blur(4px);">
    <div class="modala-edukia" style="background:#fff; margin:5% auto; padding:25px; border-radius:12px; width:95%; max-width:600px; box-shadow:0 15px 35px rgba(0,0,0,0.3); animation: modalIn 0.3s ease-out;">
        <div style="display:flex; justify-content:space-between; align-items:center; border-bottom:1px solid #e2e8f0; padding-bottom:15px; margin-bottom:20px;">
            <h3 style="margin:0; color:#0369a1; font-size:1.4rem;"><img src="../img/svg/file-text.svg" alt="" style="width:1.2rem; vertical-align:middle; margin-right:8px;"> Txosten Pertsonalizatua</h3>
            <span style="font-size:1.8rem; cursor:pointer; color:#64748b; line-height:1;" onclick="itxiTxostenModala()">&times;</span>
        </div>

        <form id="txostenForm">
            <input type="hidden" id="txosten_paziente_id" value="<?php echo $paziente_id; ?>">

            <div class="inprimaki-taldea" style="margin-bottom:20px;">
                <label style="display:block; font-weight:600; margin-bottom:8px; color:#1e293b;">Txostenaren Izena</label>
                <input type="text" id="txosten_izena" class="inprimaki-kontrola" placeholder="Adib: Jarraipen Klinikoa Ane" style="width:100%; padding:10px; border:1px solid #cbd5e1; border-radius:6px;">
            </div>

            <div class="inprimaki-taldea" style="margin-bottom:25px;">
                <label style="display:block; font-weight:600; margin-bottom:12px; color:#1e293b;">Datu-tartea</label>
                <div style="display:grid; grid-template-columns:1fr 1fr; gap:12px; margin-bottom:10px;">
                    <div>
                        <span style="font-size:0.85rem; color:#64748b; display:block; margin-bottom:4px;">Hasiera</span>
                        <input type="date" id="txosten_hasiera" class="inprimaki-kontrola" style="width:100%; padding:8px; border:1px solid #cbd5e1; border-radius:6px;">
                    </div>
                    <div>
                        <span style="font-size:0.85rem; color:#64748b; display:block; margin-bottom:4px;">Amaiera</span>
                        <input type="date" id="txosten_amaiera" class="inprimaki-kontrola" style="width:100%; padding:8px; border:1px solid #cbd5e1; border-radius:6px;" value="<?php echo date('Y-m-d'); ?>">
                    </div>
                </div>
                <div style="display:flex; gap:8px; flex-wrap:wrap;">
                    <button type="button" class="botoi-txikia-ertza" onclick="setPresetDate('gaur')" style="padding:4px 10px; font-size:0.8rem; background:#f1f5f9; border:1px solid #cbd5e1; border-radius:4px; cursor:pointer;">Gaur</button>
                    <button type="button" class="botoi-txikia-ertza" onclick="setPresetDate('astea')" style="padding:4px 10px; font-size:0.8rem; background:#f1f5f9; border:1px solid #cbd5e1; border-radius:4px; cursor:pointer;">Azken Astea</button>
                    <button type="button" class="botoi-txikia-ertza" onclick="setPresetDate('hilabetea')" style="padding:4px 10px; font-size:0.8rem; background:#f1f5f9; border:1px solid #cbd5e1; border-radius:4px; cursor:pointer;">Azken Hilabetea</button>
                    <button type="button" class="botoi-txikia-ertza" onclick="setPresetDate('dena')" style="padding:4px 10px; font-size:0.8rem; background:#f1f5f9; border:1px solid #cbd5e1; border-radius:4px; cursor:pointer;">Dena</button>
                </div>
            </div>

            <div class="inprimaki-taldea" style="margin-bottom:25px;">
                <label style="display:block; font-weight:600; margin-bottom:12px; color:#1e293b;">Txertatu beharreko atalak</label>
                <div style="display:grid; grid-template-columns:1fr 1fr; gap:15px;">
                    <label style="display:flex; align-items:center; cursor:pointer; font-size:0.95rem;">
                        <input type="checkbox" name="sections" value="jarraipenak" checked style="margin-right:10px; transform:scale(1.2);"> Jarraipen datuak
                    </label>
                    <label style="display:flex; align-items:center; cursor:pointer; font-size:0.95rem;">
                        <input type="checkbox" name="sections" value="hitzorduak" checked style="margin-right:10px; transform:scale(1.2);"> Hitzorduak
                    </label>
                    <label style="display:flex; align-items:center; cursor:pointer; font-size:0.95rem;">
                        <input type="checkbox" name="sections" value="errezetak" checked style="margin-right:10px; transform:scale(1.2);"> Errezetak
                    </label>
                    <label style="display:flex; align-items:center; cursor:pointer; font-size:0.95rem;">
                        <input type="checkbox" name="sections" value="grafikak" id="chk_grafikak" checked onchange="toggleGrafikaOptions()" style="margin-right:10px; transform:scale(1.2);"> Grafikak
                    </label>
                </div>

                <div id="grafika_aukerak" style="margin:15px 0 0 25px; padding:10px; background:#f8fafc; border-radius:8px; border-left:4px solid #0369a1;">
                    <p style="font-size:0.85rem; font-weight:600; margin:0 0 10px 0; color:#475569;">Grafika motak:</p>
                    <div style="display:grid; grid-template-columns:1fr 1fr; gap:10px;">
                        <label style="font-size:0.85rem; display:flex; align-items:center;"><input type="checkbox" name="charts" value="pisua_kg" checked style="margin-right:8px;"> Pisua</label>
                        <label style="font-size:0.85rem; display:flex; align-items:center;"><input type="checkbox" name="charts" value="tentsioa" checked style="margin-right:8px;"> Tentsioa</label>
                        <label style="font-size:0.85rem; display:flex; align-items:center;"><input type="checkbox" name="charts" value="pultsua_ppm" checked style="margin-right:8px;"> Pultsua</label>
                        <label style="font-size:0.85rem; display:flex; align-items:center;"><input type="checkbox" name="charts" value="altuera" style="margin-right:8px;"> Altuera</label>
                    </div>
                </div>
            </div>

            <div style="display:flex; justify-content:flex-end; gap:12px; margin-top:30px; border-top:1px solid #e2e8f0; padding-top:20px;">
                <button type="button" onclick="itxiTxostenModala()" style="padding:10px 20px; background:#fff; border:1px solid #cbd5e1; border-radius:8px; font-weight:600; color:#64748b; cursor:pointer; transition:all 0.2s;">Utzi</button>
                <button type="button" onclick="hasiTxostenSorkuntza()" style="padding:10px 24px; background:#0369a1; border:none; border-radius:8px; font-weight:600; color:#fff; cursor:pointer; box-shadow:0 4px 6px rgba(3,105,161,0.2); transition:all 0.2s;">PDF Sortu</button>
            </div>
        </form>

        <div id="report_status" style="display:none; margin-top:20px; text-align:center;">
            <div style="display:inline-block; border:3px solid #f3f3f3; border-top:3px solid #0369a1; border-radius:50%; width:24px; height:24px; animation: spin 1s linear infinite; vertical-align:middle; margin-right:10px;"></div>
            <span id="report_status_text" style="color:#475569; font-size:0.9rem;">Datuak kargatzen...</span>
        </div>
    </div>
</div>

<style>
@keyframes modalIn { from { transform: translateY(-50px); opacity: 0; } to { transform: translateY(0); opacity: 1; } }
@keyframes spin { 0% { transform: rotate(0deg); } 100% { transform: rotate(360deg); } }
.botoi-txikia-ertza:hover { background:#e2e8f0 !important; }
</style>

<div id="hidden_report_container" style="position: absolute; left: -9999px; width: 800px; background: white; padding: 40px; font-family: 'Inter', sans-serif; color: #1e293b;">
    <!-- Report content will be injected here -->
</div>
