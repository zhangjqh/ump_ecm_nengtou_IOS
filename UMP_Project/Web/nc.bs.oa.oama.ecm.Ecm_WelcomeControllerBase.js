Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase');
nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase = function() {
    //Step 1：inherit the base class
    nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase.initializeBase(this);

    //Auto generate action map...
    this._actionMap = {
        toMainView : [this.toMainView]
    };

    //user controller instance
    if(nc.bs.oa.oama.ecm.Ecm_WelcomeController){
        this._userController = new nc.bs.oa.oama.ecm.Ecm_WelcomeController();
    }else{
        alert("please check the js file[nc.bs.oa.oama.ecm.Ecm_WelcomeController.js], it probably has some syntax wrong.");
        //return;
    }

    //the window[Ecm_Welcome] do not define the context
    this._entity = null;
    this._context = null;
}
function nc$bs$oa$oama$ecm$Ecm_WelcomeControllerBase$toMainView(json){
    try{
        _$sys.callAction('toMainView');
    }catch(e){
        alert(e.stack);
    }
    return json;
}
nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase.prototype = {
    toMainView : nc$bs$oa$oama$ecm$Ecm_WelcomeControllerBase$toMainView
};
nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase.registerClass('nc.bs.oa.oama.ecm.Ecm_WelcomeControllerBase',UMP.UI.Mvc.Controller);
