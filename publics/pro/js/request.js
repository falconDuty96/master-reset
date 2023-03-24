function createAbonnement() {
    const modal = bootstrap.Modal.getOrCreateInstance(document.querySelector("#modal-abonnement"));
    modal.show();
}
function calculAbonnement(self) {
    $.post(URL + "abonnement/getTarif", {nbre: Number($(self).val())},
        function (data, textStatus, jqXHR) {
          $("#total-abonnement").val(data.total);
          $("#expiration-abonnement").val(data.expiration);  
        },
        "json"
    );

}

/**
 * Soumission d'un formulaire
 * 
 */

function _submit(e,form) {
    e.preventDefault();
    const modal = bootstrap.Modal.getOrCreateInstance(document.querySelector("#modal-abonnement"));
    $("#form-error").addClass('d-none');
    $.ajax({
        type: "post",
        url: $(form).attr("action"),
        data: $(form).serialize(),
        dataType: "html"
    })
    .done(res => {
        modal.hide();
        form.reset();
        $("#form-error").addClass('d-none');
        $("#content-table").html(res);
        
        const last = document.querySelector(".form-paiement");
        $(last).submit();
    })
    .fail(err => {
        $("#form-error").removeClass('d-none');
        let error = JSON.parse(err.responseText);
        let list = "";
        for(let e of error.errors) {
            list += `<li>${e}</li>`
        }
        $("#form-error ul").html(list);
    })
    .always(() => {

    })
}
function _delete(id) {
    const a = new Alert();

    a.confirm(() => {
        $.post(URL + "abonnement/delete", {id: id},
            function (data, textStatus, jqXHR) {
              $("#content-table").html(data);  
            },
        );
    })
}