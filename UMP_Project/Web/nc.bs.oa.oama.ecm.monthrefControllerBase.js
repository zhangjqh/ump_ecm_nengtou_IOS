Type.registerNamespace('nc.bs.oa.oama.ecm.monthrefControllerBase');
nc.bs.oa.oama.ecm.monthrefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.monthrefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.monthrefController){
        this._userController = new nc.bs.oa.oama.ecm.monthrefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.monthrefController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.repeatRull1Entity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.repeatRull1Entity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.repeatRull1 != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.repeatRull1(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$monthrefControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$monthrefControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$monthrefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.monthrefControllerBase.prototype = {
    onClickListRow : nc$bs$oa$oama$ecm$monthrefControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$monthrefControllerBase$load,
    onCancel : nc$bs$oa$oama$ecm$monthrefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.monthrefControllerBase.registerClass('nc.bs.oa.oama.ecm.monthrefControllerBase',UMP.UI.Mvc.Controller);
