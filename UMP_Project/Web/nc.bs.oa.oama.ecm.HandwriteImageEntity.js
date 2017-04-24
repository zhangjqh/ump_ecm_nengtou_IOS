Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.HandwriteImageEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.HandwriteImageEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "HandwriteImage", {"tag":"context","attributes":{"id":"HandwriteImage","iscascade":"false","from-type":"context","filter":""},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$HandwriteImageEntity$set_content(value){
    return this.field('content',value);
}
nc.bs.oa.oama.ecm.HandwriteImageEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_des,
    get_content : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$HandwriteImageEntity$get_content
}
nc.bs.oa.oama.ecm.HandwriteImageEntity.registerClass('nc.bs.oa.oama.ecm.HandwriteImageEntity',UMP.UI.Mvc.Entity);
