Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.HandWrite = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.HandWrite.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$HandWrite$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$HandWrite$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$HandWrite$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$HandWrite$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$HandWrite$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$HandWrite$set_content(value){
    return this.set('content',value);
}
nc.bs.oa.oama.ecm.HandWrite.prototype = {
    get_flag : nc$bs$oa$oama$ecm$HandWrite$get_flag,
    set_flag : nc$bs$oa$oama$ecm$HandWrite$get_flag,
    get_des : nc$bs$oa$oama$ecm$HandWrite$get_des,
    set_des : nc$bs$oa$oama$ecm$HandWrite$get_des,
    get_content : nc$bs$oa$oama$ecm$HandWrite$get_content,
    set_content : nc$bs$oa$oama$ecm$HandWrite$get_content
}
nc.bs.oa.oama.ecm.HandWrite.registerClass('nc.bs.oa.oama.ecm.HandWrite',UMP.UI.Mvc.Context);

