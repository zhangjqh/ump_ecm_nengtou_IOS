Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.qrcode = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.qrcode.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$qrcode$get_key(){
    return this.get('key');
}
function nc$bs$oa$oama$ecm$qrcode$set_key(value){
    return this.set('key',value);
}
nc.bs.oa.oama.ecm.qrcode.prototype = {
    get_key : nc$bs$oa$oama$ecm$qrcode$get_key,
    set_key : nc$bs$oa$oama$ecm$qrcode$get_key
}
nc.bs.oa.oama.ecm.qrcode.registerClass('nc.bs.oa.oama.ecm.qrcode',UMP.UI.Mvc.Context);

