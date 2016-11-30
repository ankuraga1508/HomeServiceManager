$(document).ready(function () {

    $.ajax({
        type: "GET",
        url: "api/request/getrequestbyfilters?status=1&requesterid=1",
        dataType: "json",
        success: function (data) {
            var jsonData = JSON.parse(data);
            for (var i = 0; i < jsonData.length; i++) {
                var obj = jsonData[i];
                var date = obj.TimeOfServiceStart.match(/^(\d+)-(\d+)-(\d+)T(\d+)\:(\d+)\:(\d+)$/);
                var tableData = '<tr><td class="tg-yxcv">' + obj.serviceName + '</td><td class="tg-yxcv">' + date[0] + date[1] + date[2] + '</td><td class="tg-yxcv">' + obj.TimeOfServiceStart + '</td><td class="tg-yxcv">' + obj.TimeOfServiceEnds + '</td></tr>';
                $(tableData).appendTo('#activeReqTable');
            }  
        }
    });
});