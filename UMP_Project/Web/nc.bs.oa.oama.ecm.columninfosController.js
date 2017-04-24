Type.registerNamespace('nc.bs.oa.oama.ecm.columninfosController');
nc.bs.oa.oama.ecm.columninfosController = function() {

}
function nc$bs$oa$oama$ecm$columninfosController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$UMonInit(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$UMonLoad(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$UMonUnload(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$UMonComplete(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$UMonDataBinding(ctx){
}
function nc$bs$oa$oama$ecm$columninfosController$toInformation(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["inforrow"]);
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
			"callback": "columnInfoFirstPage"
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
			"callback": "columnInfoFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(wordargs));
		//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_word',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    } 
    else
    {
    	 var picargs = {
			"viewid":"nc.bs.oa.oama.ecm.Info_img",
			"iskeep":"true",
			
			"screenw": screenw,
			"screenh": screenh,
			"infoid": infoid,
			"ts": ts,
			"callback": "columnInfoFirstPage"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(picargs));
    	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_img',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    }
    
    ctx.dispose();
}
nc.bs.oa.oama.ecm.columninfosController.prototype = {
    initialize : nc$bs$oa$oama$ecm$columninfosController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$columninfosController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$columninfosController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$columninfosController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$columninfosController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$columninfosController$UMonDataBinding,
    toInformation : nc$bs$oa$oama$ecm$columninfosController$toInformation
};
nc.bs.oa.oama.ecm.columninfosController.registerClass('nc.bs.oa.oama.ecm.columninfosController');
