Type.registerNamespace('nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase');
nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        OpenReadMessageList : [this.OpenReadMessageList],
        OnLoadAllMsgData : [this.OnLoadAllMsgData],
        onDownRefresh : [this.onDownRefresh],
        GoToDetail : [this.GoToDetail],
        onItemClick : [this.onItemClick],
        NewMessage : [this.NewMessage],
        onUpRefresh : [this.onUpRefresh],
        onReturnBtnClick : [this.onReturnBtnClick],
        OpenUnReadMessageList : [this.OpenUnReadMessageList]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.msg_AllReadMessageListController){
        this._userController = new nc.bs.oa.oama.ecm.msg_AllReadMessageListController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.msg_AllReadMessageListController.js], it probably has some syntax wrong.");
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
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OpenReadMessageList(json){
    try{
        _$sys.callAction('OpenReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OnLoadAllMsgData(json){
    try{
        _$sys.callAction('OnLoadAllMsgData');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onDownRefresh(json){
    try{
        _$sys.callAction('onDownRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$GoToDetail(json){
    try{
        _$sys.callAction('GoToDetail');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onItemClick(json){
    try{
        _$sys.callAction('onItemClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$NewMessage(json){
    try{
        _$sys.callAction('NewMessage');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onUpRefresh(json){
    try{
        _$sys.callAction('onUpRefresh');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onReturnBtnClick(json){
    try{
        _$sys.callAction('onReturnBtnClick');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OpenUnReadMessageList(json){
    try{
        _$sys.callAction('OpenUnReadMessageList');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase.prototype = {
    OpenReadMessageList : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OpenReadMessageList,
    OnLoadAllMsgData : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OnLoadAllMsgData,
    onDownRefresh : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onDownRefresh,
    GoToDetail : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$GoToDetail,
    onItemClick : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onItemClick,
    NewMessage : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$NewMessage,
    onUpRefresh : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onUpRefresh,
    onReturnBtnClick : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$onReturnBtnClick,
    OpenUnReadMessageList : nc$bs$oa$oama$ecm$msg_AllReadMessageListControllerBase$OpenUnReadMessageList
};
nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase.registerClass('nc.bs.oa.oama.ecm.msg_AllReadMessageListControllerBase',UMP.UI.Mvc.Controller);
