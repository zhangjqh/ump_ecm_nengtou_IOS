Type.registerNamespace('nc.bs.oa.oama.ecm.TemplateListControllerBase');
nc.bs.oa.oama.ecm.TemplateListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.TemplateListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        gotoEdit : [this.gotoEdit],
        onDataLoad : [this.onDataLoad],
        onItemClick : [this.onItemClick],
        onReturnBtnClick : [this.onReturnBtnClick],
        loadCallback : [this.loadCallback]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.TemplateListController){
        this._userController = new nc.bs.oa.oama.ecm.TemplateListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.TemplateListController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.TemplateListEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.TemplateListEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.TemplateList != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.TemplateList(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$TemplateListControllerBase$gotoEdit(json){
    try{
        _$sys.callAction('gotoEdit');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$TemplateListControllerBase$onDataLoad(json){
    try{
        _$sys.callAction('onDataLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$TemplateListControllerBase$onItemClick(json){
    try{
        _$sys.callAction('onItemClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$TemplateListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$TemplateListControllerBase$loadCallback(json){
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
        if(this._userController.loadCallback){
            this._userController.loadCallback($context);
        }else{
            alert("找不到方法[loadCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.TemplateListControllerBase.prototype = {
    gotoEdit : nc$bs$oa$oama$ecm$TemplateListControllerBase$gotoEdit,
    onDataLoad : nc$bs$oa$oama$ecm$TemplateListControllerBase$onDataLoad,
    onItemClick : nc$bs$oa$oama$ecm$TemplateListControllerBase$onItemClick,
    onReturnBtnClick : nc$bs$oa$oama$ecm$TemplateListControllerBase$onReturnBtnClick,
    loadCallback : nc$bs$oa$oama$ecm$TemplateListControllerBase$loadCallback
};
nc.bs.oa.oama.ecm.TemplateListControllerBase.registerClass('nc.bs.oa.oama.ecm.TemplateListControllerBase',UMP.UI.Mvc.Controller);
