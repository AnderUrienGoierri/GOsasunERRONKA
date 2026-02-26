/* hitzorduak_egutegia.js */

document.addEventListener('DOMContentLoaded', function() {
    // Nabigazio botoiak (astea, hilabetea, eguna)
    const bistaBotoiak = document.querySelectorAll('.bista-hautatzailea .bista-botoia');
    bistaBotoiak.forEach(botoia => {
        if (botoia.getAttribute('href') === '#') {
            botoia.addEventListener('click', function(e) {
                e.preventDefault();
                bistaBotoiak.forEach(b => b.classList.remove('aktiboa'));
                this.classList.add('aktiboa');
                console.log('Bista aldatuta: ' + this.textContent);
            });
        }
    });

    // Itxi modala kanpoan klik egitean
    window.onclick = function(event) {
        const modal = document.getElementById('hitzorduModala');
        if (event.target == modal) {
            closeModal();
        }
    }
});

function openModal(isEdit = false) {
    const modal = document.getElementById('hitzorduModala');
    const title = document.getElementById('modalIzenburua');
    const form = document.getElementById('hitzorduForm');
    const ezabatu_botoia = document.getElementById('ezabatu_botoia');
    const bidali_botoia = document.getElementById('bidali_botoia');

    modal.style.display = 'block';
    
    if (!isEdit) {
        title.textContent = 'Hitzordu Berria';
        form.reset();
        document.getElementById('modal_hitzordu_id').value = '';
        ezabatu_botoia.style.display = 'none';
        bidali_botoia.name = 'sortu_hitzordua';
        bidali_botoia.textContent = 'Gorde';
    } else {
        title.textContent = 'Hitzordua Editatu';
        ezabatu_botoia.style.display = 'block';
        bidali_botoia.name = 'editatu_hitzordua';
        bidali_botoia.textContent = 'Eguneratu';
    }
}

function closeModal() {
    document.getElementById('hitzorduModala').style.display = 'none';
}

function viewAppointment(id) {
    // hitzorduakData PHP-tik injektatuta dago
    const hitzordua = hitzorduakData.find(h => h.hitzordu_id == id);
    
    if (hitzordua) {
        openModal(true);
        document.getElementById('modal_hitzordu_id').value = hitzordua.hitzordu_id;
        document.getElementById('modal_paziente_id').value = hitzordua.paziente_id;
        document.getElementById('modal_mediku_id').value = hitzordua.mediku_id;
        document.getElementById('modal_data').value = hitzordua.data;
        document.getElementById('modal_hasiera_ordua').value = hitzordua.hasiera_ordua.substring(0, 5);
        document.getElementById('modal_bukaera_ordua').value = hitzordua.bukaera_ordua ? hitzordua.bukaera_ordua.substring(0, 5) : '';
        document.getElementById('modal_arrazoia').value = hitzordua.arrazoia;
        document.getElementById('modal_egoera').value = hitzordua.egoera;
    }
}

function confirmDelete() {
    if (confirm('Ziur zaude hitzordu hau ezabatu nahi duzula?')) {
        const id = document.getElementById('modal_hitzordu_id').value;
        document.getElementById('delete_hitzordu_id').value = id;
        document.getElementById('deleteForm').submit();
    }
}
