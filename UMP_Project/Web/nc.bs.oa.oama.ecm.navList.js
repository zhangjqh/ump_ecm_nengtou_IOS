Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.navList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.navList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$navList$get_navs(){
    return this.get('navs');
}
function nc$bs$oa$oama$ecm$navList$set_navs(value){
    return this.set('navs',value);
}
nc.bs.oa.oama.ecm.navList.prototype = {
    get_navs : nc$bs$oa$oama$ecm$navList$get_navs,
    set_navs : nc$bs$oa$oama$ecm$navList$get_navs
}
nc.bs.oa.oama.ecm.navList.registerClass('nc.bs.oa.oama.ecm.navList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.nav = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.nav.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$nav$get_navid(){
    return this.get('navid');
}
function nc$bs$oa$oama$ecm$nav$set_navid(value){
    return this.set('navid',value);
}
function nc$bs$oa$oama$ecm$nav$get_navname(){
    return this.get('navname');
}
function nc$bs$oa$oama$ecm$nav$set_navname(value){
    return this.set('navname',value);
}
function nc$bs$oa$oama$ecm$nav$get_psncnt(){
    return this.get('psncnt');
}
function nc$bs$oa$oama$ecm$nav$set_psncnt(value){
    return this.set('psncnt',value);
}
function nc$bs$oa$oama$ecm$nav$get_end(){
    return this.get('end');
}
function nc$bs$oa$oama$ecm$nav$set_end(value){
    return this.set('end',value);
}
function nc$bs$oa$oama$ecm$nav$get_navtype(){
    return this.get('navtype');
}
function nc$bs$oa$oama$ecm$nav$set_navtype(value){
    return this.set('navtype',value);
}
function nc$bs$oa$oama$ecm$nav$get_sex(){
    return this.get('sex');
}
function nc$bs$oa$oama$ecm$nav$set_sex(value){
    return this.set('sex',value);
}
function nc$bs$oa$oama$ecm$nav$get_position(){
    return this.get('position');
}
function nc$bs$oa$oama$ecm$nav$set_position(value){
    return this.set('position',value);
}
function nc$bs$oa$oama$ecm$nav$get_mobileno(){
    return this.get('mobileno');
}
function nc$bs$oa$oama$ecm$nav$set_mobileno(value){
    return this.set('mobileno',value);
}
function nc$bs$oa$oama$ecm$nav$get_dept(){
    return this.get('dept');
}
function nc$bs$oa$oama$ecm$nav$set_dept(value){
    return this.set('dept',value);
}
function nc$bs$oa$oama$ecm$nav$get_email(){
    return this.get('email');
}
function nc$bs$oa$oama$ecm$nav$set_email(value){
    return this.set('email',value);
}
function nc$bs$oa$oama$ecm$nav$get_nameandnum(){
    return this.get('nameandnum');
}
function nc$bs$oa$oama$ecm$nav$set_nameandnum(value){
    return this.set('nameandnum',value);
}
function nc$bs$oa$oama$ecm$nav$get_job(){
    return this.get('job');
}
function nc$bs$oa$oama$ecm$nav$set_job(value){
    return this.set('job',value);
}
function nc$bs$oa$oama$ecm$nav$get_psnjobid(){
    return this.get('psnjobid');
}
function nc$bs$oa$oama$ecm$nav$set_psnjobid(value){
    return this.set('psnjobid',value);
}
function nc$bs$oa$oama$ecm$nav$get_navimage(){
    return this.get('navimage');
}
function nc$bs$oa$oama$ecm$nav$set_navimage(value){
    return this.set('navimage',value);
}
nc.bs.oa.oama.ecm.nav.prototype = {
    get_navid : nc$bs$oa$oama$ecm$nav$get_navid,
    set_navid : nc$bs$oa$oama$ecm$nav$get_navid,
    get_navname : nc$bs$oa$oama$ecm$nav$get_navname,
    set_navname : nc$bs$oa$oama$ecm$nav$get_navname,
    get_psncnt : nc$bs$oa$oama$ecm$nav$get_psncnt,
    set_psncnt : nc$bs$oa$oama$ecm$nav$get_psncnt,
    get_end : nc$bs$oa$oama$ecm$nav$get_end,
    set_end : nc$bs$oa$oama$ecm$nav$get_end,
    get_navtype : nc$bs$oa$oama$ecm$nav$get_navtype,
    set_navtype : nc$bs$oa$oama$ecm$nav$get_navtype,
    get_sex : nc$bs$oa$oama$ecm$nav$get_sex,
    set_sex : nc$bs$oa$oama$ecm$nav$get_sex,
    get_position : nc$bs$oa$oama$ecm$nav$get_position,
    set_position : nc$bs$oa$oama$ecm$nav$get_position,
    get_mobileno : nc$bs$oa$oama$ecm$nav$get_mobileno,
    set_mobileno : nc$bs$oa$oama$ecm$nav$get_mobileno,
    get_dept : nc$bs$oa$oama$ecm$nav$get_dept,
    set_dept : nc$bs$oa$oama$ecm$nav$get_dept,
    get_email : nc$bs$oa$oama$ecm$nav$get_email,
    set_email : nc$bs$oa$oama$ecm$nav$get_email,
    get_nameandnum : nc$bs$oa$oama$ecm$nav$get_nameandnum,
    set_nameandnum : nc$bs$oa$oama$ecm$nav$get_nameandnum,
    get_job : nc$bs$oa$oama$ecm$nav$get_job,
    set_job : nc$bs$oa$oama$ecm$nav$get_job,
    get_psnjobid : nc$bs$oa$oama$ecm$nav$get_psnjobid,
    set_psnjobid : nc$bs$oa$oama$ecm$nav$get_psnjobid,
    get_navimage : nc$bs$oa$oama$ecm$nav$get_navimage,
    set_navimage : nc$bs$oa$oama$ecm$nav$get_navimage
}
nc.bs.oa.oama.ecm.nav.registerClass('nc.bs.oa.oama.ecm.nav',UMP.UI.Mvc.Context);

