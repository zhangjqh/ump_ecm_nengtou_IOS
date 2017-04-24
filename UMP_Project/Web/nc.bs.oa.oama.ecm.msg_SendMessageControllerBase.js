Type.registerNamespace('nc.bs.oa.oama.ecm.msg_SendMessageControllerBase');
nc.bs.oa.oama.ecm.msg_SendMessageControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.msg_SendMessageControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        label2_onclick : [this.label2_onclick],
        GoBack : [this.GoBack],
        onCloseClick : [this.onCloseClick],
        onLoadSendType : [this.onLoadSendType],
        ExcuteResultDialog : [this.ExcuteResultDialog],
        OnClickCancel : [this.OnClickCancel],
        selectedCallback : [this.selectedCallback],
        SendMessage : [this.SendMessage],
        beforeCancel : [this.beforeCancel],
        OpenRecipientList : [this.OpenRecipientList],
        panelemail_onload : [this.panelemail_onload],
        errorDialog : [this.errorDialog],
        AttachmentCallback : [this.AttachmentCallback],
        OpenAttachmentEditList : [this.OpenAttachmentEditList],
        sendTypeCallback : [this.sendTypeCallback]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.msg_SendMessageController){
        this._userController = new nc.bs.oa.oama.ecm.msg_SendMessageController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.msg_SendMessageController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessageEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.msg_CreateMessageEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessage != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.msg_CreateMessage(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$label2_onclick(json){
    try{
        _$sys.callAction('label2_onclick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$GoBack(json){
    try{
        _$sys.callAction('GoBack');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$onCloseClick(json){
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
        if(this._userController.onCloseClick){
            this._userController.onCloseClick($context);
        }else{
            alert("找不到方法[onCloseClick]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$onLoadSendType(json){
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
        if(this._userController.onLoadSendType){
            this._userController.onLoadSendType($context);
        }else{
            alert("找不到方法[onLoadSendType]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$ExcuteResultDialog(json){
    try{
        _$sys.callAction('ExcuteResultDialog');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OnClickCancel(json){
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
        if(this._userController.OnClickCancel){
            this._userController.OnClickCancel($context);
        }else{
            alert("找不到方法[OnClickCancel]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$selectedCallback(json){
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
        if(this._userController.selectedCallback){
            this._userController.selectedCallback($context);
        }else{
            alert("找不到方法[selectedCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$SendMessage(json){
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
        if(this._userController.SendMessage){
            this._userController.SendMessage($context);
        }else{
            alert("找不到方法[SendMessage]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$beforeCancel(json){
    try{
        _$sys.callAction('beforeCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OpenRecipientList(json){
    try{
        _$sys.callAction('OpenRecipientList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$panelemail_onload(json){
    try{
        _$sys.callAction('panelemail_onload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$errorDialog(json){
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
        if(this._userController.errorDialog){
            this._userController.errorDialog($context);
        }else{
            alert("找不到方法[errorDialog]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$AttachmentCallback(json){
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
        if(this._userController.AttachmentCallback){
            this._userController.AttachmentCallback($context);
        }else{
            alert("找不到方法[AttachmentCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OpenAttachmentEditList(json){
    try{
        _$sys.callAction('OpenAttachmentEditList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$sendTypeCallback(json){
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
        if(this._userController.sendTypeCallback){
            this._userController.sendTypeCallback($context);
        }else{
            alert("找不到方法[sendTypeCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
nc.bs.oa.oama.ecm.msg_SendMessageControllerBase.prototype = {
    label2_onclick : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$label2_onclick,
    GoBack : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$GoBack,
    onCloseClick : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$onCloseClick,
    onLoadSendType : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$onLoadSendType,
    ExcuteResultDialog : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$ExcuteResultDialog,
    OnClickCancel : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OnClickCancel,
    selectedCallback : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$selectedCallback,
    SendMessage : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$SendMessage,
    beforeCancel : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$beforeCancel,
    OpenRecipientList : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OpenRecipientList,
    panelemail_onload : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$panelemail_onload,
    errorDialog : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$errorDialog,
    AttachmentCallback : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$AttachmentCallback,
    OpenAttachmentEditList : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$OpenAttachmentEditList,
    sendTypeCallback : nc$bs$oa$oama$ecm$msg_SendMessageControllerBase$sendTypeCallback
};
nc.bs.oa.oama.ecm.msg_SendMessageControllerBase.registerClass('nc.bs.oa.oama.ecm.msg_SendMessageControllerBase',UMP.UI.Mvc.Controller);
