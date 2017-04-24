Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_AboutControllerBase');
nc.bs.oa.oama.ecm.Ecm_AboutControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_AboutControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        feedback : [this.feedback],
        newcharacter : [this.newcharacter],
        closeabout : [this.closeabout]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_AboutController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_AboutController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_AboutController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_About] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$feedback(json){
    try{
        _$sys.callAction('feedback');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$newcharacter(json){
    try{
        _$sys.callAction('newcharacter');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
function nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$closeabout(json){
    try{
        _$sys.callAction('closeabout');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_AboutControllerBase.prototype = {
    feedback : nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$feedback,
    newcharacter : nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$newcharacter,
    closeabout : nc$bs$oa$oama$ecm$Ecm_AboutControllerBase$closeabout
};
nc.bs.oa.oama.ecm.Ecm_AboutControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_AboutControllerBase',UMP.UI.Mvc.Controller);
