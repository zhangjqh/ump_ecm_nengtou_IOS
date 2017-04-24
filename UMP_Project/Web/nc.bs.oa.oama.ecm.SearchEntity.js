Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.SearchEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.SearchEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "Search", {"tag":"context","attributes":{"id":"Search","iscascade":"false","from-type":"context","filter":""},"fields":{"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"condition":{"tag":"field","attributes":{"id":"condition","from":"","type":"string"}},"list":{"tag":"fieldset","attributes":{"id":"list","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"SearchRow","type":"string","parent-field":"","from-type":"context"},"fields":{"position":{"tag":"field","attributes":{"id":"position","type":"string"}},"sex":{"tag":"field","attributes":{"id":"sex","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"num":{"tag":"field","attributes":{"id":"num","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"dept":{"tag":"field","attributes":{"id":"dept","type":"string"}},"checked":{"tag":"field","attributes":{"id":"checked","type":"string"}},"user":{"tag":"field","attributes":{"id":"user","type":"string"}},"end":{"tag":"field","attributes":{"id":"end","type":"string"}},"mobile":{"tag":"field","attributes":{"id":"mobile","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"psncount":{"tag":"field","attributes":{"id":"psncount","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$SearchEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$SearchEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$SearchEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$SearchEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$SearchEntity$get_condition(){
    return this.field('condition');
}
function nc$bs$oa$oama$ecm$SearchEntity$set_condition(value){
    return this.field('condition',value);
}
function nc$bs$oa$oama$ecm$SearchEntity$get_list(){
    return this.field('list');
}
function nc$bs$oa$oama$ecm$SearchEntity$set_list(value){
    return this.field('list',value);
}
function nc$bs$oa$oama$ecm$SearchEntity$get_psncount(){
    return this.field('psncount');
}
function nc$bs$oa$oama$ecm$SearchEntity$set_psncount(value){
    return this.field('psncount',value);
}
nc.bs.oa.oama.ecm.SearchEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$SearchEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$SearchEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$SearchEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$SearchEntity$get_des,
    get_condition : nc$bs$oa$oama$ecm$SearchEntity$get_condition,
    set_condition : nc$bs$oa$oama$ecm$SearchEntity$get_condition,
    get_list : nc$bs$oa$oama$ecm$SearchEntity$get_list,
    set_list : nc$bs$oa$oama$ecm$SearchEntity$get_list,
    get_psncount : nc$bs$oa$oama$ecm$SearchEntity$get_psncount,
    set_psncount : nc$bs$oa$oama$ecm$SearchEntity$get_psncount
}
nc.bs.oa.oama.ecm.SearchEntity.registerClass('nc.bs.oa.oama.ecm.SearchEntity',UMP.UI.Mvc.Entity);
