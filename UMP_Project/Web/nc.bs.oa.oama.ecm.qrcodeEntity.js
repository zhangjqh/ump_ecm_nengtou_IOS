Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.qrcodeEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.qrcodeEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "qrcode", {"tag":"context","attributes":{"id":"qrcode","iscascade":"false","from-type":"context","filter":""},"fields":{"key":{"tag":"field","attributes":{"id":"key","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$qrcodeEntity$get_key(){
    return this.field('key');
}
function nc$bs$oa$oama$ecm$qrcodeEntity$set_key(value){
    return this.field('key',value);
}
nc.bs.oa.oama.ecm.qrcodeEntity.prototype = {
    get_key : nc$bs$oa$oama$ecm$qrcodeEntity$get_key,
    set_key : nc$bs$oa$oama$ecm$qrcodeEntity$get_key
}
nc.bs.oa.oama.ecm.qrcodeEntity.registerClass('nc.bs.oa.oama.ecm.qrcodeEntity',UMP.UI.Mvc.Entity);
