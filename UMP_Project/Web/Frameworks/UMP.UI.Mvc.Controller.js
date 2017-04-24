//=================================================== UMP.UI.Mvc.Router =========================================================
Type.registerNamespace('UMP.UI.Mvc');
UMP.UI.Mvc.Router = function UMP$UI$Mvc$Router(){
	//_actionMapping决定调用顺序
}
var __debugger = true;
function UMP$UI$Mvc$Router$route(controllerid,actionid,strJSON){
    $document.initialize();

    var returnContext = {};
	var json = null;
	if(typeof strJSON =="string"){
	    json = stringToJSON(strJSON);
	}else if(typeof strJSON =="object"){
	    json = strJSON;
	}else{
		return returnContext;
	}
	
	returnContext = json;//默认相等
	
	
	returnContext = this.exec(controllerid, actionid, json);
	
	
	if($sys.cancelPush() == true){
		$sys.cancelPush(false);
		return;
	}
	
	var args = {};
	if($context.isDisposed && $context.isDisposed()){
		
	}else{		
		if(typeof returnContext !="string"){
			returnContext = jsonToString(returnContext);
		}
		args["context"] = returnContext;		
	}
	
	//because the native container check [document] and [context] forcibly, args must have the tow return object
	
	if(typeof $document !="undefined"){
		args["document"] = $document.dataToString();
		$document.clear();
	}else{
		args["document"] = {};
	}
	
	_$sys.push(args);
	
	//the code below can be remove, it has no usefull
    return returnContext;	
}
function UMP$UI$Mvc$Router$eval(controllerid, js, ctx, sender, args, uicontrols){
	//增加此eval方法为了做到2.7版本生成1.0工程代码的兼容
	//在2.7版本中，生成代码调用1.0的js，都使用$router.eval(controllerid，method, ...)而不是原来的$router.route(controllerBase, actionid,....)
	this.route(controllerid+"Base",js, ctx, sender, args, uicontrols);
}
function UMP$UI$Mvc$Router$exec(controllerid, actionid, json){
    var controllerType = eval(controllerid);
	var controller = new controllerType();//demo:  var controller = new com.yonyou.um.view1ControllerBase();
	var returnContext = controller.execute(actionid, json);//execute method of the action
	return returnContext;
}
UMP.UI.Mvc.Router.prototype = {
    route : UMP$UI$Mvc$Router$route,
    eval : UMP$UI$Mvc$Router$eval,
	exec : UMP$UI$Mvc$Router$exec
};
UMP.UI.Mvc.Router.registerClass('UMP.UI.Mvc.Router');

if(typeof $router == "undefined")  {
	$router = new UMP.UI.Mvc.Router();
}


//================================== UMP.UI.Mvc.Controller ==========================================================================
Type.registerNamespace('UMP.UI.Mvc');
UMP.UI.Mvc.Controller = function UMP$UI$Mvc$Controller() {
	this._actionMap = {};//子类加载
	this._context = null;//子类加载
	this._entity = null;//子类加载
	this._userController = null;//子类加载
}

function UMP$UI$Mvc$Controller$execute_v1(actionid, json){
	var funArray = this._actionMap[actionid];
	for(var i=0,len=funArray.length;i<len;i++){
		var fun = funArray[i];
		//fun.apply(this,json[0]);		
		json = fun.call(this, json);		
	}
	return json;	
}
function UMP$UI$Mvc$Controller$execute(actionid, json){
	
	
	var fun = eval("this." + actionid);
	json = fun.call(this, json);
	
	return json;	
}
function UMP$UI$Mvc$Controller$execAction(methodName, json){
    var funcName = methodName;
	var json = json;
	
	try{
    	//when every action begin,  json-->$context
    	this._context = _$um$CRUD$load(this._context, json, this._entity);
    	if(this._context){
    	    $context = this._context;//
    	}else{
    	    $context = json;//compatible with the old code
    	}
    	    
        if(!funcName){
			alert("此Action不存在Method");
		}
		if(this._userController){					
			if(this._userController.initialize)
				this._userController.initialize();
			
			var func = eval("this._userController." + funcName);
			$context = this.execMethod(func, $context);
		}
		
    	//when every action end,  $context-->json
    	if(this._context == null){//compatible with the old code
    	    return $context;
    	}
    	var newjson = _$um$CRUD$Context2JSON($context);
    	return newjson;
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function UMP$UI$Mvc$Controller$execMethod(func, ctx){	
	//LOG:method开始执行
	var result = func(ctx);
	
	//LOG:method执行完毕
	if(typeof result == "undefined")
		return ctx;
	else
		return result;
}
UMP.UI.Mvc.Controller.prototype = {
	execute: UMP$UI$Mvc$Controller$execute,
	execAction : UMP$UI$Mvc$Controller$execAction,
	execMethod : UMP$UI$Mvc$Controller$execMethod
};
UMP.UI.Mvc.Controller.registerClass('UMP.UI.Mvc.Controller');







