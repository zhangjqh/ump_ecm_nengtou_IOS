Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase');
nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        closeMobileStore : [this.closeMobileStore]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_MobilestoreController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_MobilestoreController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_MobilestoreController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_Mobilestore] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_MobilestoreControllerBase$closeMobileStore(json){
    try{
        _$sys.callAction('closeMobileStore');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase.prototype = {
    closeMobileStore : nc$bs$oa$oama$ecm$Ecm_MobilestoreControllerBase$closeMobileStore
};
nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_MobilestoreControllerBase',UMP.UI.Mvc.Controller);
