(function() {
  
    var adminDashboardController = {
        
        loadData: function (filter) {
            var reqData = $.Deferred();
            $.ajax({
                type: "GET",
                dataType: "json",
                url: "api/request/getrequestbyfilters",
            }).done(function (result) {
                alert(result);
                filter = result[0];
                result = $.grep(result, function (request) {
                    return (!filter.Status || request.Status === filter.Status)
					&& (!filter.RequestId || request.RequestId.indexOf(filter.RequestId) > -1)
					&& (!filter.Name || request.Name.indexOf(filter.Name) > -1)
					&& (!filter.Service || request.Service.indexOf(filter.Service) > -1)
					&& (!filter.Date || request.Date.indexOf(filter.Date) > -1)
					&& (!filter.StartTime || request.From.indexOf(filter.From) > -1)
					&& (!filter.EndTime || request.To.indexOf(filter.To) > -1)
					&& (!filter.Location || request.Location.indexOf(filter.Location) > -1);
                });

                reqData.resolve(result);
            })
            return reqData.promise();
        },

        deleteItem: function(deletingReq) {
			//This part of the code will remove the item to delete from the dom
			//alert(deletingReq.RequestId);
            //var reqIndex = $.inArray(deletingReq, this.requests);
            //this.requests.splice(reqIndex, 1);
            //end
  
            return $.ajax({
                type: "DELETE",
                url: "" + deletingReq.RequestId,
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
        { Name: ""},
		{ Name: "Requested"},
		{ Name: "Declined"}
    ];
	
}());