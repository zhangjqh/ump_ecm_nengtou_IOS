Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainfototalEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.oainfototalEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "oainfototal", {"tag":"context","attributes":{"id":"oainfototal","iscascade":"false","from-type":"context","filter":""},"fields":{"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"initinfogrouplist":{"tag":"fieldset","attributes":{"id":"initinfogrouplist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"oacolumnlist","type":"string","parent-field":"","from-type":"context"},"fields":{"infosummarylist":{"tag":"fieldset","attributes":{"id":"infosummarylist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"oainfolist","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"infostyletype":{"tag":"field","attributes":{"id":"infostyletype","type":"string"}},"infoid":{"tag":"field","attributes":{"id":"infoid","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"infosummary":{"tag":"field","attributes":{"id":"infosummary","type":"string"}},"infotitle":{"tag":"field","attributes":{"id":"infotitle","type":"string"}},"publishdate":{"tag":"field","attributes":{"id":"publishdate","type":"string"}},"newinfoflag":{"tag":"field","attributes":{"id":"newinfoflag","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"initinfogroupid":{"tag":"field","attributes":{"id":"initinfogroupid","type":"string"}},"initinfogrouptitle":{"tag":"field","attributes":{"id":"initinfogrouptitle","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$oainfototalEntity$get_initinfogrouplist(){
    return this.field('initinfogrouplist');
}
function nc$bs$oa$oama$ecm$oainfototalEntity$set_initinfogrouplist(value){
    return this.field('initinfogrouplist',value);
}
function nc$bs$oa$oama$ecm$oainfototalEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$oainfototalEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$oainfototalEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$oainfototalEntity$set_des(value){
    return this.field('des',value);
}
nc.bs.oa.oama.ecm.oainfototalEntity.prototype = {
    get_initinfogrouplist : nc$bs$oa$oama$ecm$oainfototalEntity$get_initinfogrouplist,
    set_initinfogrouplist : nc$bs$oa$oama$ecm$oainfototalEntity$get_initinfogrouplist,
    get_flag : nc$bs$oa$oama$ecm$oainfototalEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oainfototalEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$oainfototalEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$oainfototalEntity$get_des
}
nc.bs.oa.oama.ecm.oainfototalEntity.registerClass('nc.bs.oa.oama.ecm.oainfototalEntity',UMP.UI.Mvc.Entity);
