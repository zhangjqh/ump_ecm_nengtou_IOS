Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reportEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.reportEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "report", {"tag":"context","attributes":{"id":"report","iscascade":"false","from-type":"context","filter":""},"fields":{"attachmentuuid":{"tag":"field","attributes":{"id":"attachmentuuid","type":"string"}},"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"taskid":{"tag":"field","attributes":{"id":"taskid","type":"string"}},"attechmentlist":{"tag":"fieldset","attributes":{"id":"attechmentlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"fileattachment","type":"string","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"file":{"tag":"field","attributes":{"id":"file","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"filetype":{"tag":"field","attributes":{"id":"filetype","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"completion":{"tag":"field","attributes":{"id":"completion","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$reportEntity$get_taskid(){
    return this.field('taskid');
}
function nc$bs$oa$oama$ecm$reportEntity$set_taskid(value){
    return this.field('taskid',value);
}
function nc$bs$oa$oama$ecm$reportEntity$get_taskstate(){
    return this.field('taskstate');
}
function nc$bs$oa$oama$ecm$reportEntity$set_taskstate(value){
    return this.field('taskstate',value);
}
function nc$bs$oa$oama$ecm$reportEntity$get_taskschedule(){
    return this.field('taskschedule');
}
function nc$bs$oa$oama$ecm$reportEntity$set_taskschedule(value){
    return this.field('taskschedule',value);
}
function nc$bs$oa$oama$ecm$reportEntity$get_completion(){
    return this.field('completion');
}
function nc$bs$oa$oama$ecm$reportEntity$set_completion(value){
    return this.field('completion',value);
}
function nc$bs$oa$oama$ecm$reportEntity$get_attechmentlist(){
    return this.field('attechmentlist');
}
function nc$bs$oa$oama$ecm$reportEntity$set_attechmentlist(value){
    return this.field('attechmentlist',value);
}
function nc$bs$oa$oama$ecm$reportEntity$get_attachmentuuid(){
    return this.field('attachmentuuid');
}
function nc$bs$oa$oama$ecm$reportEntity$set_attachmentuuid(value){
    return this.field('attachmentuuid',value);
}
nc.bs.oa.oama.ecm.reportEntity.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$reportEntity$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$reportEntity$get_taskid,
    get_taskstate : nc$bs$oa$oama$ecm$reportEntity$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$reportEntity$get_taskstate,
    get_taskschedule : nc$bs$oa$oama$ecm$reportEntity$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$reportEntity$get_taskschedule,
    get_completion : nc$bs$oa$oama$ecm$reportEntity$get_completion,
    set_completion : nc$bs$oa$oama$ecm$reportEntity$get_completion,
    get_attechmentlist : nc$bs$oa$oama$ecm$reportEntity$get_attechmentlist,
    set_attechmentlist : nc$bs$oa$oama$ecm$reportEntity$get_attechmentlist,
    get_attachmentuuid : nc$bs$oa$oama$ecm$reportEntity$get_attachmentuuid,
    set_attachmentuuid : nc$bs$oa$oama$ecm$reportEntity$get_attachmentuuid
}
nc.bs.oa.oama.ecm.reportEntity.registerClass('nc.bs.oa.oama.ecm.reportEntity',UMP.UI.Mvc.Entity);
