Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.conset = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.conset.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$conset$get_serverip(){
    return this.get('serverip');
}
function nc$bs$oa$oama$ecm$conset$set_serverip(value){
    return this.set('serverip',value);
}
function nc$bs$oa$oama$ecm$conset$get_port(){
    return this.get('port');
}
function nc$bs$oa$oama$ecm$conset$set_port(value){
    return this.set('port',value);
}
nc.bs.oa.oama.ecm.conset.prototype = {
    get_serverip : nc$bs$oa$oama$ecm$conset$get_serverip,
    set_serverip : nc$bs$oa$oama$ecm$conset$get_serverip,
    get_port : nc$bs$oa$oama$ecm$conset$get_port,
    set_port : nc$bs$oa$oama$ecm$conset$get_port
}
nc.bs.oa.oama.ecm.conset.registerClass('nc.bs.oa.oama.ecm.conset',UMP.UI.Mvc.Context);

