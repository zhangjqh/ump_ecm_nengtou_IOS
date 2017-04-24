Type.registerNamespace('nc.bs.oa.oama.ecm.addschedulerController');
nc.bs.oa.oama.ecm.addschedulerController = function() {

}
function nc$bs$oa$oama$ecm$addschedulerController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$addschedulerController$onSave(ctx){
    var param = ctx.params();
	var edittype = param["schtype"];
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var eventdetail = stringToJSON(param["eventdetail"]);
	var theme = eventdetail["theme"];
	if(!theme||theme==null||theme==""){
		alert($res.getResString("scdu_oascheduler_0065"));
		return;
	}
	var begintime = eventdetail["begintime"];
	var endtime = eventdetail["endtime"];
	var isalldayswitch = eventdetail["isalldayswitch"];
	if(isalldayswitch=="true"){
		begintime = eventdetail["begindate"];
		endtime = eventdetail["enddate"];
	}
	if(begintime>endtime){
		alert($res.getResString("scdu_oascheduler_0066"));
		return;
	}
	
	var type = eventdetail["type"];
	var priority = eventdetail["priority"];
	var ismessage = eventdetail["ismessage"];
	var ismail = eventdetail["ismail"];
	var issms = eventdetail["issms"];
	var isim = eventdetail["isim"];
	var ispush = eventdetail["ispush"];
	var remindrule = eventdetail["remindrule"];
	var isrepeatevent = eventdetail["isrepeatevent"];
	var repeat = eventdetail["repeat"];
	var repeattype = eventdetail["repeattype"];
	var repeatdate = eventdetail["repeatdate"];
	var week = eventdetail["week"];
	var repeatday = eventdetail["repeatday"];
	var month = eventdetail["month"];
	var repeatcount = eventdetail["repeatcount"];
	var endrepeattype = eventdetail["endrepeattype"];
	var repeattimes = eventdetail["repeattimes"];
	var repeatendday = eventdetail["repeatendday"];
	var msg = eventdetail["msg"];
	if(edittype=="add"){
		var args = {
			"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
			"action":"saveNewEvent",
			"callback":"onBack", 
			"autoDataBinding":"false",
			"theme":theme,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"isalldayswitch":isalldayswitch,
			"type":type,
			"priority":priority,
			"ismessage":ismessage,
			"ismail":ismail,
			"issms":issms,
			"isim":isim,
			"ispush":ispush,
			"remindrule":remindrule,
			"isrepeatevent":isrepeatevent,
			"repeat":repeat,
			"repeattype":repeattype,
			"repeatdate":repeatdate,
			"week":week,
			"repeatday":repeatday,
			"month":month,
			"repeatcount":repeatcount,
			"endrepeattype":endrepeattype,
			"repeattimes":repeattimes,
			"repeatendday":repeatendday,
			"msg":msg
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}else if(edittype=="edit"){
		var eventid = eventdetail["eventid"];
		var ts = eventdetail["ts"];
		var repeateventopenby = param["repeateventopenby"];
		var begintimeex = param["begintimeex"];
		var endtimeex = param["endtimeex"];
		var args = {
			"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
			"action":"saveOldEvent",
			"callback":"onBack", 
			"autoDataBinding":"false",
			"eventid":eventid,
			"ts":ts,
			"repeateventopenby":repeateventopenby,
			"begintimeex":begintimeex,
			"endtimeex":endtimeex,
			"theme":theme,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"isalldayswitch":isalldayswitch,
			"type":type,
			"priority":priority,
			"ismessage":ismessage,
			"ismail":ismail,
			"issms":issms,
			"isim":isim,
			"ispush":ispush,
			"remindrule":remindrule,
			"isrepeatevent":isrepeatevent,
			"repeat":repeat,
			"repeattype":repeattype,
			"repeatdate":repeatdate,
			"week":week,
			"repeatday":repeatday,
			"month":month,
			"repeatcount":repeatcount,
			"endrepeattype":endrepeattype,
			"repeattimes":repeattimes,
			"repeatendday":repeatendday,
			"msg":msg
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$addschedulerController$detailOnload(ctx){
    var param = ctx.params();
	var schtype = param["schtype"];
	if(schtype=="add"){
		var date = param["daytime"];
		var ctime = new Date();
		var hour = ctime.getHours();
		var beginMin = ctime.getMinutes() <= 30 ? 30 : 0;
		var beginHour = beginMin==30 ? hour : hour+1;
		var endHour = beginMin==0 ? beginHour : beginHour + 1;
		var endMin = beginMin==0 ? 30 : 0;
		var begintime = addschedulerController$formatTime(date, beginHour, beginMin);
		var endtime = addschedulerController$formatTime(date, endHour, endMin);
		
		var myCtx = ctx.unload();
		myCtx["begintime"] = begintime;
		myCtx["endtime"] = endtime;
		//初始化提醒方式规则
		myCtx["ismessage"] = true;
		myCtx["ispush"] = true;
		myCtx["remindrule"] = "10";
		myCtx["remindruledesc"] = $res.getResString("scdu_oascheduler_0086");
		myCtx["isrepeatevent"] = "N";
		myCtx["isrepeateventswitch"] = false;
		myCtx["repeat"] = "";
		myCtx["repeattype"] = "";
		myCtx["repeatdate"] = "";
		myCtx["week"] = "";
		myCtx["repeatday"] = "";
		myCtx["month"] = "";
		myCtx["repeatcount"] = "";
		myCtx["endrepeattype"] = "";
		myCtx["repeattimes"] = "";
		myCtx["repeatendday"] = "";
		myCtx["msg"] = "";
		
		ctx.load(myCtx);
		_$sys.callAction('remindTypeOnload');
	}else if(schtype=="edit"){
		addschedulerController$set("label0", "text", $res.getResString("scdu_oascheduler_0029"));
		var row=stringToJSON(param["row"]);
		var isallday = row["isalldayswitch"];
		if(isallday=="true" || isallday==true){
			addschedulerController$hide("panel3");
			addschedulerController$hide("panel4");
			addschedulerController$show("panel16");
			addschedulerController$show("panel17");
		}
		var repeateventopenby = param["repeateventopenby"];
		if("1"==repeateventopenby){
			addschedulerController$hide("panel8");
		}
		var eventid = row["eventid"];
		var begintime = param["begintime"];
		var endtime = param["endtime"];
		var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
		var args = {
			"viewid":"nc.bs.oa.oama.scheduler.EventDetailExtendController",
			"action":"getEventDetail",
			"callback":"remindTypeOnload",
			"eventid":eventid,
			"begintime":begintime,
			"endtime":endtime,
			"timezone":timezone,
			"repeateventopenby":repeateventopenby
		};
		UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	}
}
function nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeInit(ctx){
	ctx.dispose();
	
	var msg = ctx.get("remindtypes")["msg"];
	var email = ctx.get("remindtypes")["email"];
	var cssms = ctx.get("remindtypes")["cssms"];
	var im = ctx.get("remindtypes")["im"];
	var push = ctx.get("remindtypes")["push"];
	if(msg==false || msg=="false"){
		addschedulerController$set("checkbox0", "readonly", "true");
		addschedulerController$set("label11", "color", "#c8c7cc");
	}
	if(email==false || email=="false"){
		addschedulerController$set("checkbox1", "readonly", "true");
		addschedulerController$set("label12", "color", "#c8c7cc");
	}
	if(cssms==false || cssms=="false"){
		addschedulerController$set("checkbox2", "readonly", "true");
		addschedulerController$set("label13", "color", "#c8c7cc");
	}
	if(im==false || im=="false"){
		addschedulerController$set("checkbox3", "readonly", "true");
		addschedulerController$set("label14", "color", "#c8c7cc");
	}
	if(push==false || push=="false"){
		addschedulerController$set("checkbox4", "readonly", "true");
		addschedulerController$set("label17", "color", "#c8c7cc");
	}
}
function nc$bs$oa$oama$ecm$addschedulerControllerBase$isalldayChanged(ctx){
	var param = ctx.params();
	var date = param["daytime"];
	var myCtx = ctx.unload();	
	var isallday = ctx.get("isalldayswitch");
	if(isallday=="true"){
		addschedulerController$hide("panel3");
		addschedulerController$hide("panel4");
		addschedulerController$show("panel16");
		addschedulerController$show("panel17");
		
		myCtx["remindrule"] = "-540";
		myCtx["remindruledesc"] = $res.getResString("scdu_oascheduler_0087");
		myCtx["begindate"] = date;
		myCtx["enddate"] = date;
	}else{
		addschedulerController$hide("panel16");
		addschedulerController$hide("panel17");
		addschedulerController$show("panel3");
		addschedulerController$show("panel4");
		var ctime = new Date();
		var hour = ctime.getHours();
		var beginMin = ctime.getMinutes() <= 30 ? 30 : 0;
		var beginHour = beginMin==30 ? hour : hour+1;
		var endHour = beginMin==0 ? beginHour : beginHour + 1;
		var endMin = beginMin==0 ? 30 : 0;
		var begintime = addschedulerController$formatTime(date, beginHour, beginMin);
		var endtime = addschedulerController$formatTime(date, endHour, endMin);
		
		myCtx["remindrule"] = "10";
		myCtx["remindruledesc"] = $res.getResString("scdu_oascheduler_0086");
		myCtx["begintime"] = begintime;
		myCtx["endtime"] = endtime;
	}
	ctx.load(myCtx);
}
function addschedulerController$formatTime(date, hour, minute){
	hour = parseInt(hour) <= 9 ? "0"+hour : hour;
	minute = parseInt(minute) <= 9 ? "0"+minute : minute;
	
	return date + " " + hour + ":" + minute;
}
function addschedulerController$set(id, attr, value){
	$controls.set(id, attr, value);
}
function addschedulerController$show(id){
	$controls.set(id, "visible", "true");
}
function addschedulerController$hide(id){
	$controls.set(id, "display", "none");
}
nc.bs.oa.oama.ecm.addschedulerController.prototype = {
    initialize : nc$bs$oa$oama$ecm$addschedulerController$initialize,
    onSave : nc$bs$oa$oama$ecm$addschedulerController$onSave,
    detailOnload : nc$bs$oa$oama$ecm$addschedulerController$detailOnload,
    remindTypeInit : nc$bs$oa$oama$ecm$addschedulerControllerBase$remindTypeInit,
    isalldayChanged : nc$bs$oa$oama$ecm$addschedulerControllerBase$isalldayChanged
};
nc.bs.oa.oama.ecm.addschedulerController.registerClass('nc.bs.oa.oama.ecm.addschedulerController');
