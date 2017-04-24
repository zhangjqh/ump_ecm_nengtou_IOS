Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.psnList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.psnList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$psnList$get_persons(){
    return this.get('persons');
}
function nc$bs$oa$oama$ecm$psnList$set_persons(value){
    return this.set('persons',value);
}
nc.bs.oa.oama.ecm.psnList.prototype = {
    get_persons : nc$bs$oa$oama$ecm$psnList$get_persons,
    set_persons : nc$bs$oa$oama$ecm$psnList$get_persons
}
nc.bs.oa.oama.ecm.psnList.registerClass('nc.bs.oa.oama.ecm.psnList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.person = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.person.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$person$get_psnid(){
    return this.get('psnid');
}
function nc$bs$oa$oama$ecm$person$set_psnid(value){
    return this.set('psnid',value);
}
function nc$bs$oa$oama$ecm$person$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$person$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$person$get_sex(){
    return this.get('sex');
}
function nc$bs$oa$oama$ecm$person$set_sex(value){
    return this.set('sex',value);
}
function nc$bs$oa$oama$ecm$person$get_position(){
    return this.get('position');
}
function nc$bs$oa$oama$ecm$person$set_position(value){
    return this.set('position',value);
}
function nc$bs$oa$oama$ecm$person$get_buzunit(){
    return this.get('buzunit');
}
function nc$bs$oa$oama$ecm$person$set_buzunit(value){
    return this.set('buzunit',value);
}
function nc$bs$oa$oama$ecm$person$get_dept(){
    return this.get('dept');
}
function nc$bs$oa$oama$ecm$person$set_dept(value){
    return this.set('dept',value);
}
function nc$bs$oa$oama$ecm$person$get_mobileno(){
    return this.get('mobileno');
}
function nc$bs$oa$oama$ecm$person$set_mobileno(value){
    return this.set('mobileno',value);
}
function nc$bs$oa$oama$ecm$person$get_officephone(){
    return this.get('officephone');
}
function nc$bs$oa$oama$ecm$person$set_officephone(value){
    return this.set('officephone',value);
}
function nc$bs$oa$oama$ecm$person$get_email(){
    return this.get('email');
}
function nc$bs$oa$oama$ecm$person$set_email(value){
    return this.set('email',value);
}
function nc$bs$oa$oama$ecm$person$get_pgroups(){
    return this.get('pgroups');
}
function nc$bs$oa$oama$ecm$person$set_pgroups(value){
    return this.set('pgroups',value);
}
function nc$bs$oa$oama$ecm$person$get_extinfos(){
    return this.get('extinfos');
}
function nc$bs$oa$oama$ecm$person$set_extinfos(value){
    return this.set('extinfos',value);
}
function nc$bs$oa$oama$ecm$person$get_job(){
    return this.get('job');
}
function nc$bs$oa$oama$ecm$person$set_job(value){
    return this.set('job',value);
}
function nc$bs$oa$oama$ecm$person$get_isChecked(){
    return this.get('isChecked');
}
function nc$bs$oa$oama$ecm$person$set_isChecked(value){
    return this.set('isChecked',value);
}
function nc$bs$oa$oama$ecm$person$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$person$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$person$get_photo(){
    return this.get('photo');
}
function nc$bs$oa$oama$ecm$person$set_photo(value){
    return this.set('photo',value);
}
function nc$bs$oa$oama$ecm$person$get_psnjobid(){
    return this.get('psnjobid');
}
function nc$bs$oa$oama$ecm$person$set_psnjobid(value){
    return this.set('psnjobid',value);
}
nc.bs.oa.oama.ecm.person.prototype = {
    get_psnid : nc$bs$oa$oama$ecm$person$get_psnid,
    set_psnid : nc$bs$oa$oama$ecm$person$get_psnid,
    get_name : nc$bs$oa$oama$ecm$person$get_name,
    set_name : nc$bs$oa$oama$ecm$person$get_name,
    get_sex : nc$bs$oa$oama$ecm$person$get_sex,
    set_sex : nc$bs$oa$oama$ecm$person$get_sex,
    get_position : nc$bs$oa$oama$ecm$person$get_position,
    set_position : nc$bs$oa$oama$ecm$person$get_position,
    get_buzunit : nc$bs$oa$oama$ecm$person$get_buzunit,
    set_buzunit : nc$bs$oa$oama$ecm$person$get_buzunit,
    get_dept : nc$bs$oa$oama$ecm$person$get_dept,
    set_dept : nc$bs$oa$oama$ecm$person$get_dept,
    get_mobileno : nc$bs$oa$oama$ecm$person$get_mobileno,
    set_mobileno : nc$bs$oa$oama$ecm$person$get_mobileno,
    get_officephone : nc$bs$oa$oama$ecm$person$get_officephone,
    set_officephone : nc$bs$oa$oama$ecm$person$get_officephone,
    get_email : nc$bs$oa$oama$ecm$person$get_email,
    set_email : nc$bs$oa$oama$ecm$person$get_email,
    get_pgroups : nc$bs$oa$oama$ecm$person$get_pgroups,
    set_pgroups : nc$bs$oa$oama$ecm$person$get_pgroups,
    get_extinfos : nc$bs$oa$oama$ecm$person$get_extinfos,
    set_extinfos : nc$bs$oa$oama$ecm$person$get_extinfos,
    get_job : nc$bs$oa$oama$ecm$person$get_job,
    set_job : nc$bs$oa$oama$ecm$person$get_job,
    get_isChecked : nc$bs$oa$oama$ecm$person$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$person$get_isChecked,
    get_ts : nc$bs$oa$oama$ecm$person$get_ts,
    set_ts : nc$bs$oa$oama$ecm$person$get_ts,
    get_photo : nc$bs$oa$oama$ecm$person$get_photo,
    set_photo : nc$bs$oa$oama$ecm$person$get_photo,
    get_psnjobid : nc$bs$oa$oama$ecm$person$get_psnjobid,
    set_psnjobid : nc$bs$oa$oama$ecm$person$get_psnjobid
}
nc.bs.oa.oama.ecm.person.registerClass('nc.bs.oa.oama.ecm.person',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.pGroup = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.pGroup.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$pGroup$get_psngroupid(){
    return this.get('psngroupid');
}
function nc$bs$oa$oama$ecm$pGroup$set_psngroupid(value){
    return this.set('psngroupid',value);
}
function nc$bs$oa$oama$ecm$pGroup$get_psngroupname(){
    return this.get('psngroupname');
}
function nc$bs$oa$oama$ecm$pGroup$set_psngroupname(value){
    return this.set('psngroupname',value);
}
function nc$bs$oa$oama$ecm$pGroup$get_psnnum(){
    return this.get('psnnum');
}
function nc$bs$oa$oama$ecm$pGroup$set_psnnum(value){
    return this.set('psnnum',value);
}
function nc$bs$oa$oama$ecm$pGroup$get_nameandnum(){
    return this.get('nameandnum');
}
function nc$bs$oa$oama$ecm$pGroup$set_nameandnum(value){
    return this.set('nameandnum',value);
}
function nc$bs$oa$oama$ecm$pGroup$get_isChecked(){
    return this.get('isChecked');
}
function nc$bs$oa$oama$ecm$pGroup$set_isChecked(value){
    return this.set('isChecked',value);
}
nc.bs.oa.oama.ecm.pGroup.prototype = {
    get_psngroupid : nc$bs$oa$oama$ecm$pGroup$get_psngroupid,
    set_psngroupid : nc$bs$oa$oama$ecm$pGroup$get_psngroupid,
    get_psngroupname : nc$bs$oa$oama$ecm$pGroup$get_psngroupname,
    set_psngroupname : nc$bs$oa$oama$ecm$pGroup$get_psngroupname,
    get_psnnum : nc$bs$oa$oama$ecm$pGroup$get_psnnum,
    set_psnnum : nc$bs$oa$oama$ecm$pGroup$get_psnnum,
    get_nameandnum : nc$bs$oa$oama$ecm$pGroup$get_nameandnum,
    set_nameandnum : nc$bs$oa$oama$ecm$pGroup$get_nameandnum,
    get_isChecked : nc$bs$oa$oama$ecm$pGroup$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$pGroup$get_isChecked
}
nc.bs.oa.oama.ecm.pGroup.registerClass('nc.bs.oa.oama.ecm.pGroup',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.extInfo = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.extInfo.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$extInfo$get_displaycaption(){
    return this.get('displaycaption');
}
function nc$bs$oa$oama$ecm$extInfo$set_displaycaption(value){
    return this.set('displaycaption',value);
}
function nc$bs$oa$oama$ecm$extInfo$get_displayvalue(){
    return this.get('displayvalue');
}
function nc$bs$oa$oama$ecm$extInfo$set_displayvalue(value){
    return this.set('displayvalue',value);
}
nc.bs.oa.oama.ecm.extInfo.prototype = {
    get_displaycaption : nc$bs$oa$oama$ecm$extInfo$get_displaycaption,
    set_displaycaption : nc$bs$oa$oama$ecm$extInfo$get_displaycaption,
    get_displayvalue : nc$bs$oa$oama$ecm$extInfo$get_displayvalue,
    set_displayvalue : nc$bs$oa$oama$ecm$extInfo$get_displayvalue
}
nc.bs.oa.oama.ecm.extInfo.registerClass('nc.bs.oa.oama.ecm.extInfo',UMP.UI.Mvc.Context);

