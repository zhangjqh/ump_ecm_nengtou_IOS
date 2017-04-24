Type.registerNamespace('nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase');
nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        OnLoadData : [this.OnLoadData],
        OpenFile : [this.OpenFile],
        onReturnBtnClick : [this.onReturnBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewController){
        this._userController = new nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessageEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.msg_CreateMessageEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.msg_CreateMessage != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.msg_CreateMessage(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$OnLoadData(json){
    try{
        _$sys.callAction('OnLoadData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$OpenFile(json){
    try{
        _$sys.callAction('OpenFile');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase.prototype = {
    OnLoadData : nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$OnLoadData,
    OpenFile : nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$OpenFile,
    onReturnBtnClick : nc$bs$oa$oama$ecm$Msg_AttachmentList4ViewControllerBase$onReturnBtnClick
};
nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase.registerClass('nc.bs.oa.oama.ecm.Msg_AttachmentList4ViewControllerBase',UMP.UI.Mvc.Controller);
