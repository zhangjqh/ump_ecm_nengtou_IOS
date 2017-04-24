Type.registerNamespace('nc.bs.oa.oama.ecm.ArchiveScanControllerBase');
nc.bs.oa.oama.ecm.ArchiveScanControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.ArchiveScanControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onDataLoad : [this.onDataLoad],
        onReturnBtnClick : [this.onReturnBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.ArchiveScanController){
        this._userController = new nc.bs.oa.oama.ecm.ArchiveScanController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.ArchiveScanController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$ArchiveScanControllerBase$onDataLoad(json){
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
function nc$bs$oa$oama$ecm$ArchiveScanControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.ArchiveScanControllerBase.prototype = {
    onDataLoad : nc$bs$oa$oama$ecm$ArchiveScanControllerBase$onDataLoad,
    onReturnBtnClick : nc$bs$oa$oama$ecm$ArchiveScanControllerBase$onReturnBtnClick
};
nc.bs.oa.oama.ecm.ArchiveScanControllerBase.registerClass('nc.bs.oa.oama.ecm.ArchiveScanControllerBase',UMP.UI.Mvc.Controller);
