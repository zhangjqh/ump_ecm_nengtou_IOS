Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.consetEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.consetEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "conset", {"tag":"context","attributes":{"id":"conset","iscascade":"false","from-type":"context","filter":""},"fields":{"port":{"tag":"field","attributes":{"id":"port","type":"string"}},"serverip":{"tag":"field","attributes":{"id":"serverip","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$consetEntity$get_serverip(){
    return this.field('serverip');
}
function nc$bs$oa$oama$ecm$consetEntity$set_serverip(value){
    return this.field('serverip',value);
}
function nc$bs$oa$oama$ecm$consetEntity$get_port(){
    return this.field('port');
}
function nc$bs$oa$oama$ecm$consetEntity$set_port(value){
    return this.field('port',value);
}
nc.bs.oa.oama.ecm.consetEntity.prototype = {
    get_serverip : nc$bs$oa$oama$ecm$consetEntity$get_serverip,
    set_serverip : nc$bs$oa$oama$ecm$consetEntity$get_serverip,
    get_port : nc$bs$oa$oama$ecm$consetEntity$get_port,
    set_port : nc$bs$oa$oama$ecm$consetEntity$get_port
}
nc.bs.oa.oama.ecm.consetEntity.registerClass('nc.bs.oa.oama.ecm.consetEntity',UMP.UI.Mvc.Entity);
