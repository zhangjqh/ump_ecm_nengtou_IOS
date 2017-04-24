
Type.registerNamespace('UMP.UI.Mvc');
UMP.UI.Mvc.Element = function UMP$UI$Mvc$Element(tag){
	//1、 default true
	this._isAbs = true;
	
	//2、常量
	this._tag = tag;
	
	//3、Attribute
	this._attrs = {};
	this._absAttrs = {};
	
	//4、Event
	this._events = {};
		
}
//Public Method
function UMP$UI$Mvc$Element$createAttribute(){    
	return this._tag;
}
function UMP$UI$Mvc$Element$getAttribute(name){	
	if(!name) return null;
	
	//if this._attrs not exist, return the attribute's value of native control
	if(this._isAbs){
		if(this._absAttrs.hasOwnProperty(name)){
			return this._absAttrs[name];
		}else{
		    //获取的属性不在抽象属性列表中
			//先去context中的获取，看看能否获取????因为有可能空间不知道对应的ctx字段是谁，忽略该步骤
			//如果context中也没有，则调用服务从原生控件中获取该属性值
			//UM_NativeCall.callService("UMJS.getProperty","{id:'"+this.id()+"',"+name+":''}");
			var args = {};
			args["id"] = this.id();
			args["propertyName"] = name;
			var str_args = $jsonToString(args);
			var result = $service.callService("UMJS.getProperty", str_args, true);
			this.setAttribute(name, result);
			return result;
		}
	}else{
	    return this._attrs[name];
	}
}
function UMP$UI$Mvc$Element$setAttribute(name, value){
	if(this._isAbs)
	    this._absAttrs[name] = value;
	else
	    this._attrs[name] = value;
}

function UMP$UI$Mvc$Element$isAbs(val){
    if(typeof val == "undefined")
        return this._isAbs;
    else 
        this._isAbs = val;
}
function UMP$UI$Mvc$Element$tag(tag){	
	if(typeof tag =="undefined"){
		return this._tag
	}else{
		this._tag = tag;
	}
}
function UMP$UI$Mvc$Element$id(id){	
	if(typeof id =="undefined"){
		return this.attr("id");
	}else{
		this.attr("id",id);
	}
}
function UMP$UI$Mvc$Element$attrs(){
	if(this._isAbs)
	    return this._absAttrs;
	else
	    return this._attrs;
}
function UMP$UI$Mvc$Element$attr(name, value){
	if(typeof value ==="undefined"){
		return this.getAttribute(name);
	}else{
		this.setAttribute(name, value);
	}	
}


function UMP$UI$Mvc$Element$get_visible(){
	return this.attr("visible");
}
function UMP$UI$Mvc$Element$set_visible(val){
	this.attr("visible", val);
}
function UMP$UI$Mvc$Element$get_disabled(){
	return this.attr("disabled");
}
function UMP$UI$Mvc$Element$set_disabled(val){
	this.attr("disabled", val);
}
function UMP$UI$Mvc$Element$get_background(){
	return this.attr("background");
}
function UMP$UI$Mvc$Element$set_background(val){
	this.attr("background", val);
}
function UMP$UI$Mvc$Element$background(val){	
	if(typeof val ==="undefined"){
		return this.get_background();
	}else{
		this.set_background(val);
	}	
}
UMP.UI.Mvc.Element.prototype = {	
	//HTML5 standard API
	createAttribute: UMP$UI$Mvc$Element$createAttribute,
	getAttribute: UMP$UI$Mvc$Element$getAttribute,	
	setAttribute: UMP$UI$Mvc$Element$setAttribute,	
	
	//JQuery Style API
	isAbs: UMP$UI$Mvc$Element$isAbs,
	tag: UMP$UI$Mvc$Element$tag,
	id: UMP$UI$Mvc$Element$id,
	attrs: UMP$UI$Mvc$Element$attrs,
	attr: UMP$UI$Mvc$Element$attr
};
UMP.UI.Mvc.Element.registerClass('UMP.UI.Mvc.Element');
