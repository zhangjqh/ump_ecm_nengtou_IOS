Type.registerNamespace('nc.bs.oa.oama.ecm.groupinfosController');
nc.bs.oa.oama.ecm.groupinfosController = function() {

}
function nc$bs$oa$oama$ecm$groupinfosController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$groupinfosController$toInformation(ctx){
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
			"callback": "exchangeToolbar"
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
			"callback": "exchangeToolbar"
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
			"callback": "exchangeToolbar"
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
			"callback": "exchangeToolbar"
		}
		UM_NativeCall.callService("UMView.open",$jsonToString(picargs));
    	//UM_NativeCall.callService("UMView.open","{viewid:'nc.bs.oa.oama.ecm.Info_img',iskeep:'true',screenw:'" + screenw + "',screenh:'" + screenh + "',infoid:'"+infoid+"',ts:'" + ts + "'}");
    }
    
    ctx.dispose();
}
function nc$bs$oa$oama$ecm$infosController$exchangeToolbar(ctx){
	$controls.set("widget0_imagebutton2","checked","true");
	 _$sys.callAction('groupInfoDataLoad');
}
function nc$bs$oa$oama$ecm$groupinfosController$loadError(ctx){
}
nc.bs.oa.oama.ecm.groupinfosController.prototype = {
    initialize : nc$bs$oa$oama$ecm$groupinfosController$initialize,
    exchangeToolbar : nc$bs$oa$oama$ecm$infosController$exchangeToolbar,
    toInformation : nc$bs$oa$oama$ecm$groupinfosController$toInformation,
    loadError : nc$bs$oa$oama$ecm$groupinfosController$loadError
};
nc.bs.oa.oama.ecm.groupinfosController.registerClass('nc.bs.oa.oama.ecm.groupinfosController');
