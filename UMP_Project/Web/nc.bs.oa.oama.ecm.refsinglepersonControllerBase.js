Type.registerNamespace('nc.bs.oa.oama.ecm.refsinglepersonControllerBase');
nc.bs.oa.oama.ecm.refsinglepersonControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.refsinglepersonControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        getnextpage : [this.getnextpage],
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        searchpsnbykey : [this.searchpsnbykey],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.refsinglepersonController){
        this._userController = new nc.bs.oa.oama.ecm.refsinglepersonController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.refsinglepersonController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.responserefEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.responserefEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.responseref != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.responseref(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$refsinglepersonControllerBase$getnextpage(json){
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
        if(this._userController.getnextpage){
            this._userController.getnextpage($context);
        }else{
            alert("找不到方法[getnextpage]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$refsinglepersonControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$refsinglepersonControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$refsinglepersonControllerBase$searchpsnbykey(json){
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
        if(this._userController.searchpsnbykey){
            this._userController.searchpsnbykey($context);
        }else{
            alert("找不到方法[searchpsnbykey]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$refsinglepersonControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.refsinglepersonControllerBase.prototype = {
    getnextpage : nc$bs$oa$oama$ecm$refsinglepersonControllerBase$getnextpage,
    onClickListRow : nc$bs$oa$oama$ecm$refsinglepersonControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$refsinglepersonControllerBase$load,
    searchpsnbykey : nc$bs$oa$oama$ecm$refsinglepersonControllerBase$searchpsnbykey,
    onCancel : nc$bs$oa$oama$ecm$refsinglepersonControllerBase$onCancel
};
nc.bs.oa.oama.ecm.refsinglepersonControllerBase.registerClass('nc.bs.oa.oama.ecm.refsinglepersonControllerBase',UMP.UI.Mvc.Controller);
