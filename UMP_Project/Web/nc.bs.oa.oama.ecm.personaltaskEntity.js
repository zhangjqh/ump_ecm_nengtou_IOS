Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.personaltaskEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.personaltaskEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "personaltask", {"tag":"context","attributes":{"id":"personaltask","iscascade":"false","from-type":"context","filter":""},"fields":{"taskcode":{"tag":"field","attributes":{"id":"taskcode","type":"string"}},"attachmentuuid":{"tag":"field","attributes":{"id":"attachmentuuid","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"remark":{"tag":"field","attributes":{"id":"remark","type":"string"}},"taskid":{"tag":"field","attributes":{"id":"taskid","type":"string"}},"taskcontent":{"tag":"field","attributes":{"id":"taskcontent","type":"string"}},"startdate":{"tag":"field","attributes":{"id":"startdate","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"enddate":{"tag":"field","attributes":{"id":"enddate","type":"string"}},"taskname":{"tag":"field","attributes":{"id":"taskname","type":"string"}},"completestandard":{"tag":"field","attributes":{"id":"completestandard","type":"string"}},"attachlist":{"tag":"fieldset","attributes":{"id":"attachlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"attachment","type":"string","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"file":{"tag":"field","attributes":{"id":"file","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"filetype":{"tag":"field","attributes":{"id":"filetype","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_taskid(){
    return this.field('taskid');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_taskid(value){
    return this.field('taskid',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_startdate(){
    return this.field('startdate');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_startdate(value){
    return this.field('startdate',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_enddate(){
    return this.field('enddate');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_enddate(value){
    return this.field('enddate',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_taskname(){
    return this.field('taskname');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_taskname(value){
    return this.field('taskname',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_priority(){
    return this.field('priority');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_priority(value){
    return this.field('priority',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_taskstate(){
    return this.field('taskstate');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_taskstate(value){
    return this.field('taskstate',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcode(){
    return this.field('taskcode');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_taskcode(value){
    return this.field('taskcode',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcontent(){
    return this.field('taskcontent');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_taskcontent(value){
    return this.field('taskcontent',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_completestandard(){
    return this.field('completestandard');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_completestandard(value){
    return this.field('completestandard',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_remark(){
    return this.field('remark');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_remark(value){
    return this.field('remark',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_ts(value){
    return this.field('ts',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_attachlist(){
    return this.field('attachlist');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_attachlist(value){
    return this.field('attachlist',value);
}
function nc$bs$oa$oama$ecm$personaltaskEntity$get_attachmentuuid(){
    return this.field('attachmentuuid');
}
function nc$bs$oa$oama$ecm$personaltaskEntity$set_attachmentuuid(value){
    return this.field('attachmentuuid',value);
}
nc.bs.oa.oama.ecm.personaltaskEntity.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskid,
    get_startdate : nc$bs$oa$oama$ecm$personaltaskEntity$get_startdate,
    set_startdate : nc$bs$oa$oama$ecm$personaltaskEntity$get_startdate,
    get_enddate : nc$bs$oa$oama$ecm$personaltaskEntity$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$personaltaskEntity$get_enddate,
    get_taskname : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskname,
    get_priority : nc$bs$oa$oama$ecm$personaltaskEntity$get_priority,
    set_priority : nc$bs$oa$oama$ecm$personaltaskEntity$get_priority,
    get_taskstate : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskstate,
    get_taskcode : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcode,
    set_taskcode : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcode,
    get_taskcontent : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcontent,
    set_taskcontent : nc$bs$oa$oama$ecm$personaltaskEntity$get_taskcontent,
    get_completestandard : nc$bs$oa$oama$ecm$personaltaskEntity$get_completestandard,
    set_completestandard : nc$bs$oa$oama$ecm$personaltaskEntity$get_completestandard,
    get_remark : nc$bs$oa$oama$ecm$personaltaskEntity$get_remark,
    set_remark : nc$bs$oa$oama$ecm$personaltaskEntity$get_remark,
    get_ts : nc$bs$oa$oama$ecm$personaltaskEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$personaltaskEntity$get_ts,
    get_attachlist : nc$bs$oa$oama$ecm$personaltaskEntity$get_attachlist,
    set_attachlist : nc$bs$oa$oama$ecm$personaltaskEntity$get_attachlist,
    get_attachmentuuid : nc$bs$oa$oama$ecm$personaltaskEntity$get_attachmentuuid,
    set_attachmentuuid : nc$bs$oa$oama$ecm$personaltaskEntity$get_attachmentuuid
}
nc.bs.oa.oama.ecm.personaltaskEntity.registerClass('nc.bs.oa.oama.ecm.personaltaskEntity',UMP.UI.Mvc.Entity);
