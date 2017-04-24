Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_MainController');
nc.bs.oa.oama.ecm.Ecm_MainController = function() {}
var count = 0;
function nc$bs$oa$oama$ecm$Ecm_MainController$initialize(ctx){}
function nc$bs$oa$oama$ecm$Ecm_MainController$toHome(ctx){
	ctx.dispose();
}

function nc$bs$oa$oama$ecm$Ecm_MainController$initMainView(ctx){
	ctx.dispose();
	if(count<1){
		count++;
	}
	if(count>=1){
	    // 工具栏初始化
	    UM_NativeCall.callService("UMJS.setProperty","{id:'widget0_imagebutton0',checked:'true'}");
	    _$sys.callAction('getAppList');
	}
}

nc.bs.oa.oama.ecm.Ecm_MainController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_MainController$initialize,
    initMainView : nc$bs$oa$oama$ecm$Ecm_MainController$initMainView,
    toHome : nc$bs$oa$oama$ecm$Ecm_MainController$toHome
};
nc.bs.oa.oama.ecm.Ecm_MainController.registerClass('nc.bs.oa.oama.ecm.Ecm_MainController');

