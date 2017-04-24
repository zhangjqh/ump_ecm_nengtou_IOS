Type.registerNamespace('nc.bs.oa.oama.ecm.responserefcopyController');
nc.bs.oa.oama.ecm.responserefcopyController = function() {

}
function nc$bs$oa$oama$ecm$responserefcopyController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$responserefcopyController$refload(ctx){
    // alert(jsonToString(ctx.params()));
     var checkrows = stringToJSON(ctx.params()["rows"]);
     if(checkrows != ""){
     	$context.set("stafflist",checkrows);
     	updateCache(checkrows);
     }else{
     	 // UM_NativeCall.callService("UMService.callAction","{viewid:'nc.bs.oa.oama.oatask.DetailtaskExtendController',isDataCollect:'true',action:'getStaffList'}");
     }

}
function nc$bs$oa$oama$ecm$responserefcopyController$serchkeyword(ctx){
	UM_NativeCall.callService("UMJS.setProperty","{id:'listview0',visibleLoadMore:'true'}");
    var param = ctx.params();
	var keywords = param["searchtext"];
//    var serviceType = "UMService.callAction";
//	var params = {
//		"viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
//		"keyword" : keywords,
//		"isDataCollect":"true",
//		"action" : "getStaffList"
//	};
//	var serviceparams = $jsonToString(params);
//	UM_NativeCall.callService(serviceType, serviceparams);
	var serviceType = "UMList.getFirstPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "startline" : "1",
		              "count" : "25",
		              "action"  : "getStaffList",
		              "keyword" : keywords,
		              "callback" : "searchcallback"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams);
}
function nc$bs$oa$oama$ecm$responserefcopyController$getnextpage(ctx){
    var keywords = $controls.get("search0","keyword");
	var serviceType = "UMList.getNextPage";
	var serviceparams = {
		              "viewid" : "nc.bs.oa.oama.oatask.DetailtaskExtendController",
		              "action"  : "getStaffList",
		              "keyword" : keywords,
		              "callback" : "searchcallback",
		               "listid":"listview0"
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams); 
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$responserefcopyController$okbtn(ctx){
	var stafflist = ctx.get("stafflist");
    var templist  = getCache() || [];
    var cachelist = templist ;
     
    var staffstr ="";
	if(stafflist){
		var moreMap = {};//将重复pk先找出来
		for(var i = 0 ; i < stafflist.length() ; i ++ ){
			var moreSta = stafflist.get(i,"staffid");
			for(var j = stafflist.length()-1 ; j > i ; j --){
				var stamore = stafflist.get(j,"staffid");
				if(stamore == moreSta){
					if(!moreMap[moreSta]){
						moreMap[moreSta] = moreSta ;
					}
				}
			}
		}
		for (var i = 0 ; i < stafflist.length() ; i ++){
		if( stafflist.get(i,"ischecked")==true || stafflist.get(i,"ischecked")=="true" ){
			if(templist.length == 0){
				//list.push(stafflist.get(i,"staffid"));
			    templist.push(stringToJSON(stafflist.rows()[i].unload()));	
			    //staffstr = staffstr + stafflist.get(i,"nsme")+"/";
			}else{
				if(!(getSelectedMap(templist)[stafflist.get(i,"staffid")])){
					templist.push(stringToJSON(stafflist.rows()[i].unload()));
					//list.push(stafflist.get(i,"staffid"));	
					//staffstr = staffstr + stafflist.get(i,"nsme")+"/";
				}
			}
		}else{
			if(getSelectedMap(cachelist)[stafflist.get(i,"staffid")]){
				if(!moreMap[stafflist.get(i,"staffid")]){
				  	var index = getIndex(cachelist,stafflist.get(i,"staffid"));
					templist.splice(index, 1);
				  }else{
				  	var flag = false;
				  	for(var k= 0 ; k < stafflist.length() ; k ++ ){
				  		if(stafflist.get(k,"staffid") == stafflist.get(i,"staffid")){
				  			if(stafflist.get(k,"ischecked")==true || stafflist.get(k,"ischecked")=="true" ){
				  				flag = true;
				  			}else{
				  				continue;
				  			}
				  		}
				  	}
				  	if(!flag){
				  		var index = getIndex(cachelist,stafflist.get(i,"staffid"));
					    templist.splice(index, 1);
				  	}
				  }
				}
		}
	}
	}
	
	// var tempvar = stringToJSON(templist);
	//$context.set("assistantstructlist",templist);
     //将重复的人员去掉
	if(templist.length != 0){
		for(var i = 0 ; i < templist.length ; i ++){
			staffstr = staffstr + templist[i]["nsme"]+"/";
		}
	}	
	staffstr = staffstr.substring(0,staffstr.length -1);
    updateCache(templist);
	var serviceType = "UMView.close";
	var serviceparams = {
		              "resultCode" : "15",
		              "isDataCollect" : "true",
		              "result" : {
		              	"exammanpsnlist" : staffstr,
		              	"exammanstructlistcache" : templist
		              }
	               };
    var serviceparams = $jsonToString(serviceparams);              
	UM_NativeCall.callService(serviceType,serviceparams); 

}
function nc$bs$oa$oama$ecm$responserefcopyController$onEmptyClick(ctx){
	var rowindex = parseInt(ctx.params()["rowindex"]);
	var stafflist = ctx.unload()["stafflist"];
	var row = stafflist[rowindex];
	var isSelected = row["ischecked"];
	var selecteds = getCache() || [];
	if(true == isSelected||isSelected=="true"){
		stafflist[rowindex]["ischecked"] = false;
		for(var i=0;i<selecteds.length;i++){
			selected = selecteds[i];
			if(selected["staffid"] == row["staffid"]){
				selecteds.splice(i,1);
				break;
			}
		}
	}else{
		stafflist[rowindex]["ischecked"] = true;
		var staffid = stafflist[rowindex]["staffid"];
		var flag = false;
		for(var i=0;i<selecteds.length;i++){
			selected = selecteds[i];
			if(selected["staffid"] == staffid){
				flag = true;
			}
		}
		if(!flag){
			selecteds.push(row);
		}
	}
		
	var content = ctx.unload();
	content["stafflist"] = stafflist;
	ctx.load(content);
	 updateCache(selecteds);
}
function getIndex(list,value){
	var selectedMap = {};
	var j ;
	for(var i=0; i<list.length; i++){
		var person = list[i];
		if(person["staffid"] == value){
			j = i ;
		}
	}
	return j;
}
function nc$bs$oa$oama$ecm$responserefcopyController$searchcallback(ctx){
	var list = ctx.unload()["stafflist"] || [];
	 var cachelist  = getCache() || [];
	 var selectedMap = getSelectedMap(cachelist);
	for(var i=0; i<list.length; i++){
		var row = list[i];
		if (row["ischecked"] == true || row["ischecked"] == "true" || selectedMap[row["staffid"]]){
			row["ischecked"] = true;
		} else {
			row["ischecked"] = false;
		}
	}
	var content = ctx.unload();
	content["stafflist"] = list;
	ctx.load(content);
}

function getSelectedMap(list){
	var selectedMap = {};
	for(var i=0; i<list.length; i++){
		var person = list[i];
		selectedMap[person["staffid"]] = person["staffid"];
	}
	return selectedMap;
}
function getCache(){
	return eval($cache.readFile("OAPOVIEWSELECTED")) || [];
}
function updateCache(value){
	$cache.writeFile("OAPOVIEWSELECTED", value || []);
}
nc.bs.oa.oama.ecm.responserefcopyController.prototype = {
    initialize : nc$bs$oa$oama$ecm$responserefcopyController$initialize,
    refload : nc$bs$oa$oama$ecm$responserefcopyController$refload,
    serchkeyword : nc$bs$oa$oama$ecm$responserefcopyController$serchkeyword,
    getnextpage : nc$bs$oa$oama$ecm$responserefcopyController$getnextpage,
    okbtn : nc$bs$oa$oama$ecm$responserefcopyController$okbtn,
    onEmptyClick :  nc$bs$oa$oama$ecm$responserefcopyController$onEmptyClick,
    searchcallback : nc$bs$oa$oama$ecm$responserefcopyController$searchcallback
};
nc.bs.oa.oama.ecm.responserefcopyController.registerClass('nc.bs.oa.oama.ecm.responserefcopyController');
