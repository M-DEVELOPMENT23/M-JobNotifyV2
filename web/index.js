$(document).ready(function() {
    window.addEventListener('message', function(event) {
        var notify = document.getElementById('sound');
        if (event.data.type === 'abrirnegocio') {
            var card = $('.card');
            var cardTitle = $('.card-title');
            var cardBody = $('.card-body');
            var footer = $('.footer');
            var cardImage = $('.card-image img');

            cardTitle.empty();
            cardBody.empty();
            footer.empty();

            cardTitle.append('<i class="' + event.data.icon + ' id="iconos"></i> ' + event.data.jobname);

            card.css({
                'background-color': event.data.backgroundcolor,
                'border-radius': event.data.borderradius,
                'box-shadow': event.data.boxshadow,
                'opacity': event.data.opacity,
                'top': event.data.top,
                'left': event.data.left
            });

            cardImage.css('border-radius', event.data.borderradiusimg);

            cardTitle.css({
                'font-size': event.data.titlefontsize,
                'font-weight': event.data.titlefontweight,
                'filter': event.data.titlefilter,
                'color': event.data.titlecolor
            });

            cardBody.append(event.data.texto);
            cardBody.find('#texto').css('color', event.data.textcolor);

            footer.append(event.data.footertext);

            $('.test').attr('src', event.data.image);

            card.fadeIn();

            setTimeout(function() {
                card.fadeOut(1500, function() {
                    cardTitle.empty();
                    footer.empty();
                    cardBody.empty();
                    cardImage.empty();
                });
            }, 4000);

            notify.play();
        }
        if (event.data.type === 'cerrarnegocio') {
            var card = $('.card');
            var cardTitle = $('.card-title');
            var cardBody = $('.card-body');
            var footer = $('.footer');
            var cardImage = $('.card-image img');

            cardTitle.empty();
            cardBody.empty();
            footer.empty();

            cardTitle.append('<i class="' + event.data.icon + ' id="iconos"></i> ' + event.data.jobname);

            card.css({
                'background-color': event.data.backgroundcolor,
                'border-radius': event.data.borderradius,
                'box-shadow': event.data.boxshadow,
                'opacity': event.data.opacity,
                'top': event.data.top,
                'left': event.data.left
            });

            cardImage.css('border-radius', event.data.borderradiusimg);

            cardTitle.css({
                'font-size': event.data.titlefontsize,
                'font-weight': event.data.titlefontweight,
                'filter': event.data.titlefilter,
                'color': event.data.titlecolor
            });

            cardBody.append(event.data.texto);
            cardBody.find('#texto').css('color', event.data.textcolor);

            footer.append(event.data.footertext);

            $('.test').attr('src', event.data.image);

            card.fadeIn();

            setTimeout(function() {
                card.fadeOut(1500, function() {
                    cardTitle.empty();
                    footer.empty();
                    cardBody.empty();
                    cardImage.empty();
                });
            }, 4000);
            notify.play();
        }
        if (event.data.type === 'customtext') {
            console.log("hola")
            var card = $('.card');
            var cardTitle = $('.card-title');
            var cardBody = $('.card-body');
            var footer = $('.footer');
            var cardImage = $('.card-image img');

            cardTitle.empty();
            cardBody.empty();
            footer.empty();

            cardTitle.append('<i class="' + event.data.icon + ' id="iconos"></i> ' + event.data.jobname);

            card.css({
                'background-color': event.data.backgroundcolor,
                'border-radius': event.data.borderradius,
                'box-shadow': event.data.boxshadow,
                'opacity': event.data.opacity,
                'top': event.data.top,
                'left': event.data.left
            });

            cardImage.css('border-radius', event.data.borderradiusimg);

            cardTitle.css({
                'font-size': event.data.titlefontsize,
                'font-weight': event.data.titlefontweight,
                'filter': event.data.titlefilter,
                'color': event.data.titlecolor
            });

            cardBody.append(event.data.texto);
            cardBody.find('#texto').css('color', event.data.textcolor);

            footer.append(event.data.footertext);

            $('.test').attr('src', event.data.image);

            card.fadeIn();

            setTimeout(function() {
                card.fadeOut(1500, function() {
                    cardTitle.empty();
                    footer.empty();
                    cardBody.empty();
                    cardImage.empty();
                });
            }, 4000);
            notify.play();
        }
    });
});
