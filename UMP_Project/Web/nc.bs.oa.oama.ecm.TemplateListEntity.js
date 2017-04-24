Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.TemplateListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.TemplateListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "TemplateList", {"tag":"context","attributes":{"id":"TemplateList","iscascade":"false","from-type":"context","filter":""},"fields":{"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"templates":{"tag":"fieldset","attributes":{"id":"templates","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"Template","type":"string","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"outofrange":{"tag":"field","attributes":{"id":"outofrange","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$TemplateListEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$TemplateListEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$TemplateListEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$TemplateListEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$TemplateListEntity$get_templates(){
    return this.field('templates');
}
function nc$bs$oa$oama$ecm$TemplateListEntity$set_templates(value){
    return this.field('templates',value);
}
function nc$bs$oa$oama$ecm$TemplateListEntity$get_outofrange(){
    return this.field('outofrange');
}
function nc$bs$oa$oama$ecm$TemplateListEntity$set_outofrange(value){
    return this.field('outofrange',value);
}
nc.bs.oa.oama.ecm.TemplateListEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$TemplateListEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$TemplateListEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$TemplateListEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$TemplateListEntity$get_des,
    get_templates : nc$bs$oa$oama$ecm$TemplateListEntity$get_templates,
    set_templates : nc$bs$oa$oama$ecm$TemplateListEntity$get_templates,
    get_outofrange : nc$bs$oa$oama$ecm$TemplateListEntity$get_outofrange,
    set_outofrange : nc$bs$oa$oama$ecm$TemplateListEntity$get_outofrange
}
nc.bs.oa.oama.ecm.TemplateListEntity.registerClass('nc.bs.oa.oama.ecm.TemplateListEntity',UMP.UI.Mvc.Entity);
