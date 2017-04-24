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
function nc$bs$oa$oama$ecm$personaltask$get_taskname(){
    return this.get('taskname');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskname(value){
    return this.set('taskname',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$personaltask$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_taskcode(){
    return this.get('taskcode');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskcode(value){
    return this.set('taskcode',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_taskcontent(){
    return this.get('taskcontent');
}
function nc$bs$oa$oama$ecm$personaltask$set_taskcontent(value){
    return this.set('taskcontent',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_completestandard(){
    return this.get('completestandard');
}
function nc$bs$oa$oama$ecm$personaltask$set_completestandard(value){
    return this.set('completestandard',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_remark(){
    return this.get('remark');
}
function nc$bs$oa$oama$ecm$personaltask$set_remark(value){
    return this.set('remark',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$personaltask$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_attachlist(){
    return this.get('attachlist');
}
function nc$bs$oa$oama$ecm$personaltask$set_attachlist(value){
    return this.set('attachlist',value);
}
function nc$bs$oa$oama$ecm$personaltask$get_attachmentuuid(){
    return this.get('attachmentuuid');
}
function nc$bs$oa$oama$ecm$personaltask$set_attachmentuuid(value){
    return this.set('attachmentuuid',value);
}
nc.bs.oa.oama.ecm.personaltask.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$personaltask$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$personaltask$get_taskid,
    get_startdate : nc$bs$oa$oama$ecm$personaltask$get_startdate,
    set_startdate : nc$bs$oa$oama$ecm$personaltask$get_startdate,
    get_enddate : nc$bs$oa$oama$ecm$personaltask$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$personaltask$get_enddate,
    get_taskname : nc$bs$oa$oama$ecm$personaltask$get_taskname,
    set_taskname : nc$bs$oa$oama$ecm$personaltask$get_taskname,
    get_priority : nc$bs$oa$oama$ecm$personaltask$get_priority,
    set_priority : nc$bs$oa$oama$ecm$personaltask$get_priority,
    get_taskstate : nc$bs$oa$oama$ecm$personaltask$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$personaltask$get_taskstate,
    get_taskcode : nc$bs$oa$oama$ecm$personaltask$get_taskcode,
    set_taskcode : nc$bs$oa$oama$ecm$personaltask$get_taskcode,
    get_taskcontent : nc$bs$oa$oama$ecm$personaltask$get_taskcontent,
    set_taskcontent : nc$bs$oa$oama$ecm$personaltask$get_taskcontent,
    get_completestandard : nc$bs$oa$oama$ecm$personaltask$get_completestandard,
    set_completestandard : nc$bs$oa$oama$ecm$personaltask$get_completestandard,
    get_remark : nc$bs$oa$oama$ecm$personaltask$get_remark,
    set_remark : nc$bs$oa$oama$ecm$personaltask$get_remark,
    get_ts : nc$bs$oa$oama$ecm$personaltask$get_ts,
    set_ts : nc$bs$oa$oama$ecm$personaltask$get_ts,
    get_attachlist : nc$bs$oa$oama$ecm$personaltask$get_attachlist,
    set_attachlist : nc$bs$oa$oama$ecm$personaltask$get_attachlist,
    get_attachmentuuid : nc$bs$oa$oama$ecm$personaltask$get_attachmentuuid,
    set_attachmentuuid : nc$bs$oa$oama$ecm$personaltask$get_attachmentuuid
}
nc.bs.oa.oama.ecm.personaltask.registerClass('nc.bs.oa.oama.ecm.personaltask',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.attachment = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.attachment.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$attachment$get_fileid(){
    return this.get('fileid');
}
function nc$bs$oa$oama$ecm$attachment$set_fileid(value){
    return this.set('fileid',value);
}
function nc$bs$oa$oama$ecm$attachment$get_filesize(){
    return this.get('filesize');
}
function nc$bs$oa$oama$ecm$attachment$set_filesize(value){
    return this.set('filesize',value);
}
function nc$bs$oa$oama$ecm$attachment$get_filename(){
    return this.get('filename');
}
function nc$bs$oa$oama$ecm$attachment$set_filename(value){
    return this.set('filename',value);
}
function nc$bs$oa$oama$ecm$attachment$get_filetype(){
    return this.get('filetype');
}
function nc$bs$oa$oama$ecm$attachment$set_filetype(value){
    return this.set('filetype',value);
}
function nc$bs$oa$oama$ecm$attachment$get_downflag(){
    return this.get('downflag');
}
function nc$bs$oa$oama$ecm$attachment$set_downflag(value){
    return this.set('downflag',value);
}
function nc$bs$oa$oama$ecm$attachment$get_file(){
    return this.get('file');
}
function nc$bs$oa$oama$ecm$attachment$set_file(value){
    return this.set('file',value);
}
nc.bs.oa.oama.ecm.attachment.prototype = {
    get_fileid : nc$bs$oa$oama$ecm$attachment$get_fileid,
    set_fileid : nc$bs$oa$oama$ecm$attachment$get_fileid,
    get_filesize : nc$bs$oa$oama$ecm$attachment$get_filesize,
    set_filesize : nc$bs$oa$oama$ecm$attachment$get_filesize,
    get_filename : nc$bs$oa$oama$ecm$attachment$get_filename,
    set_filename : nc$bs$oa$oama$ecm$attachment$get_filename,
    get_filetype : nc$bs$oa$oama$ecm$attachment$get_filetype,
    set_filetype : nc$bs$oa$oama$ecm$attachment$get_filetype,
    get_downflag : nc$bs$oa$oama$ecm$attachment$get_downflag,
    set_downflag : nc$bs$oa$oama$ecm$attachment$get_downflag,
    get_file : nc$bs$oa$oama$ecm$attachment$get_file,
    set_file : nc$bs$oa$oama$ecm$attachment$get_file
}
nc.bs.oa.oama.ecm.attachment.registerClass('nc.bs.oa.oama.ecm.attachment',UMP.UI.Mvc.Context);

