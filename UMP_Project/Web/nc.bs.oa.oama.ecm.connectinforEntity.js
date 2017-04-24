Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.connectinforEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.connectinforEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "connectinfor", {"tag":"context","attributes":{"id":"connectinfor","iscascade":"false","from-type":"context","filter":""},"fields":{"port":{"tag":"field","attributes":{"id":"port","type":"string"}},"ishttps":{"tag":"field","attributes":{"id":"ishttps","type":"string"}},"ip":{"tag":"field","attributes":{"id":"ip","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$connectinforEntity$get_ip(){
    return this.field('ip');
}
function nc$bs$oa$oama$ecm$connectinforEntity$set_ip(value){
    return this.field('ip',value);
}
function nc$bs$oa$oama$ecm$connectinforEntity$get_port(){
    return this.field('port');
}
function nc$bs$oa$oama$ecm$connectinforEntity$set_port(value){
    return this.field('port',value);
}
function nc$bs$oa$oama$ecm$connectinforEntity$get_ishttps(){
    return this.field('ishttps');
}
function nc$bs$oa$oama$ecm$connectinforEntity$set_ishttps(value){
    return this.field('ishttps',value);
}
nc.bs.oa.oama.ecm.connectinforEntity.prototype = {
    get_ip : nc$bs$oa$oama$ecm$connectinforEntity$get_ip,
    set_ip : nc$bs$oa$oama$ecm$connectinforEntity$get_ip,
    get_port : nc$bs$oa$oama$ecm$connectinforEntity$get_port,
    set_port : nc$bs$oa$oama$ecm$connectinforEntity$get_port,
    get_ishttps : nc$bs$oa$oama$ecm$connectinforEntity$get_ishttps,
    set_ishttps : nc$bs$oa$oama$ecm$connectinforEntity$get_ishttps
}
nc.bs.oa.oama.ecm.connectinforEntity.registerClass('nc.bs.oa.oama.ecm.connectinforEntity',UMP.UI.Mvc.Entity);
