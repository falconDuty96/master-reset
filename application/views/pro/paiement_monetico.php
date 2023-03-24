<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IGOGUIDE | PAIEMENT</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer">
</head>
<style>
    .form-container {
        width: 400px;
    }
</style>
<body>
    <div class="bg-light position-absolute h-100 w-100 d-flex justify-content-center align-items-center">
        <div class="form-container bg-white shadow-sm py-2 px-4">
            <h1 class="text-center h3 text-muted">Paiement</h1>
            <div class="my-3">
                <div class="row">
                    <div class="col-8">Type</div>
                    <div class="col-4">Abonnement</div>
                </div>
                <?php foreach($card->getShoppingCartItems() as $item): ?>
                    <div class="row">
                        <div class="col-8">Etablissement</div>
                        <div class="col-4"><?= $item->getName(); ?></div>
                    </div>
                    <div class="row">
                        <div class="col-8">Déscription</div>
                        <div class="col-4"><?= $item->getDescription(); ?></div>
                    </div>
                    <div class="row">
                        <div class="col-8">Nombre d'année</div>
                        <div class="col-4"><?= $item->getQuantity(); ?></div>
                    </div>
                    <!-- <div class="row">
                        <div class="col-8">Prix unitaire</div>
                        <div class="col-4"><?= ($item->getUnitPrice() / 100) ?> <?= $paiement->getDevise() ?></div>
                    </div> -->
                <?php endforeach; ?>
                
                <div class="row">
                    <div class="col-8">MONTANT</div>
                    <div class="col-4"><?= $paiement->getMontant() ?> <?= $paiement->getDevise() ?></div>
                </div>
            </div>
            <div id="paymentForm" class="w-100">
                <form method="post" action="<?php echo PAYMENT_PAGE_URL ?>" target="_top">
                    <?php foreach ($fields as $key => $value): ?>
                        <input type="hidden" name="<?php echo $key ?>" value="<?php echo htmlentities($value) ?>"/>
                    <?php endforeach; ?>
                    
                    <button type="button" class="btn btn-primary w-100" onclick="confirm_redirect(this)">Passer au paiement</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.2/jquery.min.js" integrity="sha512-tWHlutFnuG0C6nQRlpvrEhE4QpkG1nn2MOUMWmUeRePl4e3Aki0VB6W1v3oLjFtd0hVOtRQ9PHpSfN6u6/QXkQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- <script src="https://www.paypal.com/sdk/js?client-id=PAYPAL_CLIENT_ID&intent=authorize"></script>
    <script>
        const alertMessage = $("#paiement-error");
        const order = {
            "purchase_units": [{
                "amount": {
                    "currency_code": "USD",
                    "value": 200,
                    "breakdown": {
                        "item_total": {  /* Required when including the items array */
                            "currency_code": "USD",
                            "value": 200
                        }
                    }
                },
                "items": [
                    {
                        "name": "Titre d'objet de paiement", /* Shows within upper-right dropdown during payment approval */
                        "description": "", /* Item details will also be in the completed paypal.com transaction view */
                        "unit_amount": {
                            "currency_code": "USD",
                            "value": 200
                        },
                        "quantity": "1"
                    },
                ]
            }]
        }
        paypal.Buttons({
            createOrder: (data, actions) => {
                $(alertMessage).addClass("d-none");
                return actions.order.create(order);
            },
            onApprove: async (data, actions) => {
                const authorization = await actions.order.authorize()
                const authorizationId = authorization.purchase_units[0].payments.authorizations[0].id
                await $.ajax({
                    type: 'post',
                    dataType: 'json',
                    url: '<?= base_url("paiement/handle") ?>',
                    data: {
                        authorizationId : authorizationId,
                        idAbonnement: 1
                    }
                }).done(res => {
                    $(alertMessage).removeClass("d-none");
                    if(res.success){
                        $(alertMessage).removeClass("alert-danger");
                        $(alertMessage).addClass("alert-success");
                        $(".paiement-backdrop").removeClass("d-none");
                        let i = 5;
                        let interval = setInterval(function(){
                            if(i === 0){
                                location.reload();
                                clearInterval(interval);
                            }
                            $(alertMessage).html(`${res.message}! Redirection dans ${i}s`);
                            i--;
                        },1000);
                    }else{
                        $(alertMessage).removeClass("alert-success");
                        $(alertMessage).addClass("alert-danger");
                        $(alertMessage).html(res.message);
                    }
                }).fail(error => {

                })
            
            }
        }).render('#paypal-button-container');
    </script> -->

    <script>
        function confirm_redirect(self) {
            if(confirm('Vous allez être redirigé vers le site officiel de monetico')) {
                $(self).parent('form').submit();
            }
        }
    </script>
</body>

</html>