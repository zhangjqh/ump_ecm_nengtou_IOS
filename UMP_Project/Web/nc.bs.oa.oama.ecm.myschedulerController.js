Type.registerNamespace('nc.bs.oa.oama.ecm.myschedulerController');
nc.bs.oa.oama.ecm.myschedulerController = function() {

}
function nc$bs$oa$oama$ecm$myschedulerController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton0',checked:'true'}");
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$setSelector(ctx){
	var calendar = ctx.get("calendar");
	calendar = stringToJSON(calendar);
	var eventlist = calendar["eventlist"];
	if(eventlist!=undefined&&eventlist!=null){
		if(eventlist.length==1){
			eventlist[0]["ListViewSelector"]=3;
		}else if(eventlist.length>1){
			for(var i = 0;i<eventlist.length;i++){
				if(i==0){
					eventlist[i]["ListViewSelector"]=0;
				}else if(i==eventlist.length-1){
					eventlist[i]["ListViewSelector"]=2;
				}else{
					eventlist[i]["ListViewSelector"]=1;
				}
			}
		}
	}
	ctx.load({"calendar":calendar});
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toMyScheduler(ctx){
	//nothing to do 
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetail(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var eventpid = row["eventpid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var daytime = param["daytime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var isrepeatevent = row["isrepeatevent"];
	if(isrepeatevent=="N"){
		if(eventpid=="0"){
			var args = {
				"viewid":"nc.bs.oa.oama.ecm.Scdu_myschedulerdetail",
				"callback":"monthchange", 
				"iskeep":"true",
				
				"eventid":eventid,
				"begintime":begintime,
				"endtime":endtime,
				"daytime":daytime,
				"timezone":timezone,
				"repeateventopenby":"0"
			};
			UM_NativeCall.callService("UMView.open",jsonToString(args));
		}else{
			var args = {
				"viewid":"nc.bs.oa.oama.ecm.Scdu_myschedulerdetail",
				"callback":"monthchange", 
				"iskeep":"true",
				
				"eventid":eventid,
				"begintime":begintime,
				"endtime":endtime,
				"daytime":daytime,
				"timezone":timezone,
				"repeateventopenby":"1"
			};
			UM_NativeCall.callService("UMView.open",jsonToString(args));
		}
	}else if(isrepeatevent=="Y"){
		var args = {
			"style":"ok-cancel",
			 
			"message":$res.getResString("scdu_oascheduler_0067"),
			"okbuttontitle":$res.getResString("scdu_oascheduler_0068"),
			"okaction":"toSchedulerDetailAll",
			"cancelbuttontitle":$res.getResString("scdu_oascheduler_0069"),
			"cancelaction":"toSchedulerDetailOnce"
		};
		UM_NativeCall.callService("UMView.openDialog",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailOnce(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var daytime = param["daytime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.ecm.Scdu_myschedulerdetail",
		"callback":"monthchange", 
		"iskeep":"true",
		
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"daytime":daytime,
		"timezone":timezone,
		"repeateventopenby":"1"
	};
	UM_NativeCall.callService("UMView.open",jsonToString(args));
	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.scheduler.Myschedulerdetail',iskeep:'true',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'1',callback:'monthchange'}");
}
function nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailAll(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var eventpid = row["eventpid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var daytime = param["daytime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.ecm.Scdu_myschedulerdetail",
		"callback":"monthchange", 
		"iskeep":"true",
		
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"daytime":daytime,
		"timezone":timezone,
		"repeateventopenby":"2"
	};
	UM_NativeCall.callService("UMView.open",jsonToString(args));
	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.scheduler.Myschedulerdetail',iskeep:'true',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby:'2',callback:'monthchange'}");
}
nc.bs.oa.oama.ecm.myschedulerController.prototype = {
    initialize : nc$bs$oa$oama$ecm$myschedulerController$initialize,
    tabBarOnload : nc$bs$oa$oama$ecm$myschedulerControllerBase$tabBarOnload,
    toMyScheduler : nc$bs$oa$oama$ecm$myschedulerControllerBase$toMyScheduler,
    toSchedulerDetail : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetail,
    toSchedulerDetailOnce : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailOnce,
    toSchedulerDetailAll : nc$bs$oa$oama$ecm$myschedulerControllerBase$toSchedulerDetailAll,
    setSelector : nc$bs$oa$oama$ecm$myschedulerControllerBase$setSelector
};
nc.bs.oa.oama.ecm.myschedulerController.registerClass('nc.bs.oa.oama.ecm.myschedulerController');
