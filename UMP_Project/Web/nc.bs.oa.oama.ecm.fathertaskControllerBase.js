Type.registerNamespace('nc.bs.oa.oama.ecm.fathertaskControllerBase');
nc.bs.oa.oama.ecm.fathertaskControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.fathertaskControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.fathertaskController){
        this._userController = new nc.bs.oa.oama.ecm.fathertaskController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.fathertaskController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detaillistEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.detaillistEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.detaillist != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.detaillist(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$fathertaskControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$fathertaskControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$fathertaskControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.fathertaskControllerBase.prototype = {
    onClickListRow : nc$bs$oa$oama$ecm$fathertaskControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$fathertaskControllerBase$load,
    onCancel : nc$bs$oa$oama$ecm$fathertaskControllerBase$onCancel
};
nc.bs.oa.oama.ecm.fathertaskControllerBase.registerClass('nc.bs.oa.oama.ecm.fathertaskControllerBase',UMP.UI.Mvc.Controller);
