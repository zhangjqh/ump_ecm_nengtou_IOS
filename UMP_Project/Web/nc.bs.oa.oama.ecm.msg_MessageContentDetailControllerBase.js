Type.registerNamespace('nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase');
nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        label2_onclick : [this.label2_onclick],
        GoBack : [this.GoBack],
        OnLoadMsgDetail : [this.OnLoadMsgDetail],
        OpenAttachmentList4View : [this.OpenAttachmentList4View]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.msg_MessageContentDetailController){
        this._userController = new nc.bs.oa.oama.ecm.msg_MessageContentDetailController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.msg_MessageContentDetailController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_MessageDetailEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.msg_MessageDetailEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_MessageDetail != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.msg_MessageDetail(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$label2_onclick(json){
    try{
        _$sys.callAction('label2_onclick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$GoBack(json){
    try{
        _$sys.callAction('GoBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$OnLoadMsgDetail(json){
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
        if(this._userController.OnLoadMsgDetail){
            this._userController.OnLoadMsgDetail($context);
        }else{
            alert("找不到方法[OnLoadMsgDetail]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$OpenAttachmentList4View(json){
    try{
        _$sys.callAction('OpenAttachmentList4View');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase.prototype = {
    label2_onclick : nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$label2_onclick,
    GoBack : nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$GoBack,
    OnLoadMsgDetail : nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$OnLoadMsgDetail,
    OpenAttachmentList4View : nc$bs$oa$oama$ecm$msg_MessageContentDetailControllerBase$OpenAttachmentList4View
};
nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase.registerClass('nc.bs.oa.oama.ecm.msg_MessageContentDetailControllerBase',UMP.UI.Mvc.Controller);
