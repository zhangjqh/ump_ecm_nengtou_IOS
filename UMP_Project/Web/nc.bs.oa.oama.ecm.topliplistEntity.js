Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.topliplistEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.topliplistEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "topliplist", {"tag":"context","attributes":{"id":"topliplist","iscascade":"false","from-type":"context","filter":""},"fields":{"response":{"tag":"field","attributes":{"id":"response","type":"string"}},"personal":{"tag":"field","attributes":{"id":"personal","type":"string"}},"crowes":{"tag":"field","attributes":{"id":"crowes","type":"string"}},"view":{"tag":"field","attributes":{"id":"view","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$topliplistEntity$get_personal(){
    return this.field('personal');
}
function nc$bs$oa$oama$ecm$topliplistEntity$set_personal(value){
    return this.field('personal',value);
}
function nc$bs$oa$oama$ecm$topliplistEntity$get_response(){
    return this.field('response');
}
function nc$bs$oa$oama$ecm$topliplistEntity$set_response(value){
    return this.field('response',value);
}
function nc$bs$oa$oama$ecm$topliplistEntity$get_crowes(){
    return this.field('crowes');
}
function nc$bs$oa$oama$ecm$topliplistEntity$set_crowes(value){
    return this.field('crowes',value);
}
function nc$bs$oa$oama$ecm$topliplistEntity$get_view(){
    return this.field('view');
}
function nc$bs$oa$oama$ecm$topliplistEntity$set_view(value){
    return this.field('view',value);
}
nc.bs.oa.oama.ecm.topliplistEntity.prototype = {
    get_personal : nc$bs$oa$oama$ecm$topliplistEntity$get_personal,
    set_personal : nc$bs$oa$oama$ecm$topliplistEntity$get_personal,
    get_response : nc$bs$oa$oama$ecm$topliplistEntity$get_response,
    set_response : nc$bs$oa$oama$ecm$topliplistEntity$get_response,
    get_crowes : nc$bs$oa$oama$ecm$topliplistEntity$get_crowes,
    set_crowes : nc$bs$oa$oama$ecm$topliplistEntity$get_crowes,
    get_view : nc$bs$oa$oama$ecm$topliplistEntity$get_view,
    set_view : nc$bs$oa$oama$ecm$topliplistEntity$get_view
}
nc.bs.oa.oama.ecm.topliplistEntity.registerClass('nc.bs.oa.oama.ecm.topliplistEntity',UMP.UI.Mvc.Entity);
