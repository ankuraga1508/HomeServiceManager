(function() {
  
    var adminDashboardController = {
        
        loadData: function (filter) {
            var reqData = $.Deferred();
            $.ajax({
                type: "GET",
                dataType: "json",
                url: "api/request/getrequestbyfilters?status=1,2",
            }).done(function (result) {
                var resultJson = JSON.parse(result);
                result = $.grep(resultJson, function (request) {
                    return (!filter.Status || request.Status === filter.Status)
					&& (!filter.id || request.id.indexOf(filter.id) > -1)
					&& (!filter.RequesterId || request.RequesterId.indexOf(filter.RequesterId) > -1)
					&& (!filter.serviceName || request.serviceName.indexOf(filter.serviceName) > -1)
					&& (!filter.ScheduleDate || request.ScheduleDate.indexOf(filter.ScheduleDate) > -1)
					&& (!filter.StartTime || request.StartTime.indexOf(filter.StartTime) > -1)
					&& (!filter.EndTime || request.EndTime.indexOf(filter.EndTime) > -1)
					&& (!filter.Address || request.Address.indexOf(filter.Address) > -1);
                });

                reqData.resolve(result);
            })
            return reqData.promise();
        },

        deleteItem: function(deletingReq) {
			//This part of the code will remove the item to delete from the dom
			//alert(deletingReq.id);
            //var reqIndex = $.inArray(deletingReq, this.requests);
            //this.requests.splice(reqIndex, 1);
            //end
  
            return $.ajax({
                type: "DELETE",
                url: "" + deletingReq.id,
                success: function () {
                    $("#jsGrid").jsGrid("refresh");
                },
                error: function () {
                    alert("Could not delete request id");
                }
            });
        }

    };

    window.adminDashboardController = adminDashboardController;

    adminDashboardController.status = [
		{ Name: "Requested", Value: "1" },
		{ Name: "Declined", Value: "2" }
    ];
	
}());