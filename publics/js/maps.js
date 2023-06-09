//const CENTER = { lat: 46.856614, lng: 2.3522219 };
const map_markers = [];
const base_url = (uri = '') => {
    return $("#maps").data('baseurl') + uri;
}

window.myMap = async function () {
    const bounds = new google.maps.LatLngBounds();
    const mapOptions = {
        mapTypeId: 'roadmap',
        //center: CENTER,
        //zoom: 6,
    };
    const GOOGLE_MAP = document.getElementById("maps");

    // Display a map on the web page
    const map = new google.maps.Map(GOOGLE_MAP, mapOptions);
    // Multiple markers location, latitude, and longitude
    
    if ($(GOOGLE_MAP).data('switcher') == "showing") {
        const data_showing = await $.getJSON(base_url("etablissements/showing_info/" + Number($(GOOGLE_MAP).data('id'))));
        const markers = data_showing.markers;
        // Add multiple markers to map

        const len_images = markers[0].etablissements_photo.length ;
        $("#number_photo").text(len_images) ;
        if(len_images > 1) {
            $("#masculin_feminin").text('Photos') ;
        }
        else {
            $("#masculin_feminin").text('Photo') ;
        }
        if(len_images < 5) {
            $("#showing-images").addClass("__gallery_"+len_images) ;
            var affichage = '' ;
            for(let i = 0; i < 5; i++) {
                affichage += '<div class="__images_'+(i+1)+'">' ;
                affichage += `<div class="__galery_masque" data-target="#galeryCarouselIndicators" data-slide-to="${i}" onclick="seeGaleryModal('galeryModal')"></div>` ;
                affichage += '<img class="__img" src="'+base_url('publics/')+(markers[0].etablissements_photo)[i]+'" alt="">' ;
                affichage += '</div>' ;
            }
            $('#showing-images').html(affichage) ;
        }
        else {
            $("#showing-images").addClass("__gallery_5") ;
            var affichage = '' ;
            for(let i = 0; i < 5; i++) {
                affichage += '<div class="__images_'+(i+1)+'">' ;
                affichage +=   `<div class="__galery_masque" data-target="#galeryCarouselIndicators" data-slide-to="${i}" onclick="seeGaleryModal('galeryModal')"></div>` ;
                if((i+1) == 5) {
                    affichage += '<button class="__galery_more" data-toggle="modal" data-target="#galeryModal"><span class="__icon"><i class="fa-solid fa-images"></i></span><span class="__text">Afficher toutes les photos</span></button>' ;
                }
                affichage += '<img class="__img" src="'+base_url('publics/')+(markers[0].etablissements_photo)[i]+'" alt="">' ;
                affichage += '</div>' ;
            }
            $('#showing-images').html(affichage) ;
        }


        var affichage_inner_carousel = '' ;
        var carousel_indicator = '' ;
        
        for(let a = 0; a < len_images; a++) {
            
            if(a == 0) {
                affichage_inner_carousel += '<div class="carousel-item active"><div class="__images"><img class="__img" src="'+base_url('publics/')+(markers[0].etablissements_photo)[a]+'" alt=""></div></div>' ;
            }
            else {
                affichage_inner_carousel += '<div class="carousel-item"><div class="__images"><img class="__img" src="'+base_url('publics/')+(markers[0].etablissements_photo)[a]+'" alt=""></div></div>' ;
            }
            
            if(a == 0) {
                carousel_indicator += '<li data-target="#galeryCarouselIndicators" data-slide-to="'+a+'" class="active"></li>' ;
            }
            else {
                carousel_indicator += '<li data-target="#galeryCarouselIndicators" data-slide-to="'+a+'"></li>' ;
            }

            $("#carousel_inner").html(affichage_inner_carousel) ;
            $("#indicators_carousel").html(carousel_indicator) ;
        }


        setAllMarkers(map, bounds, markers);
        $('#email-showing').text(markers[0].etablissements_email);
        $('#telephone_showing').text(markers[0].etablissements_telephone);

        if(markers[0].etablissements_siteweb == '') {
            $('#siteweb_showing').addClass('d-none') ;
        }
        else {
            $('#siteweb_showing').attr('href',markers[0].etablissements_siteweb) ;
        }
        if(markers[0].etablissements_fb == '') {
            $('#fb_showing').addClass('d-none') ;
        }
        else {
            $('#fb_showing').attr('href',markers[0].etablissements_fb) ;
        }
        if(markers[0].etablissements_insta == '') {
            $('#insta_showing').addClass('d-none') ;
        }
        else {
            $('#insta_showing').attr('href',markers[0].etablissements_insta) ;
        }
        $('#entete_showing').text(markers[0].etablissements_nom) ;
        $("#presentation_showing").text(markers[0].etablissements_presentation) ;
        $("#categorie_showing").text(markers[0].categories_nom);
        $('#sous_categorie_showing').text(markers[0].sous_categories_nom);
        $("#etablissements_nom_showing").text(markers[0].users_etablissement);
        $('#ville_localisation_showing,#ville1_showing').text(markers[0].etablissements_ville)
        $('#cp_localisation_showing,#cp1_showing').text(markers[0].etablissements_codepostal)
        $('#region_localisation_showing,#region1_showing').text(markers[0].etablissements_region)
        $('#departement_localisation_showing').text(markers[0].etablissements_departement)
        $('#pays_localisation_showing,#pays1_showing').text(markers[0].etablissements_pays)
        var txt = "" ;
        var activites = markers[0].etablissements_activites ;
        for(const cle in markers[0].etablissements_activites) {
            if(activites[cle] != null) {
                if(activites[cle] == "on") {
                    txt += "<li class='__service'>"+cle+" : Oui</li>" ;
                }
                else {
                    txt += "<li class='__service'>"+cle+" : "+activites[cle]+"</li>" ;
                }
               
            }
            
        }
        $("#list_showing").html(txt) ;
        
        $("#image_showing").attr('src',base_url()+'publics/'+markers[0].users_etablissement_logo) ;

        // Place each marker on the map  

        // map.addListener("tilesloaded", function () {
        //     setVisibleMarker(map, markers, data.pagination);
        // })
        // map.addListener("dragend", function () {
        //     setVisibleMarker(map, markers, data.pagination);
        // })
    }
    else {
        const data = await $.getJSON(base_url("etablissements/maps/" + $(GOOGLE_MAP).data("type") + '/' + $(GOOGLE_MAP).data("option") + '/' + Number($(GOOGLE_MAP).data("page"))));
        const markers = data.markers;
        $("#nbre_page").text(data.pagination.counter);
        // Add multiple markers to map

        setAllMarkers(map, bounds, markers);
        // Place each marker on the map  

        map.addListener("tilesloaded", function () {
            setVisibleMarker(map, markers, data.pagination,$(GOOGLE_MAP).data("type"),$(GOOGLE_MAP).data("option"));
        })
        map.addListener("dragend", function () {
            setVisibleMarker(map, markers, data.pagination,$(GOOGLE_MAP).data("type"),$(GOOGLE_MAP).data("option"));
        })
    }


}

function setAllMarkers(map, bounds, markers) {
    let infoWindow = new google.maps.InfoWindow();
    let i = 0;
    for (let m of markers) {
        let marker;
        var position = new google.maps.LatLng(m.etablissements_latitude, m.etablissements_longitude);
        bounds.extend(position);

        marker = new google.maps.Marker({
            position: position,
            map: map,
            title: m.etablissements_adresse,
            icon: {
                url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png"
            }
        });

        google.maps.event.addListener(marker, 'click', (function (marker, i) {
            return function () {
                infoWindow.setContent(templateOnClick(m));
                infoWindow.open(map, marker);
            }
        })(marker, i));

        map.fitBounds(bounds);
        map_markers.push(marker);
        i++;
    }
}
function setVisibleMarker(map, markers, pagination,type,option) {
    $("#etablissements-card").html(`<span></span>
        <div class="d-flex justify-content-center align-items-center" style="min-height: 60vh;">
            <img src="${ base_url("publics/image/loader.gif") }" width="100px">
        </div>
        <span></span>`);
    const bounds = map.getBounds();
    let show = [];
    for (let marker of markers) {
        if (
            marker.etablissements_latitude > bounds.Va.lo &&
            marker.etablissements_latitude < bounds.Va.hi &&
            marker.etablissements_longitude > bounds.Ga.lo &&
            marker.etablissements_longitude < bounds.Ga.hi
        ) {
            show.push(marker.etablissements_id);
        }
    }

    setCards(show, pagination,type, option);
}

function setCards(markers, pagination,type,option) {
    
    $.post(base_url('etablissements/mapsVisible/'+type+'/'+option), { data: markers, pagination: JSON.stringify(pagination) },
        function (data, textStatus, jqXHR) {
            $("#etablissements-card").html(data);
        },
    );
}

function mappingCard(latitude, longitude) {
    for (let m of map_markers) {
        const lat = m.position.lat();
        const lng = m.position.lng();
        if (lat === latitude && lng === longitude) {
            m.setIcon({
                url: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
            })
        }
    }
}
function clearMappingCard() {
    for (let m of map_markers) {
        m.setIcon({
            url: "http://maps.google.com/mapfiles/ms/icons/red-dot.png"
        })
    }
}

/**
 * template a afficher lorsqu'on click su une marker 
 */
function templateOnClick(marker) {
    let tarif = 0;
    let activite;
    if (activite = marker.etablissements_activites) {
        if (activite.Tarif) {
            tarif = Number(activite.Tarif);
        }
    }
    return /*html*/`
    <div class="__card_result_click_card">
        <div class="__card_result">
            <div class="__carousel_images">
                <!-- <button class="__like">
                    <span class="__icon">
                        <i class="fa-regular fa-heart"></i>
                    </span>
                </button> -->

                <div id="carouselImagesCard" class="carousel slide" data-ride="carousel">

                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="${base_url('Home/detail_result')}" class="__image">
                                <img class="__img" src="${base_url('publics/' + marker.etablissements_photo)}" alt="First slide">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="__card_body">
                <a href="#" class="__user">
                    <img class="__img" src="${marker.users_photo ? base_url('publics/' + marker.users_photo) : base_url('publics/image/avatar.png')}" alt="">
                </a>
                <a class="__body" href="${base_url('Home/detail_result')}">
                    <h2 class="__title">
                        ${marker.etablissements_nom}
                    </h2>
                    <p class="__price">
                        ${tarif} € par nuit
                    </p>
                    <p class="__localisation">
                        <span class="__icon"><i class="fa-solid fa-location-dot"></i></span>
                        <span class="__location">${marker.etablissements_adresse}</span>
                    </p>
                </a>
                <a href="${base_url('Home/detail_result')}" class="__category">
                    <div class="__image">
                        <img class="__img_category" src="http://localhost/master-reset/publics/image/Hébergements/icone cabane sur l_eau igoguide.png" alt="">
                    </div>
                    <p class="__name">${marker.sous_categories_nom}</p>
                </a>
            </div>
        </div>
    </div>`
}


function addFavorite(self,id) {
    $.post(base_url('etablissements/addFavorite'), {id: id},
        function (data, textStatus, jqXHR) {
            if(data.success) {
                if(data.action === "add") {
                    $(self).addClass("__active");
                }
                else if(data.action === "delete"){
                    $(self).removeClass("__active");
                }
            }
        },
        "json"
    );
}