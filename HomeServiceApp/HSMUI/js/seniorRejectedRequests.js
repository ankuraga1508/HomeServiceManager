$(document).ready(function () {

    $.ajax({
        type: "GET",
        url: "/json/db514_seniorActiveReq.json",
        dataType: "json",
        success: function (data) {
            $.each(data, function (i, obj) {
                var tableData = '<tr><td class="tg-yxcv">'+obj.name+'</td><td class="tg-yxcv">'+obj.date+'</td><td class="tg-yxcv">'+obj.from+'</td><td class="tg-yxcv">'+obj.to+'</td></tr>';
                $(tableData).appendTo('#activeReqTable');
            });
        }
    });
});