Type.registerNamespace('nc.bs.oa.oama.ecm.pushtimeControllerBase');
nc.bs.oa.oama.ecm.pushtimeControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.pushtimeControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        timeOnload : [this.timeOnload],
        onSave : [this.onSave],
        onBack : [this.onBack]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.pushtimeController){
        this._userController = new nc.bs.oa.oama.ecm.pushtimeController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.pushtimeController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.remindTimeEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.remindTimeEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.remindTime != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.remindTime(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$pushtimeControllerBase$timeOnload(json){
    try{
        _$sys.callAction('timeOnload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$pushtimeControllerBase$onSave(json){
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
        if(this._userController.onSave){
            this._userController.onSave($context);
        }else{
            alert("找不到方法[onSave]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$pushtimeControllerBase$onBack(json){
    try{
        _$sys.callAction('onBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.pushtimeControllerBase.prototype = {
    timeOnload : nc$bs$oa$oama$ecm$pushtimeControllerBase$timeOnload,
    onSave : nc$bs$oa$oama$ecm$pushtimeControllerBase$onSave,
    onBack : nc$bs$oa$oama$ecm$pushtimeControllerBase$onBack
};
nc.bs.oa.oama.ecm.pushtimeControllerBase.registerClass('nc.bs.oa.oama.ecm.pushtimeControllerBase',UMP.UI.Mvc.Controller);
