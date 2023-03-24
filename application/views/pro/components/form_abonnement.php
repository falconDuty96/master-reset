
<form class="modal-content" method="post" action="<?= base_url("abonnement/create") ?>" onsubmit="_submit(event,this)">
    <div class="modal-header">
        <h1 class="modal-title fs-5">Créer Abonnement</h1>
        <button type="button" id="close-modal-abonnement" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body">

        <div class="form-group">
            <label for="header-gt">Nombre d'année :</label>
            <input type="number" class="form-control" name="nbre_annee" onblur="calculAbonnement(this)">
        </div>
        <div class="form-group">
            <label for="header-gt">Etablissement :</label>
            <select class="form-control" name="etablissement">
                <option value="-1">Aucun etablissement selectionné</option>
                <?php foreach($etablissements as $et): ?>
                    <option value="<?= $et->etablissements_id ?>"><?= $et->etablissements_nom ?></option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="header-gt">Total</label>
            <input type="text" class="form-control" readonly id="total-abonnement">
        </div>
        <div class="form-group">
            <label for="header-gt">Date d'expiration :</label>
            <input type="date" class="form-control" readonly id="expiration-abonnement">
        </div>
                    
        <div class="alert alert-danger d-none mt-2" id="form-error">
            <ul></ul>
        </div>

    </div>
    <div class="modal-footer">
        <button type="submit" class="_btn _btn-success w-100">Créer</button>
    </div>
</form>