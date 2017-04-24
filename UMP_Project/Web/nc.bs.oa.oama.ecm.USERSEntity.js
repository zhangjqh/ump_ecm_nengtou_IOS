Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.USERSEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.USERSEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "USERS", {"tag":"context","attributes":{"id":"USERS","iscascade":"false","from-type":"context","filter":""},"fields":{"port":{"tag":"field","attributes":{"id":"port","type":"string"}},"username":{"tag":"field","attributes":{"id":"username","type":"string"}},"ishttps":{"tag":"field","attributes":{"id":"ishttps","type":"string"}},"autologin":{"tag":"field","attributes":{"id":"autologin","type":"string"}},"password":{"tag":"field","attributes":{"id":"password","type":"string"}},"ip":{"tag":"field","attributes":{"id":"ip","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$USERSEntity$get_username(){
    return this.field('username');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_username(value){
    return this.field('username',value);
}
function nc$bs$oa$oama$ecm$USERSEntity$get_password(){
    return this.field('password');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_password(value){
    return this.field('password',value);
}
function nc$bs$oa$oama$ecm$USERSEntity$get_ishttps(){
    return this.field('ishttps');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_ishttps(value){
    return this.field('ishttps',value);
}
function nc$bs$oa$oama$ecm$USERSEntity$get_autologin(){
    return this.field('autologin');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_autologin(value){
    return this.field('autologin',value);
}
function nc$bs$oa$oama$ecm$USERSEntity$get_ip(){
    return this.field('ip');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_ip(value){
    return this.field('ip',value);
}
function nc$bs$oa$oama$ecm$USERSEntity$get_port(){
    return this.field('port');
}
function nc$bs$oa$oama$ecm$USERSEntity$set_port(value){
    return this.field('port',value);
}
nc.bs.oa.oama.ecm.USERSEntity.prototype = {
    get_username : nc$bs$oa$oama$ecm$USERSEntity$get_username,
    set_username : nc$bs$oa$oama$ecm$USERSEntity$get_username,
    get_password : nc$bs$oa$oama$ecm$USERSEntity$get_password,
    set_password : nc$bs$oa$oama$ecm$USERSEntity$get_password,
    get_ishttps : nc$bs$oa$oama$ecm$USERSEntity$get_ishttps,
    set_ishttps : nc$bs$oa$oama$ecm$USERSEntity$get_ishttps,
    get_autologin : nc$bs$oa$oama$ecm$USERSEntity$get_autologin,
    set_autologin : nc$bs$oa$oama$ecm$USERSEntity$get_autologin,
    get_ip : nc$bs$oa$oama$ecm$USERSEntity$get_ip,
    set_ip : nc$bs$oa$oama$ecm$USERSEntity$get_ip,
    get_port : nc$bs$oa$oama$ecm$USERSEntity$get_port,
    set_port : nc$bs$oa$oama$ecm$USERSEntity$get_port
}
nc.bs.oa.oama.ecm.USERSEntity.registerClass('nc.bs.oa.oama.ecm.USERSEntity',UMP.UI.Mvc.Entity);
