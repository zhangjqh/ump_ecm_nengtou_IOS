
Type.registerNamespace('UMP.UI.Mvc');
UMP.UI.Mvc.Document = function UMP$UI$Mvc$Document(){
	this._tree = {};
}

function UMP$UI$Mvc$Document$initialize(){    
	this._tree = {};	
}

//Public Method
function UMP$UI$Mvc$Document$getElementById(id){    
	if(!this._tree[id]){		
		//create temp a object dynamically
		var ele = this.createAbsElement();
		ele.id(id);
		this._tree[id] = ele;
	}
	return this._tree[id];
	
}
function UMP$UI$Mvc$Document$getElementsByTagName(){
}

function UMP$UI$Mvc$Document$createAttribute(name){	
}

function UMP$UI$Mvc$Document$createElement(){	
}
function UMP$UI$Mvc$Document$createTextNode(){	
}
function UMP$UI$Mvc$Document$getChilds(){
	return this._tree;	
}
function UMP$UI$Mvc$Document$appendChild(){	
}
function UMP$UI$Mvc$Document$removeChild(){	
}
function UMP$UI$Mvc$Document$replaceChild(newObj,oldObj){	
	if(this._tree[oldObj.id()]){
		delete this._tree[oldObj.id()];
		this._tree[newObj.id()] = newObj;
	}
}
function UMP$UI$Mvc$Document$insertBefore(){	
}

function UMP$UI$Mvc$Document$createAbsElement(tag){
	var newJControl = new UMP.UI.Mvc.Element(tag);
	newJControl.isAbs(true);
	return newJControl;
}
function UMP$UI$Mvc$Document$parseType(ele, type) {
    var control = new type();

    if (ele.isAbs() == true) {
        //all attr clone
        for (var key in ele.attrs()) {
            control.attr(key, ele.attr(key));
        }

        $document.replaceChild(control, ele);
        ele = control;
        return ele;
    }

    return ele;
}

function UMP$UI$Mvc$Document$SetNative(eleId, attrName, attrValue) {	
	$controls.set(eleId, attrName, attrValue);
}

function UMP$UI$Mvc$Document$clear(){	
	$document = new UMP.UI.Mvc.Document();	
}

function UMP$UI$Mvc$Document$dataToJSON(){
	var json = {};	
	for(var id in this.getChilds()){
		var jcontrolData ={};
		var child = $document.getElementById(id);
		jcontrolData["attributes"] = child.attrs();		
		json[id] = jcontrolData;
	}
	return $jsonToString(json);

}
function UMP$UI$Mvc$Document$dataToString(){	
	return $jsonToString(this.dataToJSON());
}
UMP.UI.Mvc.Document.prototype = {
	initialize : UMP$UI$Mvc$Document$initialize,
	
	//Visit Node
	getElementById: UMP$UI$Mvc$Document$getElementById,
	getElementsByTagName: UMP$UI$Mvc$Document$getElementsByTagName,	
		
	createAttribute: UMP$UI$Mvc$Document$createAttribute,
	
	//Node Operating
	createElement: UMP$UI$Mvc$Document$createElement,
	createTextNode: UMP$UI$Mvc$Document$createTextNode,	
	
	getChilds: UMP$UI$Mvc$Document$getChilds,
	
	appendChild: UMP$UI$Mvc$Document$appendChild,	
	removeChild: UMP$UI$Mvc$Document$removeChild,
	replaceChild: UMP$UI$Mvc$Document$replaceChild,
	insertBefore: UMP$UI$Mvc$Document$insertBefore,
	
	createAbsElement: UMP$UI$Mvc$Document$createAbsElement,
	parseType: UMP$UI$Mvc$Document$parseType,
	
	
	SetNative : UMP$UI$Mvc$Document$SetNative,
	clear : UMP$UI$Mvc$Document$clear,
	
	dataToJSON: UMP$UI$Mvc$Document$dataToJSON,
	dataToString: UMP$UI$Mvc$Document$dataToString
};
UMP.UI.Mvc.Document.registerClass('UMP.UI.Mvc.Document');
$document = new UMP.UI.Mvc.Document();
$id = $document.getElementById;

_$um$getDocumentData = function(){
	var result = {};
	
	for(var id in $document.getChilds()){
		var jcontrolData ={};
		var child = $document.getElementById(id);
		jcontrolData["attributes"] = child.attrs();		
		result[id] = jcontrolData;
	}
	return $jsonToString(result);
}

