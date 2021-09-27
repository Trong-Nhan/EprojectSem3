var order = {
    init: function () {
        order.registerEvents();
    },
    registerEvents: function () {

        $('.btn-details').off('click').on('click', function (e) {
            e.preventDefault();
            $('#DetailsModal').modal('show');
            $('#orderid').val($(this).data('id'));
            order.loadImages();
        });
    },
    loadImages: function () {
        $.ajax({
            url: '/Order/Details',
            type: 'GET',
            data: {
                id: $('#orderid').val()
            },
            dataType: 'json',
            success: function (response) {
                var data = response.data;
                var html = '';
                $.each(data, function (i, item) {
                    html += '<div style="float:left" class="col-md-12" >' +
                        '<span class=col-md-2>' + item.Id + '</span>' +
                        '<span class=col-md-2 >' + item.FramesId + '</span>' +
                        '<span class=col-md-1 >' + item.SizeId + '</span>' +
                        '<span class=col-md-2 >' + item.Quantity + '</span>' +
                        '<span class=col-md-2 >' + item.Price + '</span>' +
                        '<span class=col-md-2 >' + item.Image + '</span>' +
                        '<span class=col-md-1 >' + item.TotalPrice + '</span>' +
                        '</div>';
                });
                $('#DetailsList').html(html);
                //success notification
            }
        });
    }
}
order.init();