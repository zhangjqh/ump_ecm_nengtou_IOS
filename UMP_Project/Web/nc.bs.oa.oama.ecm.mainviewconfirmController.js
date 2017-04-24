Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewconfirmController');
nc.bs.oa.oama.ecm.mainviewconfirmController = function() {

}
function nc$bs$oa$oama$ecm$mainviewconfirmController$initialize(ctx){}
function nc$bs$oa$oama$ecm$mainviewconfirmController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$mainviewconfirmController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$mainviewconfirmController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$mainviewconfirmController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$mainviewconfirmController$UMonDataBinding(ctx){}

function nc$bs$oa$oama$ecm$mainviewconfirmController$initbtnclick(ctx){
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget1_imagebutton1',checked:'true'}");
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_togglebutton0',checked:'true'}");
    
}

function nc$bs$oa$oama$ecm$mainviewconfirmController$getnextpage(ctx){
    var checkedbtnvalue = $controls.get("widget0_togglebuttongroup0", "selectedvalue");
	var serviceType = "UMList.getNextPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "action"  : "getTaskList",
                    "callback" : "setSelector",
		              "listid":"listview0",
		              "tasktype" : "6"
	               };
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$mainviewconfirmController$showItemClick(ctx){
	var taskid = ctx.params()["taskid"];
	
	var idtask =  stringToJSON(taskid);
	var serviceType = "UMView.open";
	var params = {
		"viewid" : "nc.bs.oa.oama.ecm.Task_reportconfirmdetail",
		"taskid" : idtask["taskid"],
		"btnvalue" : "6",
		"iskeep" : "false"
	};
	var serviceparams = $jsonToString(params);
	UM_NativeCall.callService(serviceType, serviceparams);
	ctx.dispose();

}
function nc$bs$oa$oama$ecm$mainviewconfirmController$confirm(ctx){
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$mainviewconfirmController$mypublish(ctx){
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$mainviewconfirmController$setSelector(ctx){
    var navs = ctx.get("tasklist");
	var rows=navs.rows();
	for(var i=0;i<rows.length;i++){
		if(rows[i].get("expired")=="Y"){
            if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),2);
			}else if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),6);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),3);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),7);
			}
		}else{
            if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),0);
			}else if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),4);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),1);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),5);
			}
		}
	}

}
nc.bs.oa.oama.ecm.mainviewconfirmController.prototype = {
    initialize : nc$bs$oa$oama$ecm$mainviewconfirmController$initialize,
    getnextpage : nc$bs$oa$oama$ecm$mainviewconfirmController$getnextpage,
    showItemClick : nc$bs$oa$oama$ecm$mainviewconfirmController$showItemClick,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewconfirmController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewconfirmController$UMonComplete,
    mypublish : nc$bs$oa$oama$ecm$mainviewconfirmController$mypublish,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewconfirmController$UMonDataBinding,
    setSelector : nc$bs$oa$oama$ecm$mainviewconfirmController$setSelector,
    UMonInit : nc$bs$oa$oama$ecm$mainviewconfirmController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewconfirmController$UMonLoad,
    initbtnclick : nc$bs$oa$oama$ecm$mainviewconfirmController$initbtnclick,
    confirm : nc$bs$oa$oama$ecm$mainviewconfirmController$confirm
};
nc.bs.oa.oama.ecm.mainviewconfirmController.registerClass('nc.bs.oa.oama.ecm.mainviewconfirmController');
