Type.registerNamespace('nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase');
nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.onerepeatdayrefController){
        this._userController = new nc.bs.oa.oama.ecm.onerepeatdayrefController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.onerepeatdayrefController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase.prototype = {
    onClickListRow : nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$load,
    onCancel : nc$bs$oa$oama$ecm$onerepeatdayrefControllerBase$onCancel
};
nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase.registerClass('nc.bs.oa.oama.ecm.onerepeatdayrefControllerBase',UMP.UI.Mvc.Controller);
