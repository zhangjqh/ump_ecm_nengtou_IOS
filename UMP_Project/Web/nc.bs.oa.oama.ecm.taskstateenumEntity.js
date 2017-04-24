Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.taskstateenumEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.taskstateenumEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "taskstateenum", {"tag":"context","attributes":{"id":"taskstateenum","iscascade":"false","from-type":"context","filter":""},"fields":{"enumlist":{"tag":"fieldset","attributes":{"id":"enumlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"enumtype","type":"string","parent-field":"","from-type":"context"},"fields":{"enumname":{"tag":"field","attributes":{"id":"enumname","type":"string"}},"enumid":{"tag":"field","attributes":{"id":"enumid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"enumid":{"tag":"field","attributes":{"id":"enumid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumid(){
    return this.field('enumid');
}
function nc$bs$oa$oama$ecm$taskstateenumEntity$set_enumid(value){
    return this.field('enumid',value);
}
function nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumlist(){
    return this.field('enumlist');
}
function nc$bs$oa$oama$ecm$taskstateenumEntity$set_enumlist(value){
    return this.field('enumlist',value);
}
nc.bs.oa.oama.ecm.taskstateenumEntity.prototype = {
    get_enumid : nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumid,
    set_enumid : nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumid,
    get_enumlist : nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumlist,
    set_enumlist : nc$bs$oa$oama$ecm$taskstateenumEntity$get_enumlist
}
nc.bs.oa.oama.ecm.taskstateenumEntity.registerClass('nc.bs.oa.oama.ecm.taskstateenumEntity',UMP.UI.Mvc.Entity);
