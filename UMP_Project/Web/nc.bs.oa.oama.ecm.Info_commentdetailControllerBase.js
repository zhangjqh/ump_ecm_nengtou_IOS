Type.registerNamespace('nc.bs.oa.oama.ecm.Info_commentdetailControllerBase');
nc.bs.oa.oama.ecm.Info_commentdetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Info_commentdetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        label0_onclick : [this.label0_onclick],
        returnList : [this.returnList],
        dataload : [this.dataload]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Info_commentdetailController){
        this._userController = new nc.bs.oa.oama.ecm.Info_commentdetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Info_commentdetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oneinfoEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.oneinfoEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.oneinfo != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.oneinfo(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$label0_onclick(json){
    try{
        _$sys.callAction('label0_onclick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$returnList(json){
    try{
        _$sys.callAction('returnList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$dataload(json){
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
        if(this._userController.dataload){
            this._userController.dataload($context);
        }else{
            alert("找不到方法[dataload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.Info_commentdetailControllerBase.prototype = {
    label0_onclick : nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$label0_onclick,
    returnList : nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$returnList,
    dataload : nc$bs$oa$oama$ecm$Info_commentdetailControllerBase$dataload
};
nc.bs.oa.oama.ecm.Info_commentdetailControllerBase.registerClass('nc.bs.oa.oama.ecm.Info_commentdetailControllerBase',UMP.UI.Mvc.Controller);
