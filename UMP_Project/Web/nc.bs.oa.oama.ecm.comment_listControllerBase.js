Type.registerNamespace('nc.bs.oa.oama.ecm.comment_listControllerBase');
nc.bs.oa.oama.ecm.comment_listControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.comment_listControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        doSubmitComment : [this.doSubmitComment],
        UMonUnload : [this.UMonUnload],
        UMonComplete : [this.UMonComplete],
        showSuccessDialog : [this.showSuccessDialog],
        UMonDataBinding : [this.UMonDataBinding],
        commentsLoadNextPage : [this.commentsLoadNextPage],
        refreshList : [this.refreshList],
        gotoDetail : [this.gotoDetail],
        toClose : [this.toClose],
        errorCallback : [this.errorCallback],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        alertMsg : [this.alertMsg],
        toCommentDetail : [this.toCommentDetail],
        commentsLoadFirstPage : [this.commentsLoadFirstPage]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.comment_listController){
        this._userController = new nc.bs.oa.oama.ecm.comment_listController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.comment_listController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$doSubmitComment(json){
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
        if(this._userController.doSubmitComment){
            this._userController.doSubmitComment($context);
        }else{
            alert("找不到方法[doSubmitComment]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$UMonUnload(json){
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
        if(this._userController.UMonUnload){
            this._userController.UMonUnload($context);
        }else{
            alert("找不到方法[UMonUnload]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$UMonComplete(json){
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
        if(this._userController.UMonComplete){
            this._userController.UMonComplete($context);
        }else{
            alert("找不到方法[UMonComplete]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$showSuccessDialog(json){
    try{
        _$sys.callAction('showSuccessDialog');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$comment_listControllerBase$UMonDataBinding(json){
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
        if(this._userController.UMonDataBinding){
            this._userController.UMonDataBinding($context);
        }else{
            alert("找不到方法[UMonDataBinding]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$commentsLoadNextPage(json){
    try{
        _$sys.callAction('commentsLoadNextPage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$comment_listControllerBase$refreshList(json){
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
        if(this._userController.refreshList){
            this._userController.refreshList($context);
        }else{
            alert("找不到方法[refreshList]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$gotoDetail(json){
    try{
        _$sys.callAction('gotoDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$comment_listControllerBase$toClose(json){
    try{
        _$sys.callAction('toClose');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$comment_listControllerBase$errorCallback(json){
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
        if(this._userController.errorCallback){
            this._userController.errorCallback($context);
        }else{
            alert("找不到方法[errorCallback]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$UMonInit(json){
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
        if(this._userController.UMonInit){
            this._userController.UMonInit($context);
        }else{
            alert("找不到方法[UMonInit]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$UMonLoad(json){
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
        if(this._userController.UMonLoad){
            this._userController.UMonLoad($context);
        }else{
            alert("找不到方法[UMonLoad]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$alertMsg(json){
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
        if(this._userController.alertMsg){
            this._userController.alertMsg($context);
        }else{
            alert("找不到方法[alertMsg]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$comment_listControllerBase$toCommentDetail(json){
    try{
        _$sys.callAction('toCommentDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$comment_listControllerBase$commentsLoadFirstPage(json){
    try{
        _$sys.callAction('commentsLoadFirstPage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.comment_listControllerBase.prototype = {
    doSubmitComment : nc$bs$oa$oama$ecm$comment_listControllerBase$doSubmitComment,
    UMonUnload : nc$bs$oa$oama$ecm$comment_listControllerBase$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$comment_listControllerBase$UMonComplete,
    showSuccessDialog : nc$bs$oa$oama$ecm$comment_listControllerBase$showSuccessDialog,
    UMonDataBinding : nc$bs$oa$oama$ecm$comment_listControllerBase$UMonDataBinding,
    commentsLoadNextPage : nc$bs$oa$oama$ecm$comment_listControllerBase$commentsLoadNextPage,
    refreshList : nc$bs$oa$oama$ecm$comment_listControllerBase$refreshList,
    gotoDetail : nc$bs$oa$oama$ecm$comment_listControllerBase$gotoDetail,
    toClose : nc$bs$oa$oama$ecm$comment_listControllerBase$toClose,
    errorCallback : nc$bs$oa$oama$ecm$comment_listControllerBase$errorCallback,
    UMonInit : nc$bs$oa$oama$ecm$comment_listControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$comment_listControllerBase$UMonLoad,
    alertMsg : nc$bs$oa$oama$ecm$comment_listControllerBase$alertMsg,
    toCommentDetail : nc$bs$oa$oama$ecm$comment_listControllerBase$toCommentDetail,
    commentsLoadFirstPage : nc$bs$oa$oama$ecm$comment_listControllerBase$commentsLoadFirstPage
};
nc.bs.oa.oama.ecm.comment_listControllerBase.registerClass('nc.bs.oa.oama.ecm.comment_listControllerBase',UMP.UI.Mvc.Controller);
