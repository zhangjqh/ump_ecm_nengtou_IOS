Type.registerNamespace('nc.bs.oa.oama.ecm.Ecm_QrcodecontextController');
nc.bs.oa.oama.ecm.Ecm_QrcodecontextController = function() {

}
function nc$bs$oa$oama$ecm$Ecm_QrcodecontextController$initialize(ctx){    
}
function nc$bs$oa$oama$ecm$Ecm_QrcodecontextController$qrcodecontext(ctx){
    var qrcodekey = ctx.params()["qrcodekey"];
    ctx.set("key",qrcodekey);
    ctx.load();
}
nc.bs.oa.oama.ecm.Ecm_QrcodecontextController.prototype = {
    initialize : nc$bs$oa$oama$ecm$Ecm_QrcodecontextController$initialize,
    qrcodecontext : nc$bs$oa$oama$ecm$Ecm_QrcodecontextController$qrcodecontext
};
nc.bs.oa.oama.ecm.Ecm_QrcodecontextController.registerClass('nc.bs.oa.oama.ecm.Ecm_QrcodecontextController');
