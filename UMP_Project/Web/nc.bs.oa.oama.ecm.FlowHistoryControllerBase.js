Type.registerNamespace('nc.bs.oa.oama.ecm.FlowHistoryControllerBase');
nc.bs.oa.oama.ecm.FlowHistoryControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.FlowHistoryControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        gotoPerson : [this.gotoPerson],
        onInitactorClick : [this.onInitactorClick],
        onDataLoad : [this.onDataLoad],
        showTransCommit : [this.showTransCommit],
        showHandWrite : [this.showHandWrite],
        onTransactorClick : [this.onTransactorClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        showInitCommit : [this.showInitCommit]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.FlowHistoryController){
        this._userController = new nc.bs.oa.oama.ecm.FlowHistoryController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.FlowHistoryController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.WorkDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.WorkDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.WorkDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$gotoPerson(json){
    try{
        _$sys.callAction('gotoPerson');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onInitactorClick(json){
    try{
        _$sys.callAction('onInitactorClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onDataLoad(json){
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
        if(this._userController.onDataLoad){
            this._userController.onDataLoad($context);
        }else{
            alert("找不到方法[onDataLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showTransCommit(json){
    try{
        _$sys.callAction('showTransCommit');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showHandWrite(json){
    try{
        _$sys.callAction('showHandWrite');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onTransactorClick(json){
    try{
        _$sys.callAction('onTransactorClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showInitCommit(json){
    try{
        _$sys.callAction('showInitCommit');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.FlowHistoryControllerBase.prototype = {
    gotoPerson : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$gotoPerson,
    onInitactorClick : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onInitactorClick,
    onDataLoad : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onDataLoad,
    showTransCommit : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showTransCommit,
    showHandWrite : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showHandWrite,
    onTransactorClick : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onTransactorClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$onReturnBtnClick,
    showInitCommit : nc$bs$oa$oama$ecm$FlowHistoryControllerBase$showInitCommit
};
nc.bs.oa.oama.ecm.FlowHistoryControllerBase.registerClass('nc.bs.oa.oama.ecm.FlowHistoryControllerBase',UMP.UI.Mvc.Controller);
