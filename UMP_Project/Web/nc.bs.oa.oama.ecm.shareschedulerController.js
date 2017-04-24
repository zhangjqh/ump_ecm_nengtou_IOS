Type.registerNamespace('nc.bs.oa.oama.ecm.shareschedulerController');
nc.bs.oa.oama.ecm.shareschedulerController = function() {

}
function nc$bs$oa$oama$ecm$shareschedulerController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$shareschedulerController$tabBarOnload(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton1',checked:'true'}");
}
function nc$bs$oa$oama$ecm$shareschedulerController$setSelector(ctx){
    var calendar = ctx.get("calendar");
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
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toShareScheduler(ctx){
	//nothing to do 
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetail(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var isrepeatevent = row["isrepeatevent"];
	if(isrepeatevent=="N"){
		var args = {
			"viewid":"nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail",
			"iskeep":"true",
			
			"eventid":eventid,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"repeateventopenby":"3"
		};
		UM_NativeCall.callService("UMView.open",jsonToString(args));
		//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail',iskeep:'true',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby='3'}");
	}else if(isrepeatevent=="Y"){
		//UM_NativeCall.callService("UMView.openDialog","{style:'ok-cancel',title:'打开周期重复事件',message:'是否维护周期事件',okbuttontitle:'是',okaction:'toSchedulerDetailAll',cancelbuttontitle:'否',cancelaction='toSchedulerDetailOnce'}");
		var args = {
			"viewid":"nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail",
			"iskeep":"true",
			
			"eventid":eventid,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"repeateventopenby":"1"
		};
		UM_NativeCall.callService("UMView.open",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailOnce(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail",
		"iskeep":"true",
		
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone,
		"repeateventopenby":"1"
	};
	UM_NativeCall.callService("UMView.open",jsonToString(args));
	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.scheduler.Shareschedulerdetail',iskeep:'true',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby='1'}");

}
function nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailAll(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var eventid = row["eventid"];
	var begintime = row["begintime"];
	var endtime = row["endtime"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail",
		"iskeep":"true",
		
		"eventid":eventid,
		"begintime":begintime,
		"endtime":endtime,
		"timezone":timezone,
		"repeateventopenby":"2"
	};
	UM_NativeCall.callService("UMView.open",jsonToString(args));
	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Scdu_shareschedulerdetail',iskeep:'true',eventid:'"+eventid+"',begintime:'"+begintime+"',endtime:'"+endtime+"',timezone:'"+timezone+"',repeateventopenby='2'}");
}
nc.bs.oa.oama.ecm.shareschedulerController.prototype = {
    initialize : nc$bs$oa$oama$ecm$shareschedulerController$initialize,
    toShareScheduler : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toShareScheduler,
    toSchedulerDetail : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetail,
    toSchedulerDetailOnce : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailOnce,
    toSchedulerDetailAll : nc$bs$oa$oama$ecm$shareschedulerControllerBase$toSchedulerDetailAll,
    tabBarOnload : nc$bs$oa$oama$ecm$shareschedulerController$tabBarOnload,
    setSelector : nc$bs$oa$oama$ecm$shareschedulerController$setSelector
};
nc.bs.oa.oama.ecm.shareschedulerController.registerClass('nc.bs.oa.oama.ecm.shareschedulerController');
