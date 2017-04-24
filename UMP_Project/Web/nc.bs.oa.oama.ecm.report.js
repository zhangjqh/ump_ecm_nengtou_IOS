Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.report = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.report.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$report$get_taskid(){
    return this.get('taskid');
}
function nc$bs$oa$oama$ecm$report$set_taskid(value){
    return this.set('taskid',value);
}
function nc$bs$oa$oama$ecm$report$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$report$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$report$get_taskschedule(){
    return this.get('taskschedule');
}
function nc$bs$oa$oama$ecm$report$set_taskschedule(value){
    return this.set('taskschedule',value);
}
function nc$bs$oa$oama$ecm$report$get_completion(){
    return this.get('completion');
}
function nc$bs$oa$oama$ecm$report$set_completion(value){
    return this.set('completion',value);
}
function nc$bs$oa$oama$ecm$report$get_attechmentlist(){
    return this.get('attechmentlist');
}
function nc$bs$oa$oama$ecm$report$set_attechmentlist(value){
    return this.set('attechmentlist',value);
}
function nc$bs$oa$oama$ecm$report$get_attachmentuuid(){
    return this.get('attachmentuuid');
}
function nc$bs$oa$oama$ecm$report$set_attachmentuuid(value){
    return this.set('attachmentuuid',value);
}
nc.bs.oa.oama.ecm.report.prototype = {
    get_taskid : nc$bs$oa$oama$ecm$report$get_taskid,
    set_taskid : nc$bs$oa$oama$ecm$report$get_taskid,
    get_taskstate : nc$bs$oa$oama$ecm$report$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$report$get_taskstate,
    get_taskschedule : nc$bs$oa$oama$ecm$report$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$report$get_taskschedule,
    get_completion : nc$bs$oa$oama$ecm$report$get_completion,
    set_completion : nc$bs$oa$oama$ecm$report$get_completion,
    get_attechmentlist : nc$bs$oa$oama$ecm$report$get_attechmentlist,
    set_attechmentlist : nc$bs$oa$oama$ecm$report$get_attechmentlist,
    get_attachmentuuid : nc$bs$oa$oama$ecm$report$get_attachmentuuid,
    set_attachmentuuid : nc$bs$oa$oama$ecm$report$get_attachmentuuid
}
nc.bs.oa.oama.ecm.report.registerClass('nc.bs.oa.oama.ecm.report',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.fileattachment = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.fileattachment.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$fileattachment$get_filesize(){
    return this.get('filesize');
}
function nc$bs$oa$oama$ecm$fileattachment$set_filesize(value){
    return this.set('filesize',value);
}
function nc$bs$oa$oama$ecm$fileattachment$get_filename(){
    return this.get('filename');
}
function nc$bs$oa$oama$ecm$fileattachment$set_filename(value){
    return this.set('filename',value);
}
function nc$bs$oa$oama$ecm$fileattachment$get_filetype(){
    return this.get('filetype');
}
function nc$bs$oa$oama$ecm$fileattachment$set_filetype(value){
    return this.set('filetype',value);
}
function nc$bs$oa$oama$ecm$fileattachment$get_file(){
    return this.get('file');
}
function nc$bs$oa$oama$ecm$fileattachment$set_file(value){
    return this.set('file',value);
}
nc.bs.oa.oama.ecm.fileattachment.prototype = {
    get_filesize : nc$bs$oa$oama$ecm$fileattachment$get_filesize,
    set_filesize : nc$bs$oa$oama$ecm$fileattachment$get_filesize,
    get_filename : nc$bs$oa$oama$ecm$fileattachment$get_filename,
    set_filename : nc$bs$oa$oama$ecm$fileattachment$get_filename,
    get_filetype : nc$bs$oa$oama$ecm$fileattachment$get_filetype,
    set_filetype : nc$bs$oa$oama$ecm$fileattachment$get_filetype,
    get_file : nc$bs$oa$oama$ecm$fileattachment$get_file,
    set_file : nc$bs$oa$oama$ecm$fileattachment$get_file
}
nc.bs.oa.oama.ecm.fileattachment.registerClass('nc.bs.oa.oama.ecm.fileattachment',UMP.UI.Mvc.Context);

