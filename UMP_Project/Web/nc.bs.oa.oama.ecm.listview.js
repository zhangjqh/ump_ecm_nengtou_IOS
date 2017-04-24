Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.listview = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.listview.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$listview$get_listid(){
    return this.get('listid');
}
function nc$bs$oa$oama$ecm$listview$set_listid(value){
    return this.set('listid',value);
}
function nc$bs$oa$oama$ecm$listview$get_tasklist(){
    return this.get('tasklist');
}
function nc$bs$oa$oama$ecm$listview$set_tasklist(value){
    return this.set('tasklist',value);
}
nc.bs.oa.oama.ecm.listview.prototype = {
    get_listid : nc$bs$oa$oama$ecm$listview$get_listid,
    set_listid : nc$bs$oa$oama$ecm$listview$get_listid,
    get_tasklist : nc$bs$oa$oama$ecm$listview$get_tasklist,
    set_tasklist : nc$bs$oa$oama$ecm$listview$get_tasklist
}
nc.bs.oa.oama.ecm.listview.registerClass('nc.bs.oa.oama.ecm.listview',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.personaltask = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.personaltask.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$personaltask$get_taskid(){
    return this.get('taskid');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskid(value){
    return this.set('taskid',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_startdate(){
    return this.get('startdate');
}
function nc$bs$oa$oama$ecm$personaltask$set_startdate(value){
    return this.set('startdate',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_enddate(){
    return this.get('enddate');
}
function nc$bs$oa$oama$ecm$personaltask$set_enddate(value){
    return this.set('enddate',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$personaltask$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_prioritycode(){
    return this.get('prioritycode');
}
function nc$bs$oa$oama$ecm$personaltask$set_prioritycode(value){
    return this.set('prioritycode',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_mewtask(){
    return this.get('mewtask');
}
function nc$bs$oa$oama$ecm$personaltask$set_mewtask(value){
    return this.set('mewtask',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_expride(){
    return this.get('expride');
}
function nc$bs$oa$oama$ecm$personaltask$set_expride(value){
    return this.set('expride',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_taskname(){
    return this.get('taskname');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskname(value){
    return this.set('taskname',value);
}
nc.bs.oa.oama.ecm.personaltask.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$personaltask$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$personaltask$get_taskid,
    get_startdate : nc$bs$oa$oama$ecm$personaltask$get_startdate,
    set_startdate : nc$bs$oa$oama$ecm$personaltask$get_startdate,
    get_enddate : nc$bs$oa$oama$ecm$personaltask$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$personaltask$get_enddate,
    get_priority : nc$bs$oa$oama$ecm$personaltask$get_priority,
    set_priority : nc$bs$oa$oama$ecm$personaltask$get_priority,
    get_prioritycode : nc$bs$oa$oama$ecm$personaltask$get_prioritycode,
    set_prioritycode : nc$bs$oa$oama$ecm$personaltask$get_prioritycode,
    get_mewtask : nc$bs$oa$oama$ecm$personaltask$get_mewtask,
    set_mewtask : nc$bs$oa$oama$ecm$personaltask$get_mewtask,
    get_expride : nc$bs$oa$oama$ecm$personaltask$get_expride,
    set_expride : nc$bs$oa$oama$ecm$personaltask$get_expride,
    get_taskstate : nc$bs$oa$oama$ecm$personaltask$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$personaltask$get_taskstate,
    get_taskname : nc$bs$oa$oama$ecm$personaltask$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$personaltask$get_taskname
}
nc.bs.oa.oama.ecm.personaltask.registerClass('nc.bs.oa.oama.ecm.personaltask',UMP.UI.Mvc.Context);

