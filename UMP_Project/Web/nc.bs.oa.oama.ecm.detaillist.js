Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.detaillist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.detaillist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$detaillist$get_listid(){
    return this.get('listid');
}
function nc$bs$oa$oama$ecm$detaillist$set_listid(value){
    return this.set('listid',value);
}
function nc$bs$oa$oama$ecm$detaillist$get_tasklist(){
    return this.get('tasklist');
}
function nc$bs$oa$oama$ecm$detaillist$set_tasklist(value){
    return this.set('tasklist',value);
}
nc.bs.oa.oama.ecm.detaillist.prototype = {
    get_listid : nc$bs$oa$oama$ecm$detaillist$get_listid,
    set_listid : nc$bs$oa$oama$ecm$detaillist$get_listid,
    get_tasklist : nc$bs$oa$oama$ecm$detaillist$get_tasklist,
    set_tasklist : nc$bs$oa$oama$ecm$detaillist$get_tasklist
}
nc.bs.oa.oama.ecm.detaillist.registerClass('nc.bs.oa.oama.ecm.detaillist',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.task = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.task.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$task$get_taskid(){
    return this.get('taskid');
}
function nc$bs$oa$oama$ecm$task$set_taskid(value){
    return this.set('taskid',value);
}
function nc$bs$oa$oama$ecm$task$get_taskname(){
    return this.get('taskname');
}
function nc$bs$oa$oama$ecm$task$set_taskname(value){
    return this.set('taskname',value);
}
function nc$bs$oa$oama$ecm$task$get_startdate(){
    return this.get('startdate');
}
function nc$bs$oa$oama$ecm$task$set_startdate(value){
    return this.set('startdate',value);
}
function nc$bs$oa$oama$ecm$task$get_enddate(){
    return this.get('enddate');
}
function nc$bs$oa$oama$ecm$task$set_enddate(value){
    return this.set('enddate',value);
}
function nc$bs$oa$oama$ecm$task$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$task$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$task$get_prioritycode(){
    return this.get('prioritycode');
}
function nc$bs$oa$oama$ecm$task$set_prioritycode(value){
    return this.set('prioritycode',value);
}
function nc$bs$oa$oama$ecm$task$get_mewtask(){
    return this.get('mewtask');
}
function nc$bs$oa$oama$ecm$task$set_mewtask(value){
    return this.set('mewtask',value);
}
function nc$bs$oa$oama$ecm$task$get_expired(){
    return this.get('expired');
}
function nc$bs$oa$oama$ecm$task$set_expired(value){
    return this.set('expired',value);
}
function nc$bs$oa$oama$ecm$task$get_urge(){
    return this.get('urge');
}
function nc$bs$oa$oama$ecm$task$set_urge(value){
    return this.set('urge',value);
}
function nc$bs$oa$oama$ecm$task$get_charger(){
    return this.get('charger');
}
function nc$bs$oa$oama$ecm$task$set_charger(value){
    return this.set('charger',value);
}
function nc$bs$oa$oama$ecm$task$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$task$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$task$get_taskshedue(){
    return this.get('taskshedue');
}
function nc$bs$oa$oama$ecm$task$set_taskshedue(value){
    return this.set('taskshedue',value);
}
nc.bs.oa.oama.ecm.task.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$task$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$task$get_taskid,
    get_taskname : nc$bs$oa$oama$ecm$task$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$task$get_taskname,
    get_startdate : nc$bs$oa$oama$ecm$task$get_startdate,
    set_startdate : nc$bs$oa$oama$ecm$task$get_startdate,
    get_enddate : nc$bs$oa$oama$ecm$task$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$task$get_enddate,
    get_priority : nc$bs$oa$oama$ecm$task$get_priority,
    set_priority : nc$bs$oa$oama$ecm$task$get_priority,
    get_prioritycode : nc$bs$oa$oama$ecm$task$get_prioritycode,
    set_prioritycode : nc$bs$oa$oama$ecm$task$get_prioritycode,
    get_mewtask : nc$bs$oa$oama$ecm$task$get_mewtask,
    set_mewtask : nc$bs$oa$oama$ecm$task$get_mewtask,
    get_expired : nc$bs$oa$oama$ecm$task$get_expired,
    set_expired : nc$bs$oa$oama$ecm$task$get_expired,
    get_urge : nc$bs$oa$oama$ecm$task$get_urge,
    set_urge : nc$bs$oa$oama$ecm$task$get_urge,
    get_charger : nc$bs$oa$oama$ecm$task$get_charger,
    set_charger : nc$bs$oa$oama$ecm$task$get_charger,
    get_taskstate : nc$bs$oa$oama$ecm$task$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$task$get_taskstate,
    get_taskshedue : nc$bs$oa$oama$ecm$task$get_taskshedue,
    set_taskshedue : nc$bs$oa$oama$ecm$task$get_taskshedue
}
nc.bs.oa.oama.ecm.task.registerClass('nc.bs.oa.oama.ecm.task',UMP.UI.Mvc.Context);

