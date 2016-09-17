$('.js-add-star').on('click', function() {
    var elem = this;
    var entryId = elem.getAttribute('data-entry');
    var userName = elem.getAttribute('data-user-name');
    if (!entryId || !userName) {
        alert('Please login.');
        return
    }
    $.post('/stars', {
        entry_id: entryId,
        user: userName
    }).done(function() {
        $('.js-stars').filter(function() {
            return this.getAttribute('data-entry') == entryId;
        }).trigger('addStar');
    });
});

$('.js-stars').on('addStar', function() {
    var elem = this;
    var star = document.createElement('img');
    star.setAttribute('src', '/img/star.gif')
    elem.appendChild(star);
});
