Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.remindTimeEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.remindTimeEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "remindTime", {"tag":"context","attributes":{"id":"remindTime","iscascade":"false","from-type":"context","filter":""},"fields":{"endtime":{"tag":"field","attributes":{"id":"endtime","type":"string"}},"begintime":{"tag":"field","attributes":{"id":"begintime","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$remindTimeEntity$get_begintime(){
    return this.field('begintime');
}
function nc$bs$oa$oama$ecm$remindTimeEntity$set_begintime(value){
    return this.field('begintime',value);
}
function nc$bs$oa$oama$ecm$remindTimeEntity$get_endtime(){
    return this.field('endtime');
}
function nc$bs$oa$oama$ecm$remindTimeEntity$set_endtime(value){
    return this.field('endtime',value);
}
nc.bs.oa.oama.ecm.remindTimeEntity.prototype = {
    get_begintime : nc$bs$oa$oama$ecm$remindTimeEntity$get_begintime,
    set_begintime : nc$bs$oa$oama$ecm$remindTimeEntity$get_begintime,
    get_endtime : nc$bs$oa$oama$ecm$remindTimeEntity$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$remindTimeEntity$get_endtime
}
nc.bs.oa.oama.ecm.remindTimeEntity.registerClass('nc.bs.oa.oama.ecm.remindTimeEntity',UMP.UI.Mvc.Entity);
