Type.registerNamespace('nc.bs.oa.oama.ecm.infosController');
nc.bs.oa.oama.ecm.infosController = function() {

}
function nc$bs$oa$oama$ecm$infosController$initialize(ctx){
}
function nc$bs$oa$oama$ecm$infosController$exchangeToolbar(ctx){
	$controls.set("widget0_imagebutton0","checked","true");
	 _$sys.callAction('nextImgLoad');
}
function nc$bs$oa$oama$ecm$infosController$toInformation(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var type = row["infostyletype"];//1\word,2\img,3\html,4\link
	var infoid = row["infoid"];
	var ts = row["ts"];
	
	var screenw = "";
	var screenh = "";
//	if(CurrentEnvironment.DeviceType==CurrentEnvironment.DeviceIOS){
//		screenw = "640";
//		screenh = "960";
//	}
//	else if(CurrentEnvironment.DeviceType == CurrentEnvironment.DeviceAndroid) {
   		
	   	var devinfo = UM_NativeCall.callService("UMDevice.getDeviceInfo", "", true);
		
		eval("var deviceJson = "+devinfo); 
		if(deviceJson && deviceJson["screen"]){
			screenw = deviceJson["screen"]["width"];
			screenh = deviceJson["screen"]["height"];
		}
//  }
	

	
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
nc.bs.oa.oama.ecm.infosController.prototype = {
    initialize : nc$bs$oa$oama$ecm$infosController$initialize,
    exchangeToolbar : nc$bs$oa$oama$ecm$infosController$exchangeToolbar,
    toInformation : nc$bs$oa$oama$ecm$infosController$toInformation
};
nc.bs.oa.oama.ecm.infosController.registerClass('nc.bs.oa.oama.ecm.infosController');
