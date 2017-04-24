Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase');
nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        closeqrcode : [this.closeqrcode]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_Serviceqrcode] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_ServiceqrcodeControllerBase$closeqrcode(json){
    try{
        _$sys.callAction('closeqrcode');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase.prototype = {
    closeqrcode : nc$bs$oa$oama$ecm$Ecm_ServiceqrcodeControllerBase$closeqrcode
};
nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_ServiceqrcodeControllerBase',UMP.UI.Mvc.Controller);
