Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reporthistest = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.reporthistest.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$reporthistest$get_reporthisList(){
    return this.get('reporthisList');
}
function nc$bs$oa$oama$ecm$reporthistest$set_reporthisList(value){
    return this.set('reporthisList',value);
}
nc.bs.oa.oama.ecm.reporthistest.prototype = {
    get_reporthisList : nc$bs$oa$oama$ecm$reporthistest$get_reporthisList,
    set_reporthisList : nc$bs$oa$oama$ecm$reporthistest$get_reporthisList
}
nc.bs.oa.oama.ecm.reporthistest.registerClass('nc.bs.oa.oama.ecm.reporthistest',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reporthistorylist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.reporthistorylist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$reporthistorylist$get_reporthistory(){
    return this.get('reporthistory');
}
function nc$bs$oa$oama$ecm$reporthistorylist$set_reporthistory(value){
    return this.set('reporthistory',value);
}
nc.bs.oa.oama.ecm.reporthistorylist.prototype = {
    get_reporthistory : nc$bs$oa$oama$ecm$reporthistorylist$get_reporthistory,
    set_reporthistory : nc$bs$oa$oama$ecm$reporthistorylist$get_reporthistory
}
nc.bs.oa.oama.ecm.reporthistorylist.registerClass('nc.bs.oa.oama.ecm.reporthistorylist',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reportdetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.reportdetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$reportdetail$get_approvalmsg(){
    return this.get('approvalmsg');
}
function nc$bs$oa$oama$ecm$reportdetail$set_approvalmsg(value){
    return this.set('approvalmsg',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_reportstate(){
    return this.get('reportstate');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reportstate(value){
    return this.set('reportstate',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_repstatecode(){
    return this.get('repstatecode');
}
function nc$bs$oa$oama$ecm$reportdetail$set_repstatecode(value){
    return this.set('repstatecode',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_time(){
    return this.get('time');
}
function nc$bs$oa$oama$ecm$reportdetail$set_time(value){
    return this.set('time',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_relatedname(){
    return this.get('relatedname');
}
function nc$bs$oa$oama$ecm$reportdetail$set_relatedname(value){
    return this.set('relatedname',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$reportdetail$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_taskschedule(){
    return this.get('taskschedule');
}
function nc$bs$oa$oama$ecm$reportdetail$set_taskschedule(value){
    return this.set('taskschedule',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_completion(){
    return this.get('completion');
}
function nc$bs$oa$oama$ecm$reportdetail$set_completion(value){
    return this.set('completion',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_attachmentlist(){
    return this.get('attachmentlist');
}
function nc$bs$oa$oama$ecm$reportdetail$set_attachmentlist(value){
    return this.set('attachmentlist',value);
}
nc.bs.oa.oama.ecm.reportdetail.prototype = {
    get_approvalmsg : nc$bs$oa$oama$ecm$reportdetail$get_approvalmsg,
    set_approvalmsg : nc$bs$oa$oama$ecm$reportdetail$get_approvalmsg,
    get_reportstate : nc$bs$oa$oama$ecm$reportdetail$get_reportstate,
    set_reportstate : nc$bs$oa$oama$ecm$reportdetail$get_reportstate,
    get_repstatecode : nc$bs$oa$oama$ecm$reportdetail$get_repstatecode,
    set_repstatecode : nc$bs$oa$oama$ecm$reportdetail$get_repstatecode,
    get_time : nc$bs$oa$oama$ecm$reportdetail$get_time,
    set_time : nc$bs$oa$oama$ecm$reportdetail$get_time,
    get_relatedname : nc$bs$oa$oama$ecm$reportdetail$get_relatedname,
    set_relatedname : nc$bs$oa$oama$ecm$reportdetail$get_relatedname,
    get_taskstate : nc$bs$oa$oama$ecm$reportdetail$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$reportdetail$get_taskstate,
    get_taskschedule : nc$bs$oa$oama$ecm$reportdetail$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$reportdetail$get_taskschedule,
    get_completion : nc$bs$oa$oama$ecm$reportdetail$get_completion,
    set_completion : nc$bs$oa$oama$ecm$reportdetail$get_completion,
    get_attachmentlist : nc$bs$oa$oama$ecm$reportdetail$get_attachmentlist,
    set_attachmentlist : nc$bs$oa$oama$ecm$reportdetail$get_attachmentlist
}
nc.bs.oa.oama.ecm.reportdetail.registerClass('nc.bs.oa.oama.ecm.reportdetail',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.completion = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.completion.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$completion$get_reporttime(){
    return this.get('reporttime');
}
function nc$bs$oa$oama$ecm$completion$set_reporttime(value){
    return this.set('reporttime',value);
}
function nc$bs$oa$oama$ecm$completion$get_relatedname(){
    return this.get('relatedname');
}
function nc$bs$oa$oama$ecm$completion$set_relatedname(value){
    return this.set('relatedname',value);
}
function nc$bs$oa$oama$ecm$completion$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$completion$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$completion$get_taskcomment(){
    return this.get('taskcomment');
}
function nc$bs$oa$oama$ecm$completion$set_taskcomment(value){
    return this.set('taskcomment',value);
}
nc.bs.oa.oama.ecm.completion.prototype = {
    get_reporttime : nc$bs$oa$oama$ecm$completion$get_reporttime,
    set_reporttime : nc$bs$oa$oama$ecm$completion$get_reporttime,
    get_relatedname : nc$bs$oa$oama$ecm$completion$get_relatedname,
    set_relatedname : nc$bs$oa$oama$ecm$completion$get_relatedname,
    get_content : nc$bs$oa$oama$ecm$completion$get_content,
    set_content : nc$bs$oa$oama$ecm$completion$get_content,
    get_taskcomment : nc$bs$oa$oama$ecm$completion$get_taskcomment,
    set_taskcomment : nc$bs$oa$oama$ecm$completion$get_taskcomment
}
nc.bs.oa.oama.ecm.completion.registerClass('nc.bs.oa.oama.ecm.completion',UMP.UI.Mvc.Context);

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
    set_downflag : nc$bs$oa$oama$ecm$attachment$get_downflag
}
nc.bs.oa.oama.ecm.attachment.registerClass('nc.bs.oa.oama.ecm.attachment',UMP.UI.Mvc.Context);

