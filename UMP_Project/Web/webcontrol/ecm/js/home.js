﻿// 页面禁止选中
if (typeof(document.onselectstart) != "undefined") {
	document.onselectstart = new Function("return false");       
} else {
	document.onmousedown = new Function("return false");       
	document.onmouseup = new Function("return true");       
}
var idToViewMap = {
	"A0A001": "nc.bs.oa.oama.ecm.Addr_search",
	"A0A002": "nc.bs.oa.oama.ecm.Flow_Main",
	"A0A003": "nc.bs.oa.oama.ecm.Scdu_myscheduler",
	"A0A004": "nc.bs.oa.oama.ecm.Task_mainviewpsn",
	"A0A005": "nc.bs.oa.oama.ecm.Info_infos",
	"A0A006": "nc.bs.oa.oama.ecm.Msg_UnreadMessageList",
    "A0A00X": "nc.bs.oa.oama.ecm.Msg_UnreadMessageList",
	"A0A007": "nc.bs.oa.oama.ecm.Approve_NcTaskList"
};
var multiLangMap = {};
function initApps() {
	var appMap = $ctx.getValue("#{AppList}"); // 名称
    
    var newapp ={"unread":"0","id":"A0A00X","name":"邮件消息"};
    
	if(appMap){
		if("string"==typeof(appMap)){
			appMap = stringToJSON(appMap);
		}
		var apps = appMap["apps"];
        
        apps.push(newapp);
        
		for(var i=0; i<apps.length; i++){
			var app = apps[i];
			var id = app["id"]; // id
			var name = getCtxValue("res."+id, app["name"]); // 名称
			var unread = app["unread"] || "0"; // 未读个数
			
			// 多语名称
			$("#"+id).find(".nodetitle").text(name);
			$("#"+id).addClass("nodeshow"); // 显示
			
			// 未读个数
			var num = parseInt(unread || "0");
			if(num > 0){
				if(num > 99) num = "99+";
				$("#"+id).find(".corner").text(num); // 未读个数
				$("#"+id).find(".corner").addClass("cornershow"); // 显示
			} else {
				$("#"+id).find(".corner").text("0"); // 未读个数
				$("#"+id).find(".corner").removeClass("cornershow"); // 隐藏
			}
			
			// 点击事件
			$("#"+id).unbind("click").click(function(){ openView($(this).attr("id")); });
		}
	}
}
function openView(appId){
	if(idToViewMap[appId]){
		var paraMap = {
			"viewid" : idToViewMap[appId],
			"iskeep" : "true"
		};
		if(appId=='A0A007'){
			paraMap["url"] = getCtxValue("App.maserver");
			paraMap["groupid"] = getCtxValue("App.groupid");
			paraMap["usrid"] = getCtxValue("App.userid");
			paraMap["username"] = getCtxValue("App.user");
			paraMap["password"] = getCtxValue("App.password");
			paraMap["appid"] = getCtxValue("App.applicationid");
		}
        
        if(appId == 'A0A00X') {
            paraMap["ismail"]="Y";
        }else {
            paraMap["ismail"]="N";
        }
        
		$umview.open(paraMap);
	}
}
function getCtxValue(key, defaultValue){
	var value = multiLangMap[key];
	if(value){
		return value;
	}
	
	multiLangMap[key] = $ctx.getValue("#{"+key+"}", defaultValue)
	return multiLangMap[key] || defaultValue;
}
