Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.topliplist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.topliplist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$topliplist$get_personal(){
    return this.get('personal');
}
function nc$bs$oa$oama$ecm$topliplist$set_personal(value){
    return this.set('personal',value);
}
function nc$bs$oa$oama$ecm$topliplist$get_response(){
    return this.get('response');
}
function nc$bs$oa$oama$ecm$topliplist$set_response(value){
    return this.set('response',value);
}
function nc$bs$oa$oama$ecm$topliplist$get_crowes(){
    return this.get('crowes');
}
function nc$bs$oa$oama$ecm$topliplist$set_crowes(value){
    return this.set('crowes',value);
}
function nc$bs$oa$oama$ecm$topliplist$get_view(){
    return this.get('view');
}
function nc$bs$oa$oama$ecm$topliplist$set_view(value){
    return this.set('view',value);
}
nc.bs.oa.oama.ecm.topliplist.prototype = {
    get_personal : nc$bs$oa$oama$ecm$topliplist$get_personal,
    set_personal : nc$bs$oa$oama$ecm$topliplist$get_personal,
    get_response : nc$bs$oa$oama$ecm$topliplist$get_response,
    set_response : nc$bs$oa$oama$ecm$topliplist$get_response,
    get_crowes : nc$bs$oa$oama$ecm$topliplist$get_crowes,
    set_crowes : nc$bs$oa$oama$ecm$topliplist$get_crowes,
    get_view : nc$bs$oa$oama$ecm$topliplist$get_view,
    set_view : nc$bs$oa$oama$ecm$topliplist$get_view
}
nc.bs.oa.oama.ecm.topliplist.registerClass('nc.bs.oa.oama.ecm.topliplist',UMP.UI.Mvc.Context);

