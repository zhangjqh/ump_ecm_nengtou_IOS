Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewtwoController');
nc.bs.oa.oama.ecm.mainviewtwoController = function() {}
function nc$bs$oa$oama$ecm$mainviewtwoController$initialize(ctx){}
function nc$bs$oa$oama$ecm$mainviewtwoController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$mainviewtwoController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$mainviewtwoController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$mainviewtwoController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$mainviewtwoController$UMonDataBinding(ctx){}

function nc$bs$oa$oama$ecm$mainviewtwoController$querytasklist(ctx){
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$mainviewtwoController$mypublish(ctx){
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$mainviewtwoController$initbtnclick(ctx){
    // 将上面的置为选中状态
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget1_imagebutton1',checked:'true'}");
    UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_togglebutton1',checked:'true'}");
}
function nc$bs$oa$oama$ecm$mainviewtwoController$getnextpage(ctx){
	var checkedbtnvalue = $controls.get("widget0_togglebuttongroup0", "selectedvalue");
	var serviceType = "UMList.getNextPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "action"  : "getTaskList",
                    "callback" : "setSelector",
		               "listid":"listview0",
		              "tasktype" : "4"
	               };
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$mainviewtwoController$setSelector(ctx){
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
function nc$bs$oa$oama$ecm$mainviewtwoController$showItemClick(ctx){
	var taskid = ctx.params()["taskid"];
	
	var idtask =  stringToJSON(taskid);
	var serviceType = "UMView.open";
	var params = {
		"viewid" : "nc.bs.oa.oama.ecm.Task_starttask_detail",
		"taskid" : idtask["taskid"],
		"btnvalue" : "4",
		"iskeep" : "false"
	};
	var serviceparams = $jsonToString(params);
	UM_NativeCall.callService(serviceType, serviceparams);
	ctx.dispose();
}
nc.bs.oa.oama.ecm.mainviewtwoController.prototype = {
	getnextpage: nc$bs$oa$oama$ecm$mainviewtwoController$getnextpage,
	setSelector : nc$bs$oa$oama$ecm$mainviewtwoController$setSelector,
    initialize : nc$bs$oa$oama$ecm$mainviewtwoController$initialize,
    querytasklist : nc$bs$oa$oama$ecm$mainviewtwoController$querytasklist,
    UMonInit : nc$bs$oa$oama$ecm$mainviewtwoController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewtwoController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewtwoController$UMonUnload,
    initbtnclick : nc$bs$oa$oama$ecm$mainviewtwoController$initbtnclick,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewtwoController$UMonComplete,
     showItemClick : nc$bs$oa$oama$ecm$mainviewtwoController$showItemClick,
    mypublish : nc$bs$oa$oama$ecm$mainviewtwoController$mypublish,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewtwoController$UMonDataBinding
};
nc.bs.oa.oama.ecm.mainviewtwoController.registerClass('nc.bs.oa.oama.ecm.mainviewtwoController');
