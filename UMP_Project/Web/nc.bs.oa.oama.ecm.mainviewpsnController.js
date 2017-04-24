Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewpsnController');
nc.bs.oa.oama.ecm.mainviewpsnController = function() {

}
function nc$bs$oa$oama$ecm$mainviewpsnController$initialize(ctx){}
function  nc$bs$oa$oama$ecm$mainviewpsnController$UMonInit(ctx){}
function  nc$bs$oa$oama$ecm$mainviewpsnController$UMonLoad(ctx){}
function nc$bs$oa$oama$ecm$mainviewpsnController$UMonUnload(ctx){}
function nc$bs$oa$oama$ecm$mainviewpsnController$UMonComplete(ctx){}
function nc$bs$oa$oama$ecm$mainviewpsnController$UMonDataBinding(ctx){}

function nc$bs$oa$oama$ecm$mainviewpsnController$initwidget(ctx){
  var serviceType = "UMJS.setProperty";
	var serviceparams1 = {
		              "id" : "widget0_togglebutton0",
		              "checked" : "true"
	               };
     var serviceparams2 = {
		              "id" : "widget1_imagebutton0",
		              "checked" : "true"
	               };             
	UM_NativeCall.callService(serviceType,$jsonToString(serviceparams1));
	UM_NativeCall.callService(serviceType,$jsonToString(serviceparams2));

    $sys.callAction("getfirstpage");
}
function nc$bs$oa$oama$ecm$mainviewpsnController$mytask(ctx){
    $sys.callAction("getfirstpage");
}
function  nc$bs$oa$oama$ecm$mainviewpsnController$getnextpage(ctx){
    var serviceType = "UMList.getNextPage";
    var serviceparams = {
        "viewid" : "nc.bs.oa.oama.oatask.ListviewController",
        "action"  : "getPersonalTaskList",
        "callback" : "setSelector",
        "listid":"listview0"
    };
    UM_NativeCall.callService(serviceType,serviceparams);
}

function  nc$bs$oa$oama$ecm$mainviewpsnController$setSelector(ctx){
    var navs = ctx.get("tasklist");
	var rows=navs.rows();
	for(var i=0;i<rows.length;i++){
            if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),0);
			}else if(rows[i].get("prioritycode")=="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),2);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") == rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),1);
			}else if(rows[i].get("prioritycode")!="1" && rows[i].get("startdate") != rows[i].get("enddate")){
				rows[i].set(rows[i].rowSelector(),3);
			}
	}

}

nc.bs.oa.oama.ecm.mainviewpsnController.prototype = {
    initialize :  nc$bs$oa$oama$ecm$mainviewpsnController$initialize,
    UMonUnload :  nc$bs$oa$oama$ecm$mainviewpsnController$UMonUnload,
   
    UMonComplete : nc$bs$oa$oama$ecm$mainviewpsnController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewpsnController$UMonDataBinding,
    initwidget : nc$bs$oa$oama$ecm$mainviewpsnController$initwidget,
    mytask : nc$bs$oa$oama$ecm$mainviewpsnController$mytask,
   
    setSelector : nc$bs$oa$oama$ecm$mainviewpsnController$setSelector,
    getnextpage : nc$bs$oa$oama$ecm$mainviewpsnController$getnextpage,
    UMonInit : nc$bs$oa$oama$ecm$mainviewpsnController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewpsnController$UMonLoad
};
nc.bs.oa.oama.ecm.mainviewpsnController.registerClass('nc.bs.oa.oama.ecm.mainviewpsnController');
