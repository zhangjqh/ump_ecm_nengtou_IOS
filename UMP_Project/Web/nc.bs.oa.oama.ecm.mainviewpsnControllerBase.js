Type.registerNamespace('nc.bs.oa.oama.ecm.mainviewpsnControllerBase');
nc.bs.oa.oama.ecm.mainviewpsnControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.mainviewpsnControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        getnextpage : [this.getnextpage],
        loginAction : [this.loginAction],
        UMonUnload : [this.UMonUnload],
        closeAction : [this.closeAction],
        personalbtn : [this.personalbtn],
        UMonComplete : [this.UMonComplete],
        viewbtn : [this.viewbtn],
        mypublish : [this.mypublish],
        getfirstpage : [this.getfirstpage],
        listviewonload : [this.listviewonload],
        addtask : [this.addtask],
        UMonDataBinding : [this.UMonDataBinding],
        initwidget : [this.initwidget],
        mytask : [this.mytask],
        setSelector : [this.setSelector],
        UMonInit : [this.UMonInit],
        UMonLoad : [this.UMonLoad],
        responsebtn : [this.responsebtn],
        showItemDetail : [this.showItemDetail],
        crowbtn : [this.crowbtn],
        returnhome : [this.returnhome]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.mainviewpsnController){
        this._userController = new nc.bs.oa.oama.ecm.mainviewpsnController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.mainviewpsnController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.listviewEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.listviewEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.listview != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.listview(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$getnextpage(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$loginAction(json){
    try{
        _$sys.callAction('loginAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonUnload(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$closeAction(json){
    try{
        _$sys.callAction('closeAction');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$personalbtn(json){
    try{
        _$sys.callAction('personalbtn');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonComplete(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$viewbtn(json){
    try{
        _$sys.callAction('viewbtn');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$mypublish(json){
    try{
        _$sys.callAction('mypublish');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$getfirstpage(json){
    try{
        _$sys.callAction('getfirstpage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$listviewonload(json){
    try{
        _$sys.callAction('listviewonload');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$addtask(json){
    try{
        _$sys.callAction('addtask');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonDataBinding(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$initwidget(json){
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
        if(this._userController.initwidget){
            this._userController.initwidget($context);
        }else{
            alert("找不到方法[initwidget]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$mytask(json){
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
        if(this._userController.mytask){
            this._userController.mytask($context);
        }else{
            alert("找不到方法[mytask]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$setSelector(json){
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
        if(this._userController.setSelector){
            this._userController.setSelector($context);
        }else{
            alert("找不到方法[setSelector]/n，请检查JSController代码是否有语法错误，导致JS未能正确加载");
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonInit(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonLoad(json){
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
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$responsebtn(json){
    try{
        _$sys.callAction('responsebtn');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$showItemDetail(json){
    try{
        _$sys.callAction('showItemDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$crowbtn(json){
    try{
        _$sys.callAction('crowbtn');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$mainviewpsnControllerBase$returnhome(json){
    try{
        _$sys.callAction('returnhome');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.mainviewpsnControllerBase.prototype = {
    getnextpage : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$getnextpage,
    loginAction : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$loginAction,
    UMonUnload : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonUnload,
    closeAction : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$closeAction,
    personalbtn : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$personalbtn,
    UMonComplete : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonComplete,
    viewbtn : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$viewbtn,
    mypublish : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$mypublish,
    getfirstpage : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$getfirstpage,
    listviewonload : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$listviewonload,
    addtask : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$addtask,
    UMonDataBinding : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonDataBinding,
    initwidget : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$initwidget,
    mytask : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$mytask,
    setSelector : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$setSelector,
    UMonInit : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$UMonLoad,
    responsebtn : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$responsebtn,
    showItemDetail : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$showItemDetail,
    crowbtn : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$crowbtn,
    returnhome : nc$bs$oa$oama$ecm$mainviewpsnControllerBase$returnhome
};
nc.bs.oa.oama.ecm.mainviewpsnControllerBase.registerClass('nc.bs.oa.oama.ecm.mainviewpsnControllerBase',UMP.UI.Mvc.Controller);
