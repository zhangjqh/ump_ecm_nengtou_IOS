Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oneinfoEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.oneinfoEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "oneinfo", {"tag":"context","attributes":{"id":"oneinfo","iscascade":"false","from-type":"context","filter":""},"fields":{"infoid":{"tag":"field","attributes":{"id":"infoid","type":"string"}},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"imgfilecontent":{"tag":"field","attributes":{"id":"imgfilecontent","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"commentlist":{"tag":"fieldset","attributes":{"id":"commentlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"comment","type":"string","parent-field":"","from-type":"context"},"fields":{"commentid":{"tag":"field","attributes":{"id":"commentid","type":"string"}},"commentdate":{"tag":"field","attributes":{"id":"commentdate","type":"string"}},"commentperson":{"tag":"field","attributes":{"id":"commentperson","type":"string"}},"commentcontent":{"tag":"field","attributes":{"id":"commentcontent","type":"string"}},"commentpersonId":{"tag":"field","attributes":{"id":"commentpersonId","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"imglist":{"tag":"fieldset","attributes":{"id":"imglist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"img","type":"string","parent-field":"","from-type":"context"},"fields":{"infopicpath":{"tag":"field","attributes":{"id":"infopicpath","type":"string"}},"firstpic":{"tag":"field","attributes":{"id":"firstpic","type":"string"}},"infopicdesc":{"tag":"field","attributes":{"id":"infopicdesc","type":"string"}},"infopicid":{"tag":"field","attributes":{"id":"infopicid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"infotitle":{"tag":"field","attributes":{"id":"infotitle","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"publishdate":{"tag":"field","attributes":{"id":"publishdate","type":"string"}},"url":{"tag":"field","attributes":{"id":"url","type":"string"}},"imgfilepk":{"tag":"field","attributes":{"id":"imgfilepk","type":"string"}},"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"contentext":{"tag":"field","attributes":{"id":"contentext","type":"string"}},"commentflag":{"tag":"field","attributes":{"id":"commentflag","type":"string"}},"imgfiledesc":{"tag":"field","attributes":{"id":"imgfiledesc","type":"string"}},"infocontent":{"tag":"fieldset","attributes":{"id":"infocontent","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"content","type":"string","parent-field":"","from-type":"context"},"fields":{"infohtmlfile":{"tag":"field","attributes":{"id":"infohtmlfile","type":"string"}},"resourcelist":{"tag":"fieldset","attributes":{"id":"resourcelist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"resource","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"resourcename":{"tag":"field","attributes":{"id":"resourcename","type":"string"}},"resourcefile":{"tag":"field","attributes":{"id":"resourcefile","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"infohtmlname":{"tag":"field","attributes":{"id":"infohtmlname","type":"string"}},"resoucedir":{"tag":"field","attributes":{"id":"resoucedir","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"imgposition":{"tag":"field","attributes":{"id":"imgposition","type":"string"}},"attachflag":{"tag":"field","attributes":{"id":"attachflag","type":"string"}},"attachlist":{"tag":"fieldset","attributes":{"id":"attachlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"attach","type":"string","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"filesizetxt":{"tag":"field","attributes":{"id":"filesizetxt","type":"string"}},"filletype":{"tag":"field","attributes":{"id":"filletype","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"contentname":{"tag":"field","attributes":{"id":"contentname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_infoid(){
    return this.field('infoid');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_infoid(value){
    return this.field('infoid',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_commentflag(){
    return this.field('commentflag');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_commentflag(value){
    return this.field('commentflag',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_infotitle(){
    return this.field('infotitle');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_infotitle(value){
    return this.field('infotitle',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_ts(value){
    return this.field('ts',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_publishdate(){
    return this.field('publishdate');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_publishdate(value){
    return this.field('publishdate',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_attachflag(){
    return this.field('attachflag');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_attachflag(value){
    return this.field('attachflag',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_infocontent(){
    return this.field('infocontent');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_infocontent(value){
    return this.field('infocontent',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_attachlist(){
    return this.field('attachlist');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_attachlist(value){
    return this.field('attachlist',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_commentlist(){
    return this.field('commentlist');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_commentlist(value){
    return this.field('commentlist',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_imglist(){
    return this.field('imglist');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_imglist(value){
    return this.field('imglist',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_content(value){
    return this.field('content',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_contentname(){
    return this.field('contentname');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_contentname(value){
    return this.field('contentname',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_fileid(){
    return this.field('fileid');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_fileid(value){
    return this.field('fileid',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_contentext(){
    return this.field('contentext');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_contentext(value){
    return this.field('contentext',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilepk(){
    return this.field('imgfilepk');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_imgfilepk(value){
    return this.field('imgfilepk',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilecontent(){
    return this.field('imgfilecontent');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_imgfilecontent(value){
    return this.field('imgfilecontent',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfiledesc(){
    return this.field('imgfiledesc');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_imgfiledesc(value){
    return this.field('imgfiledesc',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_imgposition(){
    return this.field('imgposition');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_imgposition(value){
    return this.field('imgposition',value);
}
function nc$bs$oa$oama$ecm$oneinfoEntity$get_url(){
    return this.field('url');
}
function nc$bs$oa$oama$ecm$oneinfoEntity$set_url(value){
    return this.field('url',value);
}
nc.bs.oa.oama.ecm.oneinfoEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$oneinfoEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oneinfoEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$oneinfoEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$oneinfoEntity$get_des,
    get_infoid : nc$bs$oa$oama$ecm$oneinfoEntity$get_infoid,
    set_infoid : nc$bs$oa$oama$ecm$oneinfoEntity$get_infoid,
    get_commentflag : nc$bs$oa$oama$ecm$oneinfoEntity$get_commentflag,
    set_commentflag : nc$bs$oa$oama$ecm$oneinfoEntity$get_commentflag,
    get_infotitle : nc$bs$oa$oama$ecm$oneinfoEntity$get_infotitle,
    set_infotitle : nc$bs$oa$oama$ecm$oneinfoEntity$get_infotitle,
    get_ts : nc$bs$oa$oama$ecm$oneinfoEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$oneinfoEntity$get_ts,
    get_publishdate : nc$bs$oa$oama$ecm$oneinfoEntity$get_publishdate,
    set_publishdate : nc$bs$oa$oama$ecm$oneinfoEntity$get_publishdate,
    get_attachflag : nc$bs$oa$oama$ecm$oneinfoEntity$get_attachflag,
    set_attachflag : nc$bs$oa$oama$ecm$oneinfoEntity$get_attachflag,
    get_infocontent : nc$bs$oa$oama$ecm$oneinfoEntity$get_infocontent,
    set_infocontent : nc$bs$oa$oama$ecm$oneinfoEntity$get_infocontent,
    get_attachlist : nc$bs$oa$oama$ecm$oneinfoEntity$get_attachlist,
    set_attachlist : nc$bs$oa$oama$ecm$oneinfoEntity$get_attachlist,
    get_commentlist : nc$bs$oa$oama$ecm$oneinfoEntity$get_commentlist,
    set_commentlist : nc$bs$oa$oama$ecm$oneinfoEntity$get_commentlist,
    get_imglist : nc$bs$oa$oama$ecm$oneinfoEntity$get_imglist,
    set_imglist : nc$bs$oa$oama$ecm$oneinfoEntity$get_imglist,
    get_content : nc$bs$oa$oama$ecm$oneinfoEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$oneinfoEntity$get_content,
    get_contentname : nc$bs$oa$oama$ecm$oneinfoEntity$get_contentname,
    set_contentname : nc$bs$oa$oama$ecm$oneinfoEntity$get_contentname,
    get_fileid : nc$bs$oa$oama$ecm$oneinfoEntity$get_fileid,
    set_fileid : nc$bs$oa$oama$ecm$oneinfoEntity$get_fileid,
    get_contentext : nc$bs$oa$oama$ecm$oneinfoEntity$get_contentext,
    set_contentext : nc$bs$oa$oama$ecm$oneinfoEntity$get_contentext,
    get_imgfilepk : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilepk,
    set_imgfilepk : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilepk,
    get_imgfilecontent : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilecontent,
    set_imgfilecontent : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfilecontent,
    get_imgfiledesc : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfiledesc,
    set_imgfiledesc : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgfiledesc,
    get_imgposition : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgposition,
    set_imgposition : nc$bs$oa$oama$ecm$oneinfoEntity$get_imgposition,
    get_url : nc$bs$oa$oama$ecm$oneinfoEntity$get_url,
    set_url : nc$bs$oa$oama$ecm$oneinfoEntity$get_url
}
nc.bs.oa.oama.ecm.oneinfoEntity.registerClass('nc.bs.oa.oama.ecm.oneinfoEntity',UMP.UI.Mvc.Entity);
