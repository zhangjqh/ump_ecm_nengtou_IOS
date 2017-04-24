Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewthreeforoneController');
nc.bs.oa.oama.ecm.mainviewthreeforoneController = function() {

}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$initialize(ctx){}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonInit(ctx){}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonDataBinding(ctx){}

function nc$bs$oa$oama$ecm$mainviewthreeforoneController$dataonload(ctx){
    var checkedbtnvalue = $controls.get("widget1_togglebuttongroup0", "selectedvalue");
    // 加号隐藏
    UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_addtask',visible:'false'}");
    //UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_button0',visible:'false'}");
    // 我的任务按钮置成选中状态
    UM_NativeCall.callService("UMJS.setProperty", "{id:'widget0_imagebutton0',checked:'true'}");
    var tasktype ;
    if(checkedbtnvalue==null||checkedbtnvalue==undefined||checkedbtnvalue==""){
        tasktype = ctx.params()["tasktype"];
    }else{
        tasktype = checkedbtnvalue;
    }
    
    if (tasktype == '3') {//负责任务
        UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton1',checked:'true'}");
    } else if (tasktype == '2') {//协办任务
        UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton2',checked:'true'}");
    } else if (tasktype == '1') {// 关注任务
        UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton3',checked:'true'}");
    }
    
    // 需要一个获取到控件togglebutton值得函数
    customGetfirstPage(tasktype);
    
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$responsebtn(ctx){
    UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton1',checked:'true'}");
    customGetfirstPage(3);
    
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$crowbtn(ctx){
    UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton2',checked:'true'}");
    customGetfirstPage(2);
    
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$viewbtn(ctx){
    UM_NativeCall.callService("UMJS.setProperty", "{id:'widget1_togglebutton3',checked:'true'}");
    customGetfirstPage(1);
    
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$getfirstpage(ctx){
    var checkedbtnvalue = $controls.get("widget1_togglebuttongroup0", "selectedvalue");
    customGetfirstPage(checkedbtnvalue);
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$mytask(ctx){
    var checkedbtnvalue = $controls.get("widget1_togglebuttongroup0", "selectedvalue");
    customGetfirstPage(checkedbtnvalue);
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$getnextpage(ctx){
    var checkedbtnvalue = $controls.get("widget1_togglebuttongroup0", "selectedvalue");
	var serviceType = "UMList.getNextPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "action"  : "getTaskList",
                    "callback" : "setSelector",
		               "listid":"listview0",
		              "tasktype" : checkedbtnvalue
	               };
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$showItemClick(ctx){
  //  3负责 2协办 1 关注
	var checkedbtnvalue = $controls.get("widget1_togglebuttongroup0", "selectedvalue");
	var taskdetail = ctx.params()["taskdetail"];
	var serviceType = "UMView.open";
	var params = {
		"viewid" : "nc.bs.oa.oama.ecm.Task_detail",
		"taskdetail" : taskdetail,
		"btnvalue" : checkedbtnvalue,
		"iskeep" : "true",
		"callback" : "refreshctx"
	};
	var serviceparams = $jsonToString(params);
	UM_NativeCall.callService(serviceType, serviceparams);

    ctx.dispose();
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$refreshctx(ctx){
    var tasklist = ctx.get("tasklist");
	var checkindex = ctx.params()["checkindex"];
	tasklist.set(checkindex,"mewtask","");
	tasklist.set(checkindex,"urge","");
	nc$bs$oa$oama$ecm$mainviewthreeforoneController$dataonload(ctx);
}
function nc$bs$oa$oama$ecm$mainviewthreeforoneController$setSelector(ctx){
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
    $ctx.dataBind();
}
function customGetfirstPage(tasktype){
	var serviceType = "UMList.getFirstPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
		              "startline" : "1",
		              "count" : "25",
                    "action"  : "getTaskList",
                    "callback" : "setSelector",
                    "isDataCollect" : "false",
		               "listid":"listview0",
		              "tasktype" : tasktype
	               };
	UM_NativeCall.callService(serviceType,serviceparams); 
}
nc.bs.oa.oama.ecm.mainviewthreeforoneController.prototype = {
    initialize : nc$bs$oa$oama$ecm$mainviewthreeforoneController$initialize,
    getnextpage : nc$bs$oa$oama$ecm$mainviewthreeforoneController$getnextpage,
    showItemClick : nc$bs$oa$oama$ecm$mainviewthreeforoneController$showItemClick,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonComplete,
    viewbtn : nc$bs$oa$oama$ecm$mainviewthreeforoneController$viewbtn,
    getfirstpage : nc$bs$oa$oama$ecm$mainviewthreeforoneController$getfirstpage,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonDataBinding,
    mytask : nc$bs$oa$oama$ecm$mainviewthreeforoneController$mytask,
    setSelector : nc$bs$oa$oama$ecm$mainviewthreeforoneController$setSelector,
    dataonload : nc$bs$oa$oama$ecm$mainviewthreeforoneController$dataonload,
    UMonInit : nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewthreeforoneController$UMonLoad,
    responsebtn : nc$bs$oa$oama$ecm$mainviewthreeforoneController$responsebtn,
    crowbtn : nc$bs$oa$oama$ecm$mainviewthreeforoneController$crowbtn,
    refreshctx : nc$bs$oa$oama$ecm$mainviewthreeforoneController$refreshctx
};
nc.bs.oa.oama.ecm.mainviewthreeforoneController.registerClass('nc.bs.oa.oama.ecm.mainviewthreeforoneController');
