Type.registerNamespace('nc.bs.oa.oama.ecm.searchinfosController');
nc.bs.oa.oama.ecm.searchinfosController = function() {

}
function nc$bs$oa$oama$ecm$searchinfosController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$doSearchFirstPage(ctx){
   // var condition = ctx.param("searchtext");
    var condition = UM_NativeCall.callService("UMJS.getProperty","{id:'search0',propertyName:'value'}",true); 
//    if(condition == ""){
//    	alert("请输入查询条件。");
//    	return;
//    }
    var args = {
    	"viewid":"nc.bs.oa.oainf.ma.infopublish.OainflistExtendController",
    	"action":"InfoSearchFirstPage",
    	"startline":"1",
    	"count":"25",
    	"condition":condition
    }
    UM_NativeCall.callService("UMList.getFirstPage",$jsonToString(args));
}
function nc$bs$oa$oama$ecm$searchinfosController$doSearchNextPage(ctx){
   // var condition = ctx.param("searchtext");
    var condition = UM_NativeCall.callService("UMJS.getProperty","{id:'search0',propertyName:'value'}",true);
//    if(condition == ""){
//    	alert("请输入查询条件。");
//    	return;
//    }
    var args = {
    	"viewid":"nc.bs.oa.oainf.ma.infopublish.OainflistExtendController",
    	"action":"InfoSearchNextPage",
    	"condition":condition,
    	"autodatabinding":"true",
    	"listid":"listview0"
    }
    UM_NativeCall.callService("UMList.getNextPage",$jsonToString(args));
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$searchinfosController$UMonDataBinding(ctx){
}
function nc$bs$oa$oama$ecm$searchinfosController$toInformation(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var type = row["infostyletype"];//1\word,2\img,3\html
	var infoid = row["infoid"];
	var ts = row["ts"];
	
	var screenw = "";
	var screenh = "";
	var devinfo = UM_NativeCall.callService("UMDevice.getDeviceInfo", "", true);
	
	eval("var deviceJson = "+devinfo); 
	if(deviceJson && deviceJson["screen"]){
		screenw = deviceJson["screen"]["width"];
		screenh = deviceJson["screen"]["height"];
	}

    if(type=='3'){   	
    	var htmlargs = {
			"viewid":"nc.bs.oa.oama.ecm.Info_text",
			"iskeep":"true",
			
			"screenw": screenw,
			"screenh": screenh,
			"infoid": infoid,
			"ts": ts,
			"callback": "doSearchFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(htmlargs));
    	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_text',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    } 
    else if(type=='1')
    {	
    	 var wordargs = {
			"viewid":"nc.bs.oa.oama.ecm.Info_word",
			"iskeep":"true",
			
			"screenw": screenw,
			"screenh": screenh,
			"infoid": infoid,
			"ts": ts,
			"callback": "doSearchFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(wordargs));
		//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_word',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    } 
    else if(type=='2')
    {
    	 var picargs = {
			"viewid":"nc.bs.oa.oama.ecm.Info_img",
			"iskeep":"true",
			
			"screenw": screenw,
			"screenh": screenh,
			"infoid": infoid,
			"ts": ts,
			"callback": "doSearchFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(picargs));
    	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_img',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    }
     else if(type=='4')
    {
    	 var picargs = {
			"viewid":"nc.bs.oa.oama.ecm.Info_url",
			"iskeep":"true",
			
			"screenw": screenw,
			"screenh": screenh,
			"infoid": infoid,
			"ts": ts,
			"callback": "doSearchFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(picargs));
    	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_img',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    }
    
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$infosController$exchangeToolbar(ctx){
	$controls.set("widget0_imagebutton1","checked","true");
}
nc.bs.oa.oama.ecm.searchinfosController.prototype = {
    initialize : nc$bs$oa$oama$ecm$searchinfosController$initialize,
    exchangeToolbar : nc$bs$oa$oama$ecm$infosController$exchangeToolbar,
    UMonInit : nc$bs$oa$oama$ecm$searchinfosController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$searchinfosController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$searchinfosController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$searchinfosController$UMonComplete,
    doSearchFirstPage : nc$bs$oa$oama$ecm$searchinfosController$doSearchFirstPage,
    UMonDataBinding : nc$bs$oa$oama$ecm$searchinfosController$UMonDataBinding,
    toInformation : nc$bs$oa$oama$ecm$searchinfosController$toInformation,
    doSearchNextPage : nc$bs$oa$oama$ecm$searchinfosController$doSearchNextPage
};
nc.bs.oa.oama.ecm.searchinfosController.registerClass('nc.bs.oa.oama.ecm.searchinfosController');
