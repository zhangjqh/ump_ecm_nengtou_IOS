Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.psndetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.psndetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "psndetail", {"tag":"context","attributes":{"id":"psndetail","iscascade":"false","from-type":"context","filter":""},"fields":{"position":{"tag":"field","attributes":{"id":"position","type":"string"}},"sex":{"tag":"field","attributes":{"id":"sex","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"datetime"}},"buzunit":{"tag":"field","attributes":{"id":"buzunit","type":"string"}},"psnid":{"tag":"field","attributes":{"id":"psnid","type":"string"}},"job":{"tag":"field","attributes":{"id":"job","type":"string"}},"psnjobid":{"tag":"field","attributes":{"id":"psnjobid","type":"string"}},"photo":{"tag":"field","attributes":{"id":"photo","type":"string"}},"mobileno":{"tag":"field","attributes":{"id":"mobileno","type":"string"}},"extinfos":{"tag":"field","attributes":{"id":"extinfos","type":"string"}},"officephone":{"tag":"field","attributes":{"id":"officephone","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"pgroups":{"tag":"fieldset","attributes":{"id":"pgroups","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"psnGroup","type":"string","parent-field":"","from-type":"context"},"fields":{"psnnum":{"tag":"field","attributes":{"id":"psnnum","type":"string"}},"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"string"}},"psngroupid":{"tag":"field","attributes":{"id":"psngroupid","type":"string"}},"psngroupname":{"tag":"field","attributes":{"id":"psngroupname","type":"string"}},"nameandnum":{"tag":"field","attributes":{"id":"nameandnum","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"dept":{"tag":"field","attributes":{"id":"dept","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_psnid(){
    return this.field('psnid');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_psnid(value){
    return this.field('psnid',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_name(){
    return this.field('name');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_name(value){
    return this.field('name',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_sex(){
    return this.field('sex');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_sex(value){
    return this.field('sex',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_position(){
    return this.field('position');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_position(value){
    return this.field('position',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_buzunit(){
    return this.field('buzunit');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_buzunit(value){
    return this.field('buzunit',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_dept(){
    return this.field('dept');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_dept(value){
    return this.field('dept',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_mobileno(){
    return this.field('mobileno');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_mobileno(value){
    return this.field('mobileno',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_email(){
    return this.field('email');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_email(value){
    return this.field('email',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_job(){
    return this.field('job');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_job(value){
    return this.field('job',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_pgroups(){
    return this.field('pgroups');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_pgroups(value){
    return this.field('pgroups',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_extinfos(){
    return this.field('extinfos');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_extinfos(value){
    return this.field('extinfos',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_isChecked(){
    return this.field('isChecked');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_isChecked(value){
    return this.field('isChecked',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_photo(){
    return this.field('photo');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_photo(value){
    return this.field('photo',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_ts(value){
    return this.field('ts',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_officephone(){
    return this.field('officephone');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_officephone(value){
    return this.field('officephone',value);
}
function nc$bs$oa$oama$ecm$psndetailEntity$get_psnjobid(){
    return this.field('psnjobid');
}
function nc$bs$oa$oama$ecm$psndetailEntity$set_psnjobid(value){
    return this.field('psnjobid',value);
}
nc.bs.oa.oama.ecm.psndetailEntity.prototype = {
    get_psnid : nc$bs$oa$oama$ecm$psndetailEntity$get_psnid,
    set_psnid : nc$bs$oa$oama$ecm$psndetailEntity$get_psnid,
    get_name : nc$bs$oa$oama$ecm$psndetailEntity$get_name,
    set_name : nc$bs$oa$oama$ecm$psndetailEntity$get_name,
    get_sex : nc$bs$oa$oama$ecm$psndetailEntity$get_sex,
    set_sex : nc$bs$oa$oama$ecm$psndetailEntity$get_sex,
    get_position : nc$bs$oa$oama$ecm$psndetailEntity$get_position,
    set_position : nc$bs$oa$oama$ecm$psndetailEntity$get_position,
    get_buzunit : nc$bs$oa$oama$ecm$psndetailEntity$get_buzunit,
    set_buzunit : nc$bs$oa$oama$ecm$psndetailEntity$get_buzunit,
    get_dept : nc$bs$oa$oama$ecm$psndetailEntity$get_dept,
    set_dept : nc$bs$oa$oama$ecm$psndetailEntity$get_dept,
    get_mobileno : nc$bs$oa$oama$ecm$psndetailEntity$get_mobileno,
    set_mobileno : nc$bs$oa$oama$ecm$psndetailEntity$get_mobileno,
    get_email : nc$bs$oa$oama$ecm$psndetailEntity$get_email,
    set_email : nc$bs$oa$oama$ecm$psndetailEntity$get_email,
    get_job : nc$bs$oa$oama$ecm$psndetailEntity$get_job,
    set_job : nc$bs$oa$oama$ecm$psndetailEntity$get_job,
    get_pgroups : nc$bs$oa$oama$ecm$psndetailEntity$get_pgroups,
    set_pgroups : nc$bs$oa$oama$ecm$psndetailEntity$get_pgroups,
    get_extinfos : nc$bs$oa$oama$ecm$psndetailEntity$get_extinfos,
    set_extinfos : nc$bs$oa$oama$ecm$psndetailEntity$get_extinfos,
    get_isChecked : nc$bs$oa$oama$ecm$psndetailEntity$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$psndetailEntity$get_isChecked,
    get_photo : nc$bs$oa$oama$ecm$psndetailEntity$get_photo,
    set_photo : nc$bs$oa$oama$ecm$psndetailEntity$get_photo,
    get_ts : nc$bs$oa$oama$ecm$psndetailEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$psndetailEntity$get_ts,
    get_officephone : nc$bs$oa$oama$ecm$psndetailEntity$get_officephone,
    set_officephone : nc$bs$oa$oama$ecm$psndetailEntity$get_officephone,
    get_psnjobid : nc$bs$oa$oama$ecm$psndetailEntity$get_psnjobid,
    set_psnjobid : nc$bs$oa$oama$ecm$psndetailEntity$get_psnjobid
}
nc.bs.oa.oama.ecm.psndetailEntity.registerClass('nc.bs.oa.oama.ecm.psndetailEntity',UMP.UI.Mvc.Entity);
