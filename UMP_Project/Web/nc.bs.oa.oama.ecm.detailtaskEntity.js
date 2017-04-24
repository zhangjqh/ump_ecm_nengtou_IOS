Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.detailtaskEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.detailtaskEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "detailtask", {"tag":"context","attributes":{"id":"detailtask","iscascade":"false","from-type":"context","filter":""},"fields":{"endtime":{"tag":"field","attributes":{"id":"endtime","type":"string"}},"supertaskid":{"tag":"field","attributes":{"id":"supertaskid","type":"string"}},"prioritycode":{"tag":"field","attributes":{"id":"prioritycode","type":"string"}},"starttime":{"tag":"field","attributes":{"id":"starttime","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"exammanstructlist":{"tag":"fieldset","attributes":{"id":"exammanstructlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"persontwo","type":"string","parent-field":"","from-type":"context"},"fields":{"staffid":{"tag":"field","attributes":{"id":"staffid","type":"string"}},"staffname":{"tag":"field","attributes":{"id":"staffname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"chargername":{"tag":"field","attributes":{"id":"chargername","type":"string"}},"remark":{"tag":"field","attributes":{"id":"remark","type":"string"}},"taskid":{"tag":"field","attributes":{"id":"taskid","type":"string"}},"taskstatecode":{"tag":"field","attributes":{"id":"taskstatecode","type":"string"}},"chargerid":{"tag":"field","attributes":{"id":"chargerid","type":"string"}},"taskcontent":{"tag":"field","attributes":{"id":"taskcontent","type":"string"}},"remindlist":{"tag":"fieldset","attributes":{"id":"remindlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"remind","type":"string","parent-field":"","from-type":"context"},"fields":{"remindname":{"tag":"field","attributes":{"id":"remindname","type":"string"}},"remindid":{"tag":"field","attributes":{"id":"remindid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"supertaskname":{"tag":"field","attributes":{"id":"supertaskname","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"taskname":{"tag":"field","attributes":{"id":"taskname","type":"string"}},"completestandard":{"tag":"field","attributes":{"id":"completestandard","type":"string"}},"assistantstructlist":{"tag":"fieldset","attributes":{"id":"assistantstructlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"person","type":"string","parent-field":"","from-type":"context"},"fields":{"staffid":{"tag":"field","attributes":{"id":"staffid","type":"string"}},"staffname":{"tag":"field","attributes":{"id":"staffname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskid(){
    return this.field('taskid');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskid(value){
    return this.field('taskid',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskname(){
    return this.field('taskname');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskname(value){
    return this.field('taskname',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_starttime(){
    return this.field('starttime');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_starttime(value){
    return this.field('starttime',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_endtime(){
    return this.field('endtime');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_endtime(value){
    return this.field('endtime',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_priority(){
    return this.field('priority');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_priority(value){
    return this.field('priority',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_prioritycode(){
    return this.field('prioritycode');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_prioritycode(value){
    return this.field('prioritycode',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstate(){
    return this.field('taskstate');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskstate(value){
    return this.field('taskstate',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstatecode(){
    return this.field('taskstatecode');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskstatecode(value){
    return this.field('taskstatecode',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_chargername(){
    return this.field('chargername');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_chargername(value){
    return this.field('chargername',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_chargerid(){
    return this.field('chargerid');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_chargerid(value){
    return this.field('chargerid',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskschedule(){
    return this.field('taskschedule');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskschedule(value){
    return this.field('taskschedule',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_taskcontent(){
    return this.field('taskcontent');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_taskcontent(value){
    return this.field('taskcontent',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_remark(){
    return this.field('remark');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_remark(value){
    return this.field('remark',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_completestandard(){
    return this.field('completestandard');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_completestandard(value){
    return this.field('completestandard',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskname(){
    return this.field('supertaskname');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_supertaskname(value){
    return this.field('supertaskname',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskid(){
    return this.field('supertaskid');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_supertaskid(value){
    return this.field('supertaskid',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_remindlist(){
    return this.field('remindlist');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_remindlist(value){
    return this.field('remindlist',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_assistantstructlist(){
    return this.field('assistantstructlist');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_assistantstructlist(value){
    return this.field('assistantstructlist',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_exammanstructlist(){
    return this.field('exammanstructlist');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_exammanstructlist(value){
    return this.field('exammanstructlist',value);
}
function nc$bs$oa$oama$ecm$detailtaskEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$detailtaskEntity$set_ts(value){
    return this.field('ts',value);
}
nc.bs.oa.oama.ecm.detailtaskEntity.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskid,
    get_taskname : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskname,
    get_starttime : nc$bs$oa$oama$ecm$detailtaskEntity$get_starttime,
    set_starttime : nc$bs$oa$oama$ecm$detailtaskEntity$get_starttime,
    get_endtime : nc$bs$oa$oama$ecm$detailtaskEntity$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$detailtaskEntity$get_endtime,
    get_priority : nc$bs$oa$oama$ecm$detailtaskEntity$get_priority,
    set_priority : nc$bs$oa$oama$ecm$detailtaskEntity$get_priority,
    get_prioritycode : nc$bs$oa$oama$ecm$detailtaskEntity$get_prioritycode,
    set_prioritycode : nc$bs$oa$oama$ecm$detailtaskEntity$get_prioritycode,
    get_taskstate : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstate,
    get_taskstatecode : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstatecode,
    set_taskstatecode : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskstatecode,
    get_chargername : nc$bs$oa$oama$ecm$detailtaskEntity$get_chargername,
    set_chargername : nc$bs$oa$oama$ecm$detailtaskEntity$get_chargername,
    get_chargerid : nc$bs$oa$oama$ecm$detailtaskEntity$get_chargerid,
    set_chargerid : nc$bs$oa$oama$ecm$detailtaskEntity$get_chargerid,
    get_taskschedule : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskschedule,
    get_taskcontent : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskcontent,
    set_taskcontent : nc$bs$oa$oama$ecm$detailtaskEntity$get_taskcontent,
    get_remark : nc$bs$oa$oama$ecm$detailtaskEntity$get_remark,
    set_remark : nc$bs$oa$oama$ecm$detailtaskEntity$get_remark,
    get_completestandard : nc$bs$oa$oama$ecm$detailtaskEntity$get_completestandard,
    set_completestandard : nc$bs$oa$oama$ecm$detailtaskEntity$get_completestandard,
    get_supertaskname : nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskname,
    set_supertaskname : nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskname,
    get_supertaskid : nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskid,
    set_supertaskid : nc$bs$oa$oama$ecm$detailtaskEntity$get_supertaskid,
    get_remindlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_remindlist,
    set_remindlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_remindlist,
    get_assistantstructlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_assistantstructlist,
    set_assistantstructlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_assistantstructlist,
    get_exammanstructlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_exammanstructlist,
    set_exammanstructlist : nc$bs$oa$oama$ecm$detailtaskEntity$get_exammanstructlist,
    get_ts : nc$bs$oa$oama$ecm$detailtaskEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$detailtaskEntity$get_ts
}
nc.bs.oa.oama.ecm.detailtaskEntity.registerClass('nc.bs.oa.oama.ecm.detailtaskEntity',UMP.UI.Mvc.Entity);
