Type.registerNamespace('nc.bs.oa.oama.ecm.repeatrullrefController');
nc.bs.oa.oama.ecm.repeatrullrefController = function() {

}
function nc$bs$oa$oama$ecm$repeatrullrefController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$load(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	ctx.load(row);
	if(row["isrepeateventswitch"]=="true" || row["isrepeateventswitch"]==true){
		ctx.set("isrepeateventswitch", true);
		//ctx.set("repeat", row["repeat"]);
		if(row["repeat"]=="day"){
			//ctx.set("repeattype", row["repeattype"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0051")+"'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton6',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton7',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
			if(row["repeattype"]=="day"){
				//ctx.set("repeatcount", row["repeatcount"]);
			}else if(row["repeattype"]=="weekday"){
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
			}
		}else if(row["repeat"]=="week"){
			//ctx.set("repeatcount", row["repeatcount"]);
			//ctx.set("repeatday", row["repeatday"]);
			//ctx.set("repeatdaydesc", row["repeatdaydesc"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0054")+"'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
		}else if(row["repeat"]=="month"){
			//ctx.set("repeattype", row["repeattype"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0073")+"'}");
			if(row["repeattype"]=="date"){
				//ctx.set("repeatcount", row["repeatcount"]);
				//ctx.set("repeatdate", row["repeatdate"]);
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
			}else if(row["repeattype"]=="week"){
				//ctx.set("repeatcount", row["repeatcount"]);
				//ctx.set("week", row["week"]);
				//ctx.set("repeatdate", row["repeatdate"]);
				//ctx.set("repeatdaydesc", row["repeatdaydesc"]);
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
			}
		}else if(row["repeat"]=="year"){
			//ctx.set("repeattype", row["date"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',display:'none'}");
			if(row["repeattype"]=="date"){
				//ctx.set("month", row["month"]);
				//ctx.set("repeatdate", row["repeatdate"]);
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
			}else if(row["repeattype"]=="week"){
				//ctx.set("month", row["month"]);
				//ctx.set("week", row["week"]);
				//ctx.set("repeatdate", row["repeatdate"]);
				//ctx.set("repeatdaydesc", row["repeatdaydesc"]);
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
				UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
			}
		}
		//ctx.set("endrepeattype", row["endrepeattype"]);
		if(row["endrepeattype"]=="1"){
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
		}else if(row["endrepeattype"]=="2"){
			//ctx.set("repeattimes", row["repeattimes"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
		}else if(row["endrepeattype"]=="3"){
			//ctx.set("repeatendday", row["repeatendday"]);
			UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		}
	}else{
		ctx.set("isrepeateventswitch", false);
		ctx.set("repeatcount", 1);
		ctx.set("repeatdate", 1);
		ctx.set("week", 1);
		ctx.set("repeattimes", 35);
		var ctime = new Date();
		ctx.set("repeatendday", ctime.getFullYear()+"-"+(ctime.getMonth()+1)+"-"+ctime.getDate());
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel2',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
	}
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeatDay(ctx){
	ctx.set("repeat", "day");
	ctx.set("repeattype", "day");
	ctx.set("repeatcount", 1);
	ctx.set("endrepeattype", "1");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton6',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton7',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0051")+"'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeatWeek(ctx){
	ctx.set("repeat", "week");
	ctx.set("endrepeattype", "1");
	ctx.set("repeatcount", 1);
	ctx.set("repeatday", "1");
	ctx.set("repeatdaydesc", $res.getResString("scdu_oascheduler_0088"));
	ctx.set("repeatdayresfs", "[{\"key\":\"1\",\"isChecked\":true,\"name\":\""+$res.getResString("scdu_oascheduler_0088")+"\"}]");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0054")+"'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeatMonth(ctx){
	ctx.set("repeat", "month");
	ctx.set("repeattype", "date");
	ctx.set("repeatcount", 1);
	ctx.set("repeatdate", 1);
	ctx.set("endrepeattype", "1");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton6',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton7',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0073")+"'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeatYear(ctx){
	ctx.set("repeat", "year");
	ctx.set("repeattype", "date");
	ctx.set("repeatdate", 1);
	ctx.set("endrepeattype", "1");
	ctx.set("month", "1");
	ctx.set("monthdesc", $res.getResString("scdu_oascheduler_0089"));
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton6',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton7',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeDay(ctx){
	ctx.set("repeat", "day");
	ctx.set("repeattype", "day");
	ctx.set("repeatcount", 1);
	ctx.set("endrepeattype", "1");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeWeekday(ctx){
	ctx.set("repeat", "day");
	ctx.set("repeattype", "weekday");
	ctx.set("endrepeattype", "1");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeDate(ctx){
	ctx.set("repeatcount", 1);
	if(ctx.get("repeat")=="month"){
		ctx.set("repeattype", "date");
		ctx.set("repeatdate", 1);
		ctx.set("endrepeattype", "1");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0073")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
	}else if(ctx.get("repeat")=="year"){
		ctx.set("repeattype", "date");
		ctx.set("endrepeattype", "1");
		ctx.set("repeatdate", 1);
		ctx.set("month", "1");
		ctx.set("monthdesc", $res.getResString("scdu_oascheduler_0089"));
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
	}
}
function nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeWeek(ctx){
	ctx.set("week", 1);
	ctx.set("repeatday", "1");
	ctx.set("repeatdaydesc", $res.getResString("scdu_oascheduler_0088"));
	if(ctx.get("repeat")=="month"){
		ctx.set("repeattype", "week");
		ctx.set("repeatcount", 1);
		ctx.set("endrepeattype", "1");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0073")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
	}else if(ctx.get("repeat")=="year"){
		ctx.set("repeattype", "week");
		ctx.set("month", "1");
		ctx.set("monthdesc", $res.getResString("scdu_oascheduler_0089"));
		ctx.set("endrepeattype", "1");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
	}
}
function nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattype(ctx){
	//UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton8',checked:'true'}");
	ctx.set("endrepeattype", "1");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattypeDate(ctx){
	//UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton10',checked:'true'}");
	ctx.set("endrepeattype", "3");
	var ctime = new Date();
	ctx.set("repeatendday", ctime.getFullYear()+"-"+(ctime.getMonth()+1)+"-"+ctime.getDate());
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattypeTimes(ctx){
	//UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton9',checked:'true'}");
	ctx.set("endrepeattype", "2");
	ctx.set("repeattimes", 35);
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',visible:'true'}");
	UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefController$isRepeatChanged(ctx){
    var isrepeat = ctx.get("isrepeateventswitch");
	if(isrepeat=="true" || isrepeat==true){
		ctx.set("repeat", "day");
		ctx.set("repeattype", "day");
		ctx.set("endrepeattype", "1");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel2',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton4',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton5',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton6',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'togglebutton7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',visible:'true'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'label13',text:'"+$res.getResString("scdu_oascheduler_0051")+"'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',visible:'true'}");
	}else{
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel2',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel3',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel4',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel5',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel6',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel7',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel8',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel9',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel10',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel11',display:'none'}");
		UM_NativeCall.callService("UMJS.setProperty","{id:'panel12',display:'none'}");
	}
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnResult(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["result"]);
	var isrepeatevent = "";
	var repeat = "";
	var repeattype = "";
	var repeatdate = "";
	var week = "";
	var repeatday = "";
	var repeatdaydesc = "";
	var month = "";
	var monthdesc = "";
	var repeatcount = "";
	var endrepeattype = "";
	var repeattimes = "";
	var repeatendday = "";
	var msg = "";
	if(row["isrepeateventswitch"]=="true" || row["isrepeateventswitch"]==true){
		isrepeatevent = "Y";
		repeat = row["repeat"];
		if(row["repeat"]=="day"){
			repeattype = row["repeattype"];
			if(row["repeattype"]=="day"){
				repeatcount = row["repeatcount"];
				if(!repeatcount||repeatcount==null||repeatcount==""){
					alert($res.getResString("scdu_oascheduler_0074"));
					return;
				}
				if(repeatcount.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0075"));
					return;
				}
				if(repeatcount==0){
					alert($res.getResString("scdu_oascheduler_0076"));
					return;
				}
			}
		}else if(row["repeat"]=="week"){
			repeatcount = row["repeatcount"];
			if(!repeatcount||repeatcount==null||repeatcount==""){
				alert($res.getResString("scdu_oascheduler_0074"));
				return;
			}
			if(repeatcount.toString().indexOf(".")>-1){
				alert($res.getResString("scdu_oascheduler_0075"));
				return;
			}
			if(repeatcount==0){
				alert($res.getResString("scdu_oascheduler_0076"));
				return;
			}
			repeatday = row["repeatday"];
			if(!repeatday||repeatday==null||repeatday==""){
				alert($res.getResString("scdu_oascheduler_0091"));
				return;
			}
			repeatdaydesc = row["repeatdaydesc"];
		}else if(row["repeat"]=="month"){
			repeattype = row["repeattype"];
			if(row["repeattype"]=="date"){
				repeatcount = row["repeatcount"];
				if(!repeatcount||repeatcount==null||repeatcount==""){
					alert($res.getResString("scdu_oascheduler_0074"));
					return;
				}
				if(repeatcount.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0075"));
					return;
				}
				if(repeatcount==0){
					alert($res.getResString("scdu_oascheduler_0076"));
					return;
				}
				repeatdate = row["repeatdate"];
				if(!repeatdate||repeatdate==null||repeatdate==""){
					alert($res.getResString("scdu_oascheduler_0080"));
					return;
				}
				if(repeatdate.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0081"));
					return;
				}
				if(repeatdate<1 || repeatdate>31){
					alert($res.getResString("scdu_oascheduler_0082"));
					return;
				}
			}else if(row["repeattype"]=="week"){
				repeatcount = row["repeatcount"];
				if(!repeatcount||repeatcount==null||repeatcount==""){
					alert($res.getResString("scdu_oascheduler_0074"));
					return;
				}
				if(repeatcount.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0075"));
					return;
				}
				if(repeatcount==0){
					alert($res.getResString("scdu_oascheduler_0076"));
					return;
				}
				week = row["week"];
				if(!week||week==null||week==""){
					alert($res.getResString("scdu_oascheduler_0077"));
					return;
				}
				if(week.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0078"));
					return;
				}
				if(week<1 || week>5){
					alert($res.getResString("scdu_oascheduler_0079"));
					return;
				}
				repeatday = row["repeatday"];
				repeatdaydesc = row["repeatdaydesc"];
			}
		}else if(row["repeat"]=="year"){
			repeattype = row["repeattype"];
			month = row["month"];
			monthdesc = row["monthdesc"];
			if(row["repeattype"]=="date"){
				repeatdate = row["repeatdate"];
				if(!repeatdate||repeatdate==null||repeatdate==""){
					alert($res.getResString("scdu_oascheduler_0080"));
					return;
				}
				if(repeatdate.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0081"));
					return;
				}
				if(repeatdate<1 || repeatdate>31){
					alert($res.getResString("scdu_oascheduler_0082"));
					return;
				}
			}else if(row["repeattype"]=="week"){
				week = row["week"];
				if(!week||week==null||week==""){
					alert($res.getResString("scdu_oascheduler_0077"));
					return;
				}
				if(week.toString().indexOf(".")>-1){
					alert($res.getResString("scdu_oascheduler_0078"));
					return;
				}
				if(week<1 || week>5){
					alert($res.getResString("scdu_oascheduler_0079"));
					return;
				}
				repeatday = row["repeatday"];
				repeatdaydesc = row["repeatdaydesc"];
			}
		}
		endrepeattype = row["endrepeattype"];
		if(row["endrepeattype"]=="1"){
		}else if(row["endrepeattype"]=="2"){
			repeattimes = row["repeattimes"];
			if(!repeattimes||repeattimes==null||repeattimes==""){
				alert($res.getResString("scdu_oascheduler_0083"));
				return;
			}
			if(repeattimes.toString().indexOf(".")>-1){
				alert($res.getResString("scdu_oascheduler_0084"));
				return;
			}
			if(repeattimes<1){
				alert($res.getResString("scdu_oascheduler_0085"));
				return;
			}
		}else if(row["endrepeattype"]=="3"){
			repeatendday = row["repeatendday"];
		}
	}else{
		isrepeatevent = "N";
	}
	var timezone = UM_NativeCall.callService("UMDevice.getTimeZoneID", "", true);
	var args = {
		"viewid":"nc.bs.oa.oama.scheduler.RepeatRull1ExtendController",
		"action":"getRepeatRuleMsg",
		"callback":"returnCallback", 
		"timezone":timezone,
		"isrepeatevent":isrepeatevent,
		"repeat":repeat,
		"repeattype":repeattype,
		"repeatdate":repeatdate,
		"week":week,
		"repeatday":repeatday,
		"month":month,
		"monthdesc":monthdesc,
		"repeatcount":repeatcount,
		"endrepeattype":endrepeattype,
		"repeattimes":repeattimes,
		"repeatendday":repeatendday,
		"repeatdaydesc":repeatdaydesc
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	//UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.scheduler.RepeatRull1ExtendController',action:'getRepeatRuleMsg',params:{timezone:'"+timezone+"',isrepeatevent:'"+isrepeatevent+"',repeat:'"+repeat+"',repeattype:'"+repeattype+"',repeatdate:'"+repeatdate+"',week:'"+week+"',repeatday:'"+repeatday+"',repeatdaydesc:'"+repeatdaydesc+"',month:'"+month+"',repeatcount:'"+repeatcount+"',endrepeattype:'"+endrepeattype+"',repeattimes:'"+repeattimes+"',repeatendday:'"+repeatendday+"'},callback:'returnCallback'}");
}
function nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnCallback(ctx){
	var isrepeatevent = ctx.get("isrepeatevent");
	var isrepeateventswitch = false;
	if(isrepeatevent=="Y"){
		isrepeateventswitch = true;
	}
	var repeat = ctx.get("repeat");
	var repeattype = ctx.get("repeattype");
	var repeatdate = ctx.get("repeatdate");
	var week = ctx.get("week");
	var repeatday = ctx.get("repeatday");
	var repeatdaydesc = ctx.get("repeatdaydesc");
	var repeatdayresfsList = ctx.get("repeatdayresfs");
	var repeatdayresfs = [];
	for(var i=0; i<repeatdayresfsList.length(); i++){
		if(repeatdayresfsList.get(i,"isChecked")){
			repeatdayresfs.push(repeatdayresfsList.rows()[i].unload());
		}
	}
	var month = ctx.get("month");
	var monthdesc = ctx.get("monthdesc");
	var repeatcount = ctx.get("repeatcount");
	var endrepeattype = ctx.get("endrepeattype");
	var repeattimes = ctx.get("repeattimes");
	var repeatendday = ctx.get("repeatendday");
	var msg = ctx.get("msg");
	var args = {
		"iskeep":"false",
		"resultcode":"15",
		"result":{
			"isrepeatevent":isrepeatevent,
			"isrepeateventswitch":isrepeateventswitch,
			"repeat":repeat,
			"repeattype":repeattype,
			"repeatdate":repeatdate,
			"week":week,
			"repeatday":repeatday,
			"repeatdaydesc":repeatdaydesc,
			"repeatdayresfs":repeatdayresfs,
			"month":month,
			"monthdesc":monthdesc,
			"repeatcount":repeatcount,
			"endrepeattype":endrepeattype,
			"repeattimes":repeattimes,
			"repeatendday":repeatendday,
			"msg":msg
		}
	};
	UM_NativeCall.callService("UMView.close",jsonToString(args));
	//UM_NativeCall.callService("UMView.close", "{iskeep:false,resultcode:'15',result:{isrepeatevent:'"+isrepeatevent+"',isrepeateventswitch:'"+isrepeateventswitch+"',repeat:'"+repeat+"',repeattype:'"+repeattype+"',repeatdate:'"+repeatdate+"',week:'"+week+"',repeatday:'"+repeatday+"',repeatdaydesc:'"+repeatdaydesc+"',repeatdayresfs:"+jsonToString(repeatdayresfs)+",month:'"+month+"',repeatcount:'"+repeatcount+"',endrepeattype:'"+endrepeattype+"',repeattimes:'"+repeattimes+"',repeatendday:'"+repeatendday+"',msg:'"+$context.get("msg")+"'}}");
}
nc.bs.oa.oama.ecm.repeatrullrefController.prototype = {
    initialize : nc$bs$oa$oama$ecm$repeatrullrefController$initialize,
    load : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$load,
    endrepeattypeDate : nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattypeDate,
    repeatDay : nc$bs$oa$oama$ecm$repeatrullrefController$repeatDay,
    repeatMonth : nc$bs$oa$oama$ecm$repeatrullrefController$repeatMonth,
    repeatYear : nc$bs$oa$oama$ecm$repeatrullrefController$repeatYear,
    endrepeattype : nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattype,
    repeattypeDate : nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeDate,
    isRepeatChanged : nc$bs$oa$oama$ecm$repeatrullrefController$isRepeatChanged,
    repeattypeWeekday : nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeWeekday,
    repeattypeDay : nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeDay,
    endrepeattypeTimes : nc$bs$oa$oama$ecm$repeatrullrefController$endrepeattypeTimes,
    repeatWeek : nc$bs$oa$oama$ecm$repeatrullrefController$repeatWeek,
    repeattypeWeek : nc$bs$oa$oama$ecm$repeatrullrefController$repeattypeWeek,
    returnResult : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnResult,
    returnCallback : nc$bs$oa$oama$ecm$repeatrullrefControllerBase$returnCallback
};
nc.bs.oa.oama.ecm.repeatrullrefController.registerClass('nc.bs.oa.oama.ecm.repeatrullrefController');
