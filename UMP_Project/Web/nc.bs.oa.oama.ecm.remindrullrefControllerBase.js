Type.registerNamespace('nc.bs.oa.oama.ecm.remindrullrefControllerBase');
nc.bs.oa.oama.ecm.remindrullrefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.remindrullrefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.remindrullrefController){
        this._userController = new nc.bs.oa.oama.ecm.remindrullrefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.remindrullrefController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.alertRuleListEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.alertRuleListEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.alertRuleList != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.alertRuleList(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$remindrullrefControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$remindrullrefControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$remindrullrefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.remindrullrefControllerBase.prototype = {
    onClickListRow : nc$bs$oa$oama$ecm$remindrullrefControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$remindrullrefControllerBase$load,
    onCancel : nc$bs$oa$oama$ecm$remindrullrefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.remindrullrefControllerBase.registerClass('nc.bs.oa.oama.ecm.remindrullrefControllerBase',UMP.UI.Mvc.Controller);
