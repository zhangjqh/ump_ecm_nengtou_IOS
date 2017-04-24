Type.registerNamespace('nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase');
nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        OpenAllReadMessageList : [this.OpenAllReadMessageList],
        OnLoadUnreadMsgData : [this.OnLoadUnreadMsgData],
        OpenReadMessageList : [this.OpenReadMessageList],
        onDownRefresh : [this.onDownRefresh],
        GoToDetail : [this.GoToDetail],
        onItemClick : [this.onItemClick],
        NewMessage : [this.NewMessage],
        onUpRefresh : [this.onUpRefresh],
        onReturnBtnClick : [this.onReturnBtnClick]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.msg_UnreadMessageListController){
        this._userController = new nc.bs.oa.oama.ecm.msg_UnreadMessageListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.msg_UnreadMessageListController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OpenAllReadMessageList(json){
    try{
        _$sys.callAction('OpenAllReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OnLoadUnreadMsgData(json){
    try{
        _$sys.callAction('OnLoadUnreadMsgData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OpenReadMessageList(json){
    try{
        _$sys.callAction('OpenReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onDownRefresh(json){
    try{
        _$sys.callAction('onDownRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$GoToDetail(json){
    try{
        _$sys.callAction('GoToDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onItemClick(json){
    try{
        _$sys.callAction('onItemClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$NewMessage(json){
    try{
        _$sys.callAction('NewMessage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onUpRefresh(json){
    try{
        _$sys.callAction('onUpRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase.prototype = {
    OpenAllReadMessageList : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OpenAllReadMessageList,
    OnLoadUnreadMsgData : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OnLoadUnreadMsgData,
    OpenReadMessageList : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$OpenReadMessageList,
    onDownRefresh : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onDownRefresh,
    GoToDetail : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$GoToDetail,
    onItemClick : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onItemClick,
    NewMessage : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$NewMessage,
    onUpRefresh : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onUpRefresh,
    onReturnBtnClick : nc$bs$oa$oama$ecm$msg_UnreadMessageListControllerBase$onReturnBtnClick
};
nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase.registerClass('nc.bs.oa.oama.ecm.msg_UnreadMessageListControllerBase',UMP.UI.Mvc.Controller);
