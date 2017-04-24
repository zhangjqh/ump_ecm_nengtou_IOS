Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.detailtask = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.detailtask.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$detailtask$get_taskid(){
    return this.get('taskid');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskid(value){
    return this.set('taskid',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_taskname(){
    return this.get('taskname');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskname(value){
    return this.set('taskname',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_starttime(){
    return this.get('starttime');
}
function nc$bs$oa$oama$ecm$detailtask$set_starttime(value){
    return this.set('starttime',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_endtime(){
    return this.get('endtime');
}
function nc$bs$oa$oama$ecm$detailtask$set_endtime(value){
    return this.set('endtime',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$detailtask$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_prioritycode(){
    return this.get('prioritycode');
}
function nc$bs$oa$oama$ecm$detailtask$set_prioritycode(value){
    return this.set('prioritycode',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_taskstatecode(){
    return this.get('taskstatecode');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskstatecode(value){
    return this.set('taskstatecode',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_chargername(){
    return this.get('chargername');
}
function nc$bs$oa$oama$ecm$detailtask$set_chargername(value){
    return this.set('chargername',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_chargerid(){
    return this.get('chargerid');
}
function nc$bs$oa$oama$ecm$detailtask$set_chargerid(value){
    return this.set('chargerid',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_taskschedule(){
    return this.get('taskschedule');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskschedule(value){
    return this.set('taskschedule',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_taskcontent(){
    return this.get('taskcontent');
}
function nc$bs$oa$oama$ecm$detailtask$set_taskcontent(value){
    return this.set('taskcontent',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_remark(){
    return this.get('remark');
}
function nc$bs$oa$oama$ecm$detailtask$set_remark(value){
    return this.set('remark',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_completestandard(){
    return this.get('completestandard');
}
function nc$bs$oa$oama$ecm$detailtask$set_completestandard(value){
    return this.set('completestandard',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_supertaskname(){
    return this.get('supertaskname');
}
function nc$bs$oa$oama$ecm$detailtask$set_supertaskname(value){
    return this.set('supertaskname',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_supertaskid(){
    return this.get('supertaskid');
}
function nc$bs$oa$oama$ecm$detailtask$set_supertaskid(value){
    return this.set('supertaskid',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_remindlist(){
    return this.get('remindlist');
}
function nc$bs$oa$oama$ecm$detailtask$set_remindlist(value){
    return this.set('remindlist',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_assistantstructlist(){
    return this.get('assistantstructlist');
}
function nc$bs$oa$oama$ecm$detailtask$set_assistantstructlist(value){
    return this.set('assistantstructlist',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_exammanstructlist(){
    return this.get('exammanstructlist');
}
function nc$bs$oa$oama$ecm$detailtask$set_exammanstructlist(value){
    return this.set('exammanstructlist',value);
}
function nc$bs$oa$oama$ecm$detailtask$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$detailtask$set_ts(value){
    return this.set('ts',value);
}
nc.bs.oa.oama.ecm.detailtask.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$detailtask$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$detailtask$get_taskid,
    get_taskname : nc$bs$oa$oama$ecm$detailtask$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$detailtask$get_taskname,
    get_starttime : nc$bs$oa$oama$ecm$detailtask$get_starttime,
    set_starttime : nc$bs$oa$oama$ecm$detailtask$get_starttime,
    get_endtime : nc$bs$oa$oama$ecm$detailtask$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$detailtask$get_endtime,
    get_priority : nc$bs$oa$oama$ecm$detailtask$get_priority,
    set_priority : nc$bs$oa$oama$ecm$detailtask$get_priority,
    get_prioritycode : nc$bs$oa$oama$ecm$detailtask$get_prioritycode,
    set_prioritycode : nc$bs$oa$oama$ecm$detailtask$get_prioritycode,
    get_taskstate : nc$bs$oa$oama$ecm$detailtask$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$detailtask$get_taskstate,
    get_taskstatecode : nc$bs$oa$oama$ecm$detailtask$get_taskstatecode,
    set_taskstatecode : nc$bs$oa$oama$ecm$detailtask$get_taskstatecode,
    get_chargername : nc$bs$oa$oama$ecm$detailtask$get_chargername,
    set_chargername : nc$bs$oa$oama$ecm$detailtask$get_chargername,
    get_chargerid : nc$bs$oa$oama$ecm$detailtask$get_chargerid,
    set_chargerid : nc$bs$oa$oama$ecm$detailtask$get_chargerid,
    get_taskschedule : nc$bs$oa$oama$ecm$detailtask$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$detailtask$get_taskschedule,
    get_taskcontent : nc$bs$oa$oama$ecm$detailtask$get_taskcontent,
    set_taskcontent : nc$bs$oa$oama$ecm$detailtask$get_taskcontent,
    get_remark : nc$bs$oa$oama$ecm$detailtask$get_remark,
    set_remark : nc$bs$oa$oama$ecm$detailtask$get_remark,
    get_completestandard : nc$bs$oa$oama$ecm$detailtask$get_completestandard,
    set_completestandard : nc$bs$oa$oama$ecm$detailtask$get_completestandard,
    get_supertaskname : nc$bs$oa$oama$ecm$detailtask$get_supertaskname,
    set_supertaskname : nc$bs$oa$oama$ecm$detailtask$get_supertaskname,
    get_supertaskid : nc$bs$oa$oama$ecm$detailtask$get_supertaskid,
    set_supertaskid : nc$bs$oa$oama$ecm$detailtask$get_supertaskid,
    get_remindlist : nc$bs$oa$oama$ecm$detailtask$get_remindlist,
    set_remindlist : nc$bs$oa$oama$ecm$detailtask$get_remindlist,
    get_assistantstructlist : nc$bs$oa$oama$ecm$detailtask$get_assistantstructlist,
    set_assistantstructlist : nc$bs$oa$oama$ecm$detailtask$get_assistantstructlist,
    get_exammanstructlist : nc$bs$oa$oama$ecm$detailtask$get_exammanstructlist,
    set_exammanstructlist : nc$bs$oa$oama$ecm$detailtask$get_exammanstructlist,
    get_ts : nc$bs$oa$oama$ecm$detailtask$get_ts,
    set_ts : nc$bs$oa$oama$ecm$detailtask$get_ts
}
nc.bs.oa.oama.ecm.detailtask.registerClass('nc.bs.oa.oama.ecm.detailtask',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.remind = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.remind.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$remind$get_remindid(){
    return this.get('remindid');
}
function nc$bs$oa$oama$ecm$remind$set_remindid(value){
    return this.set('remindid',value);
}
function nc$bs$oa$oama$ecm$remind$get_remindname(){
    return this.get('remindname');
}
function nc$bs$oa$oama$ecm$remind$set_remindname(value){
    return this.set('remindname',value);
}
nc.bs.oa.oama.ecm.remind.prototype = {
    get_remindid : nc$bs$oa$oama$ecm$remind$get_remindid,
    set_remindid : nc$bs$oa$oama$ecm$remind$get_remindid,
    get_remindname : nc$bs$oa$oama$ecm$remind$get_remindname,
    set_remindname : nc$bs$oa$oama$ecm$remind$get_remindname
}
nc.bs.oa.oama.ecm.remind.registerClass('nc.bs.oa.oama.ecm.remind',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.person = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.person.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$person$get_staffname(){
    return this.get('staffname');
}
function nc$bs$oa$oama$ecm$person$set_staffname(value){
    return this.set('staffname',value);
}
function nc$bs$oa$oama$ecm$person$get_staffid(){
    return this.get('staffid');
}
function nc$bs$oa$oama$ecm$person$set_staffid(value){
    return this.set('staffid',value);
}
nc.bs.oa.oama.ecm.person.prototype = {
    get_staffname : nc$bs$oa$oama$ecm$person$get_staffname,
    set_staffname : nc$bs$oa$oama$ecm$person$get_staffname,
    get_staffid : nc$bs$oa$oama$ecm$person$get_staffid,
    set_staffid : nc$bs$oa$oama$ecm$person$get_staffid
}
nc.bs.oa.oama.ecm.person.registerClass('nc.bs.oa.oama.ecm.person',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.persontwo = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.persontwo.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$persontwo$get_staffname(){
    return this.get('staffname');
}
function nc$bs$oa$oama$ecm$persontwo$set_staffname(value){
    return this.set('staffname',value);
}
function nc$bs$oa$oama$ecm$persontwo$get_staffid(){
    return this.get('staffid');
}
function nc$bs$oa$oama$ecm$persontwo$set_staffid(value){
    return this.set('staffid',value);
}
nc.bs.oa.oama.ecm.persontwo.prototype = {
    get_staffname : nc$bs$oa$oama$ecm$persontwo$get_staffname,
    set_staffname : nc$bs$oa$oama$ecm$persontwo$get_staffname,
    get_staffid : nc$bs$oa$oama$ecm$persontwo$get_staffid,
    set_staffid : nc$bs$oa$oama$ecm$persontwo$get_staffid
}
nc.bs.oa.oama.ecm.persontwo.registerClass('nc.bs.oa.oama.ecm.persontwo',UMP.UI.Mvc.Context);

