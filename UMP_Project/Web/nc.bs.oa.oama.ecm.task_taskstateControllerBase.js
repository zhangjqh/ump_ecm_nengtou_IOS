Type.registerNamespace('nc.bs.oa.oama.ecm.task_taskstateControllerBase');
nc.bs.oa.oama.ecm.task_taskstateControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.task_taskstateControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        onClickListRow : [this.onClickListRow],
        load : [this.load],
        onCancel : [this.onCancel]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.task_taskstateController){
        this._userController = new nc.bs.oa.oama.ecm.task_taskstateController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.task_taskstateController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.taskstateenumEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.taskstateenumEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.taskstateenum != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.taskstateenum(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$task_taskstateControllerBase$onClickListRow(json){
    try{
        _$sys.callAction('onClickListRow');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_taskstateControllerBase$load(json){
    try{
        _$sys.callAction('load');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$task_taskstateControllerBase$onCancel(json){
    try{
        _$sys.callAction('onCancel');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.task_taskstateControllerBase.prototype = {
    onClickListRow : nc$bs$oa$oama$ecm$task_taskstateControllerBase$onClickListRow,
    load : nc$bs$oa$oama$ecm$task_taskstateControllerBase$load,
    onCancel : nc$bs$oa$oama$ecm$task_taskstateControllerBase$onCancel
};
nc.bs.oa.oama.ecm.task_taskstateControllerBase.registerClass('nc.bs.oa.oama.ecm.task_taskstateControllerBase',UMP.UI.Mvc.Controller);
