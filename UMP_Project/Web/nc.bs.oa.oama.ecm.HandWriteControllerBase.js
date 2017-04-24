Type.registerNamespace('nc.bs.oa.oama.ecm.HandWriteControllerBase');
nc.bs.oa.oama.ecm.HandWriteControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.HandWriteControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onCloseClick : [this.onCloseClick],
        onDataLoad : [this.onDataLoad]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.HandWriteController){
        this._userController = new nc.bs.oa.oama.ecm.HandWriteController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.HandWriteController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.HandWriteEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.HandWriteEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.HandWrite != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.HandWrite(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$HandWriteControllerBase$onCloseClick(json){
    try{
        _$sys.callAction('onCloseClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$HandWriteControllerBase$onDataLoad(json){
    try{
        _$sys.callAction('onDataLoad');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.HandWriteControllerBase.prototype = {
    onCloseClick : nc$bs$oa$oama$ecm$HandWriteControllerBase$onCloseClick,
    onDataLoad : nc$bs$oa$oama$ecm$HandWriteControllerBase$onDataLoad
};
nc.bs.oa.oama.ecm.HandWriteControllerBase.registerClass('nc.bs.oa.oama.ecm.HandWriteControllerBase',UMP.UI.Mvc.Controller);
