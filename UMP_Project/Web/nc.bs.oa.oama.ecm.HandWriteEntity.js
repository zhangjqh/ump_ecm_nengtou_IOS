Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.HandWriteEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.HandWriteEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "HandWrite", {"tag":"context","attributes":{"id":"HandWrite","iscascade":"false","from-type":"context","filter":""},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$HandWriteEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$HandWriteEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$HandWriteEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$HandWriteEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$HandWriteEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$HandWriteEntity$set_content(value){
    return this.field('content',value);
}
nc.bs.oa.oama.ecm.HandWriteEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$HandWriteEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$HandWriteEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$HandWriteEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$HandWriteEntity$get_des,
    get_content : nc$bs$oa$oama$ecm$HandWriteEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$HandWriteEntity$get_content
}
nc.bs.oa.oama.ecm.HandWriteEntity.registerClass('nc.bs.oa.oama.ecm.HandWriteEntity',UMP.UI.Mvc.Entity);
