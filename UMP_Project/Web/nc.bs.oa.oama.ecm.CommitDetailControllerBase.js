Type.registerNamespace('nc.bs.oa.oama.ecm.CommitDetailControllerBase');
nc.bs.oa.oama.ecm.CommitDetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.CommitDetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onDataLoad : [this.onDataLoad],
        onReturnBtnClick : [this.onReturnBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.CommitDetailController){
        this._userController = new nc.bs.oa.oama.ecm.CommitDetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.CommitDetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[CommitDetail] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$CommitDetailControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$CommitDetailControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.CommitDetailControllerBase.prototype = {
    onDataLoad : nc$bs$oa$oama$ecm$CommitDetailControllerBase$onDataLoad,
    onReturnBtnClick : nc$bs$oa$oama$ecm$CommitDetailControllerBase$onReturnBtnClick
};
nc.bs.oa.oama.ecm.CommitDetailControllerBase.registerClass('nc.bs.oa.oama.ecm.CommitDetailControllerBase',UMP.UI.Mvc.Controller);
