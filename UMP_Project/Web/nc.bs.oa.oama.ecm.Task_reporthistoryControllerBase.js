Type.registerNamespace('nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase');
nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        attachmentlist : [this.attachmentlist],
        closehistory : [this.closehistory],
        progressbar0_onload : [this.progressbar0_onload],
        loadreporthistory : [this.loadreporthistory],
        listviewdefine0_onload : [this.listviewdefine0_onload],
        panel2_onload : [this.panel2_onload]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Task_reporthistoryController){
        this._userController = new nc.bs.oa.oama.ecm.Task_reporthistoryController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Task_reporthistoryController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.reporthistestEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.reporthistestEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.reporthistest != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.reporthistest(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$attachmentlist(json){
    try{
        _$sys.callAction('attachmentlist');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$closehistory(json){
    try{
        _$sys.callAction('closehistory');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$progressbar0_onload(json){
    try{
        _$sys.callAction('progressbar0_onload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$loadreporthistory(json){
    try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(this._userController.initialize)
            this._userController.initialize();
        if(this._userController.loadreporthistory){
            this._userController.loadreporthistory($context);
        }else{
            alert("找不到方法[loadreporthistory]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
        }
    	
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        if(e.stack){
            alert(e.stack);
        }else{
            alert(e.name + ":" + e.message);
        }
    }
    return json;
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$listviewdefine0_onload(json){
    try{
        _$sys.callAction('listviewdefine0_onload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$panel2_onload(json){
    try{
        _$sys.callAction('panel2_onload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase.prototype = {
    attachmentlist : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$attachmentlist,
    closehistory : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$closehistory,
    progressbar0_onload : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$progressbar0_onload,
    loadreporthistory : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$loadreporthistory,
    listviewdefine0_onload : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$listviewdefine0_onload,
    panel2_onload : nc$bs$oa$oama$ecm$Task_reporthistoryControllerBase$panel2_onload
};
nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase.registerClass('nc.bs.oa.oama.ecm.Task_reporthistoryControllerBase',UMP.UI.Mvc.Controller);
