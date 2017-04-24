Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase');
nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        qrcodecontext : [this.qrcodecontext],
        closewin : [this.closewin]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_QrcodecontextController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_QrcodecontextController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_QrcodecontextController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.qrcodeEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.qrcodeEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.qrcode != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.qrcode(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Ecm_QrcodecontextControllerBase$qrcodecontext(json){
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
        if(this._userController.qrcodecontext){
            this._userController.qrcodecontext($context);
        }else{
            alert("找不到方法[qrcodecontext]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$Ecm_QrcodecontextControllerBase$closewin(json){
    try{
        _$sys.callAction('closewin');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase.prototype = {
    qrcodecontext : nc$bs$oa$oama$ecm$Ecm_QrcodecontextControllerBase$qrcodecontext,
    closewin : nc$bs$oa$oama$ecm$Ecm_QrcodecontextControllerBase$closewin
};
nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_QrcodecontextControllerBase',UMP.UI.Mvc.Controller);
