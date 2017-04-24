Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.USERS = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.USERS.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$USERS$get_username(){
    return this.get('username');
}
function nc$bs$oa$oama$ecm$USERS$set_username(value){
    return this.set('username',value);
}
function nc$bs$oa$oama$ecm$USERS$get_password(){
    return this.get('password');
}
function nc$bs$oa$oama$ecm$USERS$set_password(value){
    return this.set('password',value);
}
function nc$bs$oa$oama$ecm$USERS$get_ishttps(){
    return this.get('ishttps');
}
function nc$bs$oa$oama$ecm$USERS$set_ishttps(value){
    return this.set('ishttps',value);
}
function nc$bs$oa$oama$ecm$USERS$get_autologin(){
    return this.get('autologin');
}
function nc$bs$oa$oama$ecm$USERS$set_autologin(value){
    return this.set('autologin',value);
}
function nc$bs$oa$oama$ecm$USERS$get_ip(){
    return this.get('ip');
}
function nc$bs$oa$oama$ecm$USERS$set_ip(value){
    return this.set('ip',value);
}
function nc$bs$oa$oama$ecm$USERS$get_port(){
    return this.get('port');
}
function nc$bs$oa$oama$ecm$USERS$set_port(value){
    return this.set('port',value);
}
nc.bs.oa.oama.ecm.USERS.prototype = {
    get_username : nc$bs$oa$oama$ecm$USERS$get_username,
    set_username : nc$bs$oa$oama$ecm$USERS$get_username,
    get_password : nc$bs$oa$oama$ecm$USERS$get_password,
    set_password : nc$bs$oa$oama$ecm$USERS$get_password,
    get_ishttps : nc$bs$oa$oama$ecm$USERS$get_ishttps,
    set_ishttps : nc$bs$oa$oama$ecm$USERS$get_ishttps,
    get_autologin : nc$bs$oa$oama$ecm$USERS$get_autologin,
    set_autologin : nc$bs$oa$oama$ecm$USERS$get_autologin,
    get_ip : nc$bs$oa$oama$ecm$USERS$get_ip,
    set_ip : nc$bs$oa$oama$ecm$USERS$get_ip,
    get_port : nc$bs$oa$oama$ecm$USERS$get_port,
    set_port : nc$bs$oa$oama$ecm$USERS$get_port
}
nc.bs.oa.oama.ecm.USERS.registerClass('nc.bs.oa.oama.ecm.USERS',UMP.UI.Mvc.Context);

