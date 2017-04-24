Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.filelist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.filelist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$filelist$get_listid(){
    return this.get('listid');
}
function nc$bs$oa$oama$ecm$filelist$set_listid(value){
    return this.set('listid',value);
}
function nc$bs$oa$oama$ecm$filelist$get_attachment(){
    return this.get('attachment');
}
function nc$bs$oa$oama$ecm$filelist$set_attachment(value){
    return this.set('attachment',value);
}
nc.bs.oa.oama.ecm.filelist.prototype = {
    get_listid : nc$bs$oa$oama$ecm$filelist$get_listid,
    set_listid : nc$bs$oa$oama$ecm$filelist$get_listid,
    get_attachment : nc$bs$oa$oama$ecm$filelist$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$filelist$get_attachment
}
nc.bs.oa.oama.ecm.filelist.registerClass('nc.bs.oa.oama.ecm.filelist',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.file = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.file.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$file$get_fileid(){
    return this.get('fileid');
}
function nc$bs$oa$oama$ecm$file$set_fileid(value){
    return this.set('fileid',value);
}
function nc$bs$oa$oama$ecm$file$get_filesize(){
    return this.get('filesize');
}
function nc$bs$oa$oama$ecm$file$set_filesize(value){
    return this.set('filesize',value);
}
function nc$bs$oa$oama$ecm$file$get_filename(){
    return this.get('filename');
}
function nc$bs$oa$oama$ecm$file$set_filename(value){
    return this.set('filename',value);
}
function nc$bs$oa$oama$ecm$file$get_filetype(){
    return this.get('filetype');
}
function nc$bs$oa$oama$ecm$file$set_filetype(value){
    return this.set('filetype',value);
}
function nc$bs$oa$oama$ecm$file$get_downflag(){
    return this.get('downflag');
}
function nc$bs$oa$oama$ecm$file$set_downflag(value){
    return this.set('downflag',value);
}
nc.bs.oa.oama.ecm.file.prototype = {
    get_fileid : nc$bs$oa$oama$ecm$file$get_fileid,
    set_fileid : nc$bs$oa$oama$ecm$file$get_fileid,
    get_filesize : nc$bs$oa$oama$ecm$file$get_filesize,
    set_filesize : nc$bs$oa$oama$ecm$file$get_filesize,
    get_filename : nc$bs$oa$oama$ecm$file$get_filename,
    set_filename : nc$bs$oa$oama$ecm$file$get_filename,
    get_filetype : nc$bs$oa$oama$ecm$file$get_filetype,
    set_filetype : nc$bs$oa$oama$ecm$file$get_filetype,
    get_downflag : nc$bs$oa$oama$ecm$file$get_downflag,
    set_downflag : nc$bs$oa$oama$ecm$file$get_downflag
}
nc.bs.oa.oama.ecm.file.registerClass('nc.bs.oa.oama.ecm.file',UMP.UI.Mvc.Context);

