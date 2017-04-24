Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.connectinfor = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.connectinfor.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$connectinfor$get_ip(){
    return this.get('ip');
}
function nc$bs$oa$oama$ecm$connectinfor$set_ip(value){
    return this.set('ip',value);
}
function nc$bs$oa$oama$ecm$connectinfor$get_port(){
    return this.get('port');
}
function nc$bs$oa$oama$ecm$connectinfor$set_port(value){
    return this.set('port',value);
}
function nc$bs$oa$oama$ecm$connectinfor$get_ishttps(){
    return this.get('ishttps');
}
function nc$bs$oa$oama$ecm$connectinfor$set_ishttps(value){
    return this.set('ishttps',value);
}
nc.bs.oa.oama.ecm.connectinfor.prototype = {
    get_ip : nc$bs$oa$oama$ecm$connectinfor$get_ip,
    set_ip : nc$bs$oa$oama$ecm$connectinfor$get_ip,
    get_port : nc$bs$oa$oama$ecm$connectinfor$get_port,
    set_port : nc$bs$oa$oama$ecm$connectinfor$get_port,
    get_ishttps : nc$bs$oa$oama$ecm$connectinfor$get_ishttps,
    set_ishttps : nc$bs$oa$oama$ecm$connectinfor$get_ishttps
}
nc.bs.oa.oama.ecm.connectinfor.registerClass('nc.bs.oa.oama.ecm.connectinfor',UMP.UI.Mvc.Context);

