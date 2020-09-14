(function(){$(document).on('click', '.ytlight', function() {
    var iframe = $('<iframe src="'+$(this).data("embed-url")+'" scrolling="no" frameborder="0" style="border: none;"></iframe>');
    // Replace the poster image with player
    $(this).empty().append(iframe);
});
})();