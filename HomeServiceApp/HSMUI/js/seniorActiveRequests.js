﻿$(document).ready(function () {

    $.ajax({
        type: "GET",
        url: "api/request/getrequestbyfilters?status=1,2,3&requesterid=1",
        dataType: "json",
        success: function (data) {
            var jsonData = JSON.parse(data);
            for (var i = 0; i < jsonData.length; i++) {
                var obj = jsonData[i];
                var tableData = '<tr><td class="tg-yxcv">' + obj.serviceName + '</td><td class="tg-yxcv">' + obj.ScheduleDate + '</td><td class="tg-yxcv">' + obj.StartTime + '</td><td class="tg-yxcv">' + obj.EndTime + '</td></tr>';
                $(tableData).appendTo('#activeReqTable');
            }  
        }
    });
});