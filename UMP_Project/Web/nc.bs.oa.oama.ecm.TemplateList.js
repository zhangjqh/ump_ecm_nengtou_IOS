Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.TemplateList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.TemplateList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$TemplateList$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$TemplateList$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$TemplateList$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$TemplateList$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$TemplateList$get_templates(){
    return this.get('templates');
}
function nc$bs$oa$oama$ecm$TemplateList$set_templates(value){
    return this.set('templates',value);
}
function nc$bs$oa$oama$ecm$TemplateList$get_outofrange(){
    return this.get('outofrange');
}
function nc$bs$oa$oama$ecm$TemplateList$set_outofrange(value){
    return this.set('outofrange',value);
}
nc.bs.oa.oama.ecm.TemplateList.prototype = {
    get_flag : nc$bs$oa$oama$ecm$TemplateList$get_flag,
    set_flag : nc$bs$oa$oama$ecm$TemplateList$get_flag,
    get_des : nc$bs$oa$oama$ecm$TemplateList$get_des,
    set_des : nc$bs$oa$oama$ecm$TemplateList$get_des,
    get_templates : nc$bs$oa$oama$ecm$TemplateList$get_templates,
    set_templates : nc$bs$oa$oama$ecm$TemplateList$get_templates,
    get_outofrange : nc$bs$oa$oama$ecm$TemplateList$get_outofrange,
    set_outofrange : nc$bs$oa$oama$ecm$TemplateList$get_outofrange
}
nc.bs.oa.oama.ecm.TemplateList.registerClass('nc.bs.oa.oama.ecm.TemplateList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.Template = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.Template.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$Template$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$Template$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$Template$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$Template$set_name(value){
    return this.set('name',value);
}
nc.bs.oa.oama.ecm.Template.prototype = {
    get_id : nc$bs$oa$oama$ecm$Template$get_id,
    set_id : nc$bs$oa$oama$ecm$Template$get_id,
    get_name : nc$bs$oa$oama$ecm$Template$get_name,
    set_name : nc$bs$oa$oama$ecm$Template$get_name
}
nc.bs.oa.oama.ecm.Template.registerClass('nc.bs.oa.oama.ecm.Template',UMP.UI.Mvc.Context);

