Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oneinfo = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oneinfo.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oneinfo$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$oneinfo$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$oneinfo$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_infoid(){
    return this.get('infoid');
}
function nc$bs$oa$oama$ecm$oneinfo$set_infoid(value){
    return this.set('infoid',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_commentflag(){
    return this.get('commentflag');
}
function nc$bs$oa$oama$ecm$oneinfo$set_commentflag(value){
    return this.set('commentflag',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_infotitle(){
    return this.get('infotitle');
}
function nc$bs$oa$oama$ecm$oneinfo$set_infotitle(value){
    return this.set('infotitle',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$oneinfo$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_publishdate(){
    return this.get('publishdate');
}
function nc$bs$oa$oama$ecm$oneinfo$set_publishdate(value){
    return this.set('publishdate',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_attachflag(){
    return this.get('attachflag');
}
function nc$bs$oa$oama$ecm$oneinfo$set_attachflag(value){
    return this.set('attachflag',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_infocontent(){
    return this.get('infocontent');
}
function nc$bs$oa$oama$ecm$oneinfo$set_infocontent(value){
    return this.set('infocontent',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_attachlist(){
    return this.get('attachlist');
}
function nc$bs$oa$oama$ecm$oneinfo$set_attachlist(value){
    return this.set('attachlist',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_commentlist(){
    return this.get('commentlist');
}
function nc$bs$oa$oama$ecm$oneinfo$set_commentlist(value){
    return this.set('commentlist',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_imglist(){
    return this.get('imglist');
}
function nc$bs$oa$oama$ecm$oneinfo$set_imglist(value){
    return this.set('imglist',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$oneinfo$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_contentname(){
    return this.get('contentname');
}
function nc$bs$oa$oama$ecm$oneinfo$set_contentname(value){
    return this.set('contentname',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_fileid(){
    return this.get('fileid');
}
function nc$bs$oa$oama$ecm$oneinfo$set_fileid(value){
    return this.set('fileid',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_contentext(){
    return this.get('contentext');
}
function nc$bs$oa$oama$ecm$oneinfo$set_contentext(value){
    return this.set('contentext',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_imgfilepk(){
    return this.get('imgfilepk');
}
function nc$bs$oa$oama$ecm$oneinfo$set_imgfilepk(value){
    return this.set('imgfilepk',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_imgfilecontent(){
    return this.get('imgfilecontent');
}
function nc$bs$oa$oama$ecm$oneinfo$set_imgfilecontent(value){
    return this.set('imgfilecontent',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_imgfiledesc(){
    return this.get('imgfiledesc');
}
function nc$bs$oa$oama$ecm$oneinfo$set_imgfiledesc(value){
    return this.set('imgfiledesc',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_imgposition(){
    return this.get('imgposition');
}
function nc$bs$oa$oama$ecm$oneinfo$set_imgposition(value){
    return this.set('imgposition',value);
}
function nc$bs$oa$oama$ecm$oneinfo$get_url(){
    return this.get('url');
}
function nc$bs$oa$oama$ecm$oneinfo$set_url(value){
    return this.set('url',value);
}
nc.bs.oa.oama.ecm.oneinfo.prototype = {
    get_flag : nc$bs$oa$oama$ecm$oneinfo$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oneinfo$get_flag,
    get_des : nc$bs$oa$oama$ecm$oneinfo$get_des,
    set_des : nc$bs$oa$oama$ecm$oneinfo$get_des,
    get_infoid : nc$bs$oa$oama$ecm$oneinfo$get_infoid,
    set_infoid : nc$bs$oa$oama$ecm$oneinfo$get_infoid,
    get_commentflag : nc$bs$oa$oama$ecm$oneinfo$get_commentflag,
    set_commentflag : nc$bs$oa$oama$ecm$oneinfo$get_commentflag,
    get_infotitle : nc$bs$oa$oama$ecm$oneinfo$get_infotitle,
    set_infotitle : nc$bs$oa$oama$ecm$oneinfo$get_infotitle,
    get_ts : nc$bs$oa$oama$ecm$oneinfo$get_ts,
    set_ts : nc$bs$oa$oama$ecm$oneinfo$get_ts,
    get_publishdate : nc$bs$oa$oama$ecm$oneinfo$get_publishdate,
    set_publishdate : nc$bs$oa$oama$ecm$oneinfo$get_publishdate,
    get_attachflag : nc$bs$oa$oama$ecm$oneinfo$get_attachflag,
    set_attachflag : nc$bs$oa$oama$ecm$oneinfo$get_attachflag,
    get_infocontent : nc$bs$oa$oama$ecm$oneinfo$get_infocontent,
    set_infocontent : nc$bs$oa$oama$ecm$oneinfo$get_infocontent,
    get_attachlist : nc$bs$oa$oama$ecm$oneinfo$get_attachlist,
    set_attachlist : nc$bs$oa$oama$ecm$oneinfo$get_attachlist,
    get_commentlist : nc$bs$oa$oama$ecm$oneinfo$get_commentlist,
    set_commentlist : nc$bs$oa$oama$ecm$oneinfo$get_commentlist,
    get_imglist : nc$bs$oa$oama$ecm$oneinfo$get_imglist,
    set_imglist : nc$bs$oa$oama$ecm$oneinfo$get_imglist,
    get_content : nc$bs$oa$oama$ecm$oneinfo$get_content,
    set_content : nc$bs$oa$oama$ecm$oneinfo$get_content,
    get_contentname : nc$bs$oa$oama$ecm$oneinfo$get_contentname,
    set_contentname : nc$bs$oa$oama$ecm$oneinfo$get_contentname,
    get_fileid : nc$bs$oa$oama$ecm$oneinfo$get_fileid,
    set_fileid : nc$bs$oa$oama$ecm$oneinfo$get_fileid,
    get_contentext : nc$bs$oa$oama$ecm$oneinfo$get_contentext,
    set_contentext : nc$bs$oa$oama$ecm$oneinfo$get_contentext,
    get_imgfilepk : nc$bs$oa$oama$ecm$oneinfo$get_imgfilepk,
    set_imgfilepk : nc$bs$oa$oama$ecm$oneinfo$get_imgfilepk,
    get_imgfilecontent : nc$bs$oa$oama$ecm$oneinfo$get_imgfilecontent,
    set_imgfilecontent : nc$bs$oa$oama$ecm$oneinfo$get_imgfilecontent,
    get_imgfiledesc : nc$bs$oa$oama$ecm$oneinfo$get_imgfiledesc,
    set_imgfiledesc : nc$bs$oa$oama$ecm$oneinfo$get_imgfiledesc,
    get_imgposition : nc$bs$oa$oama$ecm$oneinfo$get_imgposition,
    set_imgposition : nc$bs$oa$oama$ecm$oneinfo$get_imgposition,
    get_url : nc$bs$oa$oama$ecm$oneinfo$get_url,
    set_url : nc$bs$oa$oama$ecm$oneinfo$get_url
}
nc.bs.oa.oama.ecm.oneinfo.registerClass('nc.bs.oa.oama.ecm.oneinfo',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.content = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.content.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$content$get_infohtmlfile(){
    return this.get('infohtmlfile');
}
function nc$bs$oa$oama$ecm$content$set_infohtmlfile(value){
    return this.set('infohtmlfile',value);
}
function nc$bs$oa$oama$ecm$content$get_infohtmlname(){
    return this.get('infohtmlname');
}
function nc$bs$oa$oama$ecm$content$set_infohtmlname(value){
    return this.set('infohtmlname',value);
}
function nc$bs$oa$oama$ecm$content$get_resoucedir(){
    return this.get('resoucedir');
}
function nc$bs$oa$oama$ecm$content$set_resoucedir(value){
    return this.set('resoucedir',value);
}
function nc$bs$oa$oama$ecm$content$get_resourcelist(){
    return this.get('resourcelist');
}
function nc$bs$oa$oama$ecm$content$set_resourcelist(value){
    return this.set('resourcelist',value);
}
nc.bs.oa.oama.ecm.content.prototype = {
    get_infohtmlfile : nc$bs$oa$oama$ecm$content$get_infohtmlfile,
    set_infohtmlfile : nc$bs$oa$oama$ecm$content$get_infohtmlfile,
    get_infohtmlname : nc$bs$oa$oama$ecm$content$get_infohtmlname,
    set_infohtmlname : nc$bs$oa$oama$ecm$content$get_infohtmlname,
    get_resoucedir : nc$bs$oa$oama$ecm$content$get_resoucedir,
    set_resoucedir : nc$bs$oa$oama$ecm$content$get_resoucedir,
    get_resourcelist : nc$bs$oa$oama$ecm$content$get_resourcelist,
    set_resourcelist : nc$bs$oa$oama$ecm$content$get_resourcelist
}
nc.bs.oa.oama.ecm.content.registerClass('nc.bs.oa.oama.ecm.content',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.resource = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.resource.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$resource$get_resourcefile(){
    return this.get('resourcefile');
}
function nc$bs$oa$oama$ecm$resource$set_resourcefile(value){
    return this.set('resourcefile',value);
}
function nc$bs$oa$oama$ecm$resource$get_resourcename(){
    return this.get('resourcename');
}
function nc$bs$oa$oama$ecm$resource$set_resourcename(value){
    return this.set('resourcename',value);
}
nc.bs.oa.oama.ecm.resource.prototype = {
    get_resourcefile : nc$bs$oa$oama$ecm$resource$get_resourcefile,
    set_resourcefile : nc$bs$oa$oama$ecm$resource$get_resourcefile,
    get_resourcename : nc$bs$oa$oama$ecm$resource$get_resourcename,
    set_resourcename : nc$bs$oa$oama$ecm$resource$get_resourcename
}
nc.bs.oa.oama.ecm.resource.registerClass('nc.bs.oa.oama.ecm.resource',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.attach = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.attach.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$attach$get_fileid(){
    return this.get('fileid');
}
function nc$bs$oa$oama$ecm$attach$set_fileid(value){
    return this.set('fileid',value);
}
function nc$bs$oa$oama$ecm$attach$get_filename(){
    return this.get('filename');
}
function nc$bs$oa$oama$ecm$attach$set_filename(value){
    return this.set('filename',value);
}
function nc$bs$oa$oama$ecm$attach$get_filesize(){
    return this.get('filesize');
}
function nc$bs$oa$oama$ecm$attach$set_filesize(value){
    return this.set('filesize',value);
}
function nc$bs$oa$oama$ecm$attach$get_filletype(){
    return this.get('filletype');
}
function nc$bs$oa$oama$ecm$attach$set_filletype(value){
    return this.set('filletype',value);
}
function nc$bs$oa$oama$ecm$attach$get_downflag(){
    return this.get('downflag');
}
function nc$bs$oa$oama$ecm$attach$set_downflag(value){
    return this.set('downflag',value);
}
function nc$bs$oa$oama$ecm$attach$get_filesizetxt(){
    return this.get('filesizetxt');
}
function nc$bs$oa$oama$ecm$attach$set_filesizetxt(value){
    return this.set('filesizetxt',value);
}
nc.bs.oa.oama.ecm.attach.prototype = {
    get_fileid : nc$bs$oa$oama$ecm$attach$get_fileid,
    set_fileid : nc$bs$oa$oama$ecm$attach$get_fileid,
    get_filename : nc$bs$oa$oama$ecm$attach$get_filename,
    set_filename : nc$bs$oa$oama$ecm$attach$get_filename,
    get_filesize : nc$bs$oa$oama$ecm$attach$get_filesize,
    set_filesize : nc$bs$oa$oama$ecm$attach$get_filesize,
    get_filletype : nc$bs$oa$oama$ecm$attach$get_filletype,
    set_filletype : nc$bs$oa$oama$ecm$attach$get_filletype,
    get_downflag : nc$bs$oa$oama$ecm$attach$get_downflag,
    set_downflag : nc$bs$oa$oama$ecm$attach$get_downflag,
    get_filesizetxt : nc$bs$oa$oama$ecm$attach$get_filesizetxt,
    set_filesizetxt : nc$bs$oa$oama$ecm$attach$get_filesizetxt
}
nc.bs.oa.oama.ecm.attach.registerClass('nc.bs.oa.oama.ecm.attach',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.comment = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.comment.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$comment$get_commentpersonId(){
    return this.get('commentpersonId');
}
function nc$bs$oa$oama$ecm$comment$set_commentpersonId(value){
    return this.set('commentpersonId',value);
}
function nc$bs$oa$oama$ecm$comment$get_commentdate(){
    return this.get('commentdate');
}
function nc$bs$oa$oama$ecm$comment$set_commentdate(value){
    return this.set('commentdate',value);
}
function nc$bs$oa$oama$ecm$comment$get_commentcontent(){
    return this.get('commentcontent');
}
function nc$bs$oa$oama$ecm$comment$set_commentcontent(value){
    return this.set('commentcontent',value);
}
function nc$bs$oa$oama$ecm$comment$get_commentperson(){
    return this.get('commentperson');
}
function nc$bs$oa$oama$ecm$comment$set_commentperson(value){
    return this.set('commentperson',value);
}
function nc$bs$oa$oama$ecm$comment$get_commentid(){
    return this.get('commentid');
}
function nc$bs$oa$oama$ecm$comment$set_commentid(value){
    return this.set('commentid',value);
}
nc.bs.oa.oama.ecm.comment.prototype = {
    get_commentpersonId : nc$bs$oa$oama$ecm$comment$get_commentpersonId,
    set_commentpersonId : nc$bs$oa$oama$ecm$comment$get_commentpersonId,
    get_commentdate : nc$bs$oa$oama$ecm$comment$get_commentdate,
    set_commentdate : nc$bs$oa$oama$ecm$comment$get_commentdate,
    get_commentcontent : nc$bs$oa$oama$ecm$comment$get_commentcontent,
    set_commentcontent : nc$bs$oa$oama$ecm$comment$get_commentcontent,
    get_commentperson : nc$bs$oa$oama$ecm$comment$get_commentperson,
    set_commentperson : nc$bs$oa$oama$ecm$comment$get_commentperson,
    get_commentid : nc$bs$oa$oama$ecm$comment$get_commentid,
    set_commentid : nc$bs$oa$oama$ecm$comment$get_commentid
}
nc.bs.oa.oama.ecm.comment.registerClass('nc.bs.oa.oama.ecm.comment',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.img = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.img.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$img$get_infopicid(){
    return this.get('infopicid');
}
function nc$bs$oa$oama$ecm$img$set_infopicid(value){
    return this.set('infopicid',value);
}
function nc$bs$oa$oama$ecm$img$get_infopicpath(){
    return this.get('infopicpath');
}
function nc$bs$oa$oama$ecm$img$set_infopicpath(value){
    return this.set('infopicpath',value);
}
function nc$bs$oa$oama$ecm$img$get_infopicdesc(){
    return this.get('infopicdesc');
}
function nc$bs$oa$oama$ecm$img$set_infopicdesc(value){
    return this.set('infopicdesc',value);
}
function nc$bs$oa$oama$ecm$img$get_firstpic(){
    return this.get('firstpic');
}
function nc$bs$oa$oama$ecm$img$set_firstpic(value){
    return this.set('firstpic',value);
}
nc.bs.oa.oama.ecm.img.prototype = {
    get_infopicid : nc$bs$oa$oama$ecm$img$get_infopicid,
    set_infopicid : nc$bs$oa$oama$ecm$img$get_infopicid,
    get_infopicpath : nc$bs$oa$oama$ecm$img$get_infopicpath,
    set_infopicpath : nc$bs$oa$oama$ecm$img$get_infopicpath,
    get_infopicdesc : nc$bs$oa$oama$ecm$img$get_infopicdesc,
    set_infopicdesc : nc$bs$oa$oama$ecm$img$get_infopicdesc,
    get_firstpic : nc$bs$oa$oama$ecm$img$get_firstpic,
    set_firstpic : nc$bs$oa$oama$ecm$img$get_firstpic
}
nc.bs.oa.oama.ecm.img.registerClass('nc.bs.oa.oama.ecm.img',UMP.UI.Mvc.Context);

