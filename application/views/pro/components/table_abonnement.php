<div class="table-responsive table-sticky">
    <table class="table">
        <thead>
            <tr>
                <th>Etablissement</th>
                <th>Nombre d'année</th>

                <th>Total</th>
                <th>Date début</th>
                <th>Date fin</th>
                <th>Etat</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($lists as $list): ?>
            <tr>
                <td><?= $list->etablissements_nom ?></td>
                <td><?= $list->abonnements_duree ?> an<?= $list->abonnements_duree > 1 ? 's' : '' ?></td>
                <td><?= $list->abonnements_montant ?> EUR</td>
                <td><?= dateformat($list->abonnements_datedebut) ?></td>
                <td><?= dateformat($list->abonnements_datefin) ?></td>
                <td>
                    <?php if($list->abonnements_etat === "non paye"): ?>
                        <p class="text-danger bolder">Inactif</p>
                    <?php else: ?>
                        <p class="text-success bolder">Actif</p>
                    <?php endif; ?>
                </td>
                <td>
                    <!-- <span role="button" class="btn-tooltip text-success" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Editer">
                        <i class="fa-regular fa-pen-to-square"></i>
                    </span> -->
                    <?php if($list->abonnements_etat === "non paye"): ?>
                        <form action="<?= base_url("pro/paiement") ?>" method="post" class="d-inline-block form-paiement">
                            <input type="hidden" value="<?= $list->abonnements_id ?>" name="id">
                            <button type="submit" class="btn btn-tooltip p-1 text-primary" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Payer">
                                <i class="fa-solid fa-cash-register"></i>
                            </button>
                        </form>
                    <?php else: ?>
                        <span class="btn-tooltip text-muted" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Payer">
                            <i class="fa-solid fa-cash-register"></i>
                        </span>
                    <?php endif; ?>
                    
                    <?php if($list->abonnements_etat === "non paye"): ?>
                        <span role="button" class="btn-tooltip ms-1 text-danger" data-bs-toggle="tooltip" data-bs-placement="bottom" onclick="_delete(<?= $list->abonnements_id ?>)" data-bs-title="Supprimer">
                            <i class="fa-regular fa-trash-can"></i>
                        </span>
                    <?php else: ?>
                        <span class="btn-tooltip text-muted" data-bs-toggle="tooltip" data-bs-placement="bottom" data-bs-title="Supprimer">
                            <i class="fa-regular fa-trash-can"></i>
                        </span>
                    <?php endif; ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>