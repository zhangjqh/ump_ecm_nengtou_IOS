Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainflistEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.oainflistEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "oainflist", {"tag":"context","attributes":{"id":"oainflist","iscascade":"false","from-type":"context","filter":""},"fields":{"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"oainfs":{"tag":"fieldset","attributes":{"id":"oainfs","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"oainf","type":"string","parent-field":"","from-type":"context"},"fields":{"infostyletype":{"tag":"field","attributes":{"id":"infostyletype","type":"string"}},"infoid":{"tag":"field","attributes":{"id":"infoid","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"infosummary":{"tag":"field","attributes":{"id":"infosummary","type":"string"}},"unread":{"tag":"field","attributes":{"id":"unread","type":"string"}},"infotitle":{"tag":"field","attributes":{"id":"infotitle","type":"string"}},"publishdate":{"tag":"field","attributes":{"id":"publishdate","type":"string"}},"newinfoflag":{"tag":"field","attributes":{"id":"newinfoflag","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"columnname":{"tag":"field","attributes":{"id":"columnname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$oainflistEntity$get_oainfs(){
    return this.field('oainfs');
}
function nc$bs$oa$oama$ecm$oainflistEntity$set_oainfs(value){
    return this.field('oainfs',value);
}
function nc$bs$oa$oama$ecm$oainflistEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$oainflistEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$oainflistEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$oainflistEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$oainflistEntity$get_columnname(){
    return this.field('columnname');
}
function nc$bs$oa$oama$ecm$oainflistEntity$set_columnname(value){
    return this.field('columnname',value);
}
nc.bs.oa.oama.ecm.oainflistEntity.prototype = {
    get_oainfs : nc$bs$oa$oama$ecm$oainflistEntity$get_oainfs,
    set_oainfs : nc$bs$oa$oama$ecm$oainflistEntity$get_oainfs,
    get_flag : nc$bs$oa$oama$ecm$oainflistEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oainflistEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$oainflistEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$oainflistEntity$get_des,
    get_columnname : nc$bs$oa$oama$ecm$oainflistEntity$get_columnname,
    set_columnname : nc$bs$oa$oama$ecm$oainflistEntity$get_columnname
}
nc.bs.oa.oama.ecm.oainflistEntity.registerClass('nc.bs.oa.oama.ecm.oainflistEntity',UMP.UI.Mvc.Entity);
