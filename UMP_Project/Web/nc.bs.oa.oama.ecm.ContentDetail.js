Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ContentDetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.ContentDetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$ContentDetail$get_resultcode(){
    return this.get('resultcode');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_resultcode(value){
    return this.set('resultcode',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_resultmsg(){
    return this.get('resultmsg');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_resultmsg(value){
    return this.set('resultmsg',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_url(){
    return this.get('url');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_url(value){
    return this.set('url',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_type(value){
    return this.set('type',value);
}
function nc$bs$oa$oama$ecm$ContentDetail$get_size(){
    return this.get('size');
}
function nc$bs$oa$oama$ecm$ContentDetail$set_size(value){
    return this.set('size',value);
}
nc.bs.oa.oama.ecm.ContentDetail.prototype = {
    get_resultcode : nc$bs$oa$oama$ecm$ContentDetail$get_resultcode,
    set_resultcode : nc$bs$oa$oama$ecm$ContentDetail$get_resultcode,
    get_resultmsg : nc$bs$oa$oama$ecm$ContentDetail$get_resultmsg,
    set_resultmsg : nc$bs$oa$oama$ecm$ContentDetail$get_resultmsg,
    get_url : nc$bs$oa$oama$ecm$ContentDetail$get_url,
    set_url : nc$bs$oa$oama$ecm$ContentDetail$get_url,
    get_id : nc$bs$oa$oama$ecm$ContentDetail$get_id,
    set_id : nc$bs$oa$oama$ecm$ContentDetail$get_id,
    get_name : nc$bs$oa$oama$ecm$ContentDetail$get_name,
    set_name : nc$bs$oa$oama$ecm$ContentDetail$get_name,
    get_type : nc$bs$oa$oama$ecm$ContentDetail$get_type,
    set_type : nc$bs$oa$oama$ecm$ContentDetail$get_type,
    get_size : nc$bs$oa$oama$ecm$ContentDetail$get_size,
    set_size : nc$bs$oa$oama$ecm$ContentDetail$get_size
}
nc.bs.oa.oama.ecm.ContentDetail.registerClass('nc.bs.oa.oama.ecm.ContentDetail',UMP.UI.Mvc.Context);

