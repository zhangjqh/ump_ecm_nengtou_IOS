Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reportconfirmdetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.reportconfirmdetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "reportconfirmdetail", {"tag":"context","attributes":{"id":"reportconfirmdetail","iscascade":"false","from-type":"context","filter":""},"fields":{"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"count":{"tag":"field","attributes":{"id":"count","type":"string"}},"reporttime":{"tag":"field","attributes":{"id":"reporttime","type":"string"}},"reportstate":{"tag":"field","attributes":{"id":"reportstate","type":"string"}},"taskid":{"tag":"field","attributes":{"id":"taskid","type":"string"}},"reportid":{"tag":"field","attributes":{"id":"reportid","type":"string"}},"completionnew":{"tag":"field","attributes":{"id":"completionnew","type":"string"}},"reportname":{"tag":"field","attributes":{"id":"reportname","type":"string"}},"reportheme":{"tag":"field","attributes":{"id":"reportheme","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportid(){
    return this.field('reportid');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_reportid(value){
    return this.field('reportid',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportheme(){
    return this.field('reportheme');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_reportheme(value){
    return this.field('reportheme',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportname(){
    return this.field('reportname');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_reportname(value){
    return this.field('reportname',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reporttime(){
    return this.field('reporttime');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_reporttime(value){
    return this.field('reporttime',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskstate(){
    return this.field('taskstate');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_taskstate(value){
    return this.field('taskstate',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskschedule(){
    return this.field('taskschedule');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_taskschedule(value){
    return this.field('taskschedule',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_completionnew(){
    return this.field('completionnew');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_completionnew(value){
    return this.field('completionnew',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskid(){
    return this.field('taskid');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_taskid(value){
    return this.field('taskid',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_count(){
    return this.field('count');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_count(value){
    return this.field('count',value);
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportstate(){
    return this.field('reportstate');
}
function nc$bs$oa$oama$ecm$reportconfirmdetailEntity$set_reportstate(value){
    return this.field('reportstate',value);
}
nc.bs.oa.oama.ecm.reportconfirmdetailEntity.prototype = {
    get_reportid : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportid,
    set_reportid : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportid,
    get_reportheme : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportheme,
    set_reportheme : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportheme,
    get_reportname : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportname,
    set_reportname : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportname,
    get_reporttime : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reporttime,
    set_reporttime : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reporttime,
    get_taskstate : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskstate,
    get_taskschedule : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskschedule,
    get_completionnew : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_completionnew,
    set_completionnew : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_completionnew,
    get_taskid : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_taskid,
    get_count : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_count,
    set_count : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_count,
    get_reportstate : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportstate,
    set_reportstate : nc$bs$oa$oama$ecm$reportconfirmdetailEntity$get_reportstate
}
nc.bs.oa.oama.ecm.reportconfirmdetailEntity.registerClass('nc.bs.oa.oama.ecm.reportconfirmdetailEntity',UMP.UI.Mvc.Entity);
