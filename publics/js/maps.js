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
    const data = await $.getJSON(base_url("etablissements/maps/" + Number($(GOOGLE_MAP).data("page"))));
    const markers = data.markers;
    
    // Add multiple markers to map
    
    setAllMarkers(map,bounds, markers);
    // Place each marker on the map  
    
    map.addListener("tilesloaded", function() {
        setVisibleMarker(map, markers, data.pagination);
    })
    map.addListener("dragend", function() {
        setVisibleMarker(map, markers, data.pagination);
    })
}

function setAllMarkers(map,bounds,markers) {
    let infoWindow = new google.maps.InfoWindow();
    let i=0;
    for( let m of markers ) {  
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

        google.maps.event.addListener(marker, 'click', (function(marker, i) {
            return function() {
                infoWindow.setContent(templateOnClick(m));
                infoWindow.open(map, marker);
            }
        })(marker, i));

        map.fitBounds(bounds);
        map_markers.push(marker);
        i++;
    }
}
function setVisibleMarker(map,markers,pagination) {
    const bounds = map.getBounds();
    let show = [];
    for(let marker of markers) {
        if(
            marker.etablissements_latitude > bounds.Va.lo && 
            marker.etablissements_latitude < bounds.Va.hi &&
            marker.etablissements_longitude > bounds.Ja.lo &&
            marker.etablissements_longitude < bounds.Ja.hi
        ) {
            show.push(marker.etablissements_id);
        }
    }
    
    setCards(show,pagination);
}

function setCards(markers,pagination) {
    $.post(base_url('etablissements/mapsVisible'), {data: markers, pagination: JSON.stringify(pagination)},
        function (data, textStatus, jqXHR) {
            $("#etablissements-card").html(data);  
        },
    );
}

function mappingCard(latitude, longitude) {
    for(let m of map_markers) {
        const lat = m.position.lat();
        const lng = m.position.lng();
        if(lat === latitude && lng === longitude) {
            m.setIcon({
                url: "http://maps.google.com/mapfiles/ms/icons/blue-dot.png"
            })
        }
    }
}
function clearMappingCard() {
    for(let m of map_markers) {
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
    if(activite = marker.etablissements_activites) {
        if(activite.Tarif) {
            tarif = Number(activite.Tarif);
        }
    }
    return /*html*/`
    <div class="__card_result_click_card">
        <div class="__card_result">
            <div class="__carousel_images">
                <button class="__like">
                    <span class="__icon">
                        <i class="fa-regular fa-heart"></i>
                    </span>
                </button>

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