Type.registerNamespace('nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase');
nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        detailOnload : [this.detailOnload],
        onBack : [this.onBack]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.shareschedulerdetailController){
        this._userController = new nc.bs.oa.oama.ecm.shareschedulerdetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.shareschedulerdetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.eventDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.eventDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.eventDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$shareschedulerdetailControllerBase$detailOnload(json){
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
        if(this._userController.detailOnload){
            this._userController.detailOnload($context);
        }else{
            alert("找不到方法[detailOnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$shareschedulerdetailControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase.prototype = {
    detailOnload : nc$bs$oa$oama$ecm$shareschedulerdetailControllerBase$detailOnload,
    onBack : nc$bs$oa$oama$ecm$shareschedulerdetailControllerBase$onBack
};
nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase.registerClass('nc.bs.oa.oama.ecm.shareschedulerdetailControllerBase',UMP.UI.Mvc.Controller);
