Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ContentDetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.ContentDetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "ContentDetail", {"tag":"context","attributes":{"id":"ContentDetail","iscascade":"false","from-type":"context","filter":""},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"resultmsg":{"tag":"field","attributes":{"id":"resultmsg","type":"string"}},"resultcode":{"tag":"field","attributes":{"id":"resultcode","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"url":{"tag":"field","attributes":{"id":"url","type":"string"}},"size":{"tag":"field","attributes":{"id":"size","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultcode(){
    return this.field('resultcode');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_resultcode(value){
    return this.field('resultcode',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultmsg(){
    return this.field('resultmsg');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_resultmsg(value){
    return this.field('resultmsg',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_url(){
    return this.field('url');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_url(value){
    return this.field('url',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_id(){
    return this.field('id');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_id(value){
    return this.field('id',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_name(){
    return this.field('name');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_name(value){
    return this.field('name',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_type(){
    return this.field('type');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_type(value){
    return this.field('type',value);
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$get_size(){
    return this.field('size');
}
function nc$bs$oa$oama$ecm$ContentDetailEntity$set_size(value){
    return this.field('size',value);
}
nc.bs.oa.oama.ecm.ContentDetailEntity.prototype = {
    get_resultcode : nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultcode,
    set_resultcode : nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultcode,
    get_resultmsg : nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultmsg,
    set_resultmsg : nc$bs$oa$oama$ecm$ContentDetailEntity$get_resultmsg,
    get_url : nc$bs$oa$oama$ecm$ContentDetailEntity$get_url,
    set_url : nc$bs$oa$oama$ecm$ContentDetailEntity$get_url,
    get_id : nc$bs$oa$oama$ecm$ContentDetailEntity$get_id,
    set_id : nc$bs$oa$oama$ecm$ContentDetailEntity$get_id,
    get_name : nc$bs$oa$oama$ecm$ContentDetailEntity$get_name,
    set_name : nc$bs$oa$oama$ecm$ContentDetailEntity$get_name,
    get_type : nc$bs$oa$oama$ecm$ContentDetailEntity$get_type,
    set_type : nc$bs$oa$oama$ecm$ContentDetailEntity$get_type,
    get_size : nc$bs$oa$oama$ecm$ContentDetailEntity$get_size,
    set_size : nc$bs$oa$oama$ecm$ContentDetailEntity$get_size
}
nc.bs.oa.oama.ecm.ContentDetailEntity.registerClass('nc.bs.oa.oama.ecm.ContentDetailEntity',UMP.UI.Mvc.Entity);
