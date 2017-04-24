Type.registerNamespace('nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase');
nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        OpenAllReadMessageList : [this.OpenAllReadMessageList],
        onDownRefresh : [this.onDownRefresh],
        GoToDetail : [this.GoToDetail],
        onItemClick : [this.onItemClick],
        NewMessage : [this.NewMessage],
        onUpRefresh : [this.onUpRefresh],
        OnLoadReadMsgData : [this.OnLoadReadMsgData],
        onReturnBtnClick : [this.onReturnBtnClick],
        OpenUnReadMessageList : [this.OpenUnReadMessageList]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.msg_ReadMessageListController){
        this._userController = new nc.bs.oa.oama.ecm.msg_ReadMessageListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.msg_ReadMessageListController.js], it probably has some syntax wrong.");
        //return;
    }

    //this._entity is the context define
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.messageGroupEntity != 'undefined'){
        this._entity = new nc.bs.oa.oama.ecm.messageGroupEntity('context');
        $sys.version(2.0)
    }else{
        this._entity = null;
        $sys.version(1.0)
    }
    //this._context is the context data object
    if(typeof nc.bs.oa.oama.ecm !='undefined' && typeof nc.bs.oa.oama.ecm.messageGroup != 'undefined'){
        this._context = new nc.bs.oa.oama.ecm.messageGroup(this._entity.id(),this._entity,null);
        $sys.version(2.0);
    }else{
        this._context = null;
        $sys.version(1.0);
    }
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OpenAllReadMessageList(json){
    try{
        _$sys.callAction('OpenAllReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onDownRefresh(json){
    try{
        _$sys.callAction('onDownRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$GoToDetail(json){
    try{
        _$sys.callAction('GoToDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onItemClick(json){
    try{
        _$sys.callAction('onItemClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$NewMessage(json){
    try{
        _$sys.callAction('NewMessage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onUpRefresh(json){
    try{
        _$sys.callAction('onUpRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OnLoadReadMsgData(json){
    try{
        _$sys.callAction('OnLoadReadMsgData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OpenUnReadMessageList(json){
    try{
        _$sys.callAction('OpenUnReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase.prototype = {
    OpenAllReadMessageList : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OpenAllReadMessageList,
    onDownRefresh : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onDownRefresh,
    GoToDetail : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$GoToDetail,
    onItemClick : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onItemClick,
    NewMessage : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$NewMessage,
    onUpRefresh : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onUpRefresh,
    OnLoadReadMsgData : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OnLoadReadMsgData,
    onReturnBtnClick : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$onReturnBtnClick,
    OpenUnReadMessageList : nc$bs$oa$oama$ecm$msg_ReadMessageListControllerBase$OpenUnReadMessageList
};
nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase.registerClass('nc.bs.oa.oama.ecm.msg_ReadMessageListControllerBase',UMP.UI.Mvc.Controller);
