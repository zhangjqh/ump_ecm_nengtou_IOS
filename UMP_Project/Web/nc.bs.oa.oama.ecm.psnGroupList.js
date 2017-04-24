Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.psnGroupList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.psnGroupList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$psnGroupList$get_persongroups(){
    return this.get('persongroups');
}
function nc$bs$oa$oama$ecm$psnGroupList$set_persongroups(value){
    return this.set('persongroups',value);
}
nc.bs.oa.oama.ecm.psnGroupList.prototype = {
    get_persongroups : nc$bs$oa$oama$ecm$psnGroupList$get_persongroups,
    set_persongroups : nc$bs$oa$oama$ecm$psnGroupList$get_persongroups
}
nc.bs.oa.oama.ecm.psnGroupList.registerClass('nc.bs.oa.oama.ecm.psnGroupList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.personGroup = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.personGroup.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$personGroup$get_psngroupid(){
    return this.get('psngroupid');
}
function nc$bs$oa$oama$ecm$personGroup$set_psngroupid(value){
    return this.set('psngroupid',value);
}
function nc$bs$oa$oama$ecm$personGroup$get_psngroupname(){
    return this.get('psngroupname');
}
function nc$bs$oa$oama$ecm$personGroup$set_psngroupname(value){
    return this.set('psngroupname',value);
}
function nc$bs$oa$oama$ecm$personGroup$get_psnnum(){
    return this.get('psnnum');
}
function nc$bs$oa$oama$ecm$personGroup$set_psnnum(value){
    return this.set('psnnum',value);
}
function nc$bs$oa$oama$ecm$personGroup$get_nameandnum(){
    return this.get('nameandnum');
}
function nc$bs$oa$oama$ecm$personGroup$set_nameandnum(value){
    return this.set('nameandnum',value);
}
function nc$bs$oa$oama$ecm$personGroup$get_isChecked(){
    return this.get('isChecked');
}
function nc$bs$oa$oama$ecm$personGroup$set_isChecked(value){
    return this.set('isChecked',value);
}
nc.bs.oa.oama.ecm.personGroup.prototype = {
    get_psngroupid : nc$bs$oa$oama$ecm$personGroup$get_psngroupid,
    set_psngroupid : nc$bs$oa$oama$ecm$personGroup$get_psngroupid,
    get_psngroupname : nc$bs$oa$oama$ecm$personGroup$get_psngroupname,
    set_psngroupname : nc$bs$oa$oama$ecm$personGroup$get_psngroupname,
    get_psnnum : nc$bs$oa$oama$ecm$personGroup$get_psnnum,
    set_psnnum : nc$bs$oa$oama$ecm$personGroup$get_psnnum,
    get_nameandnum : nc$bs$oa$oama$ecm$personGroup$get_nameandnum,
    set_nameandnum : nc$bs$oa$oama$ecm$personGroup$get_nameandnum,
    get_isChecked : nc$bs$oa$oama$ecm$personGroup$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$personGroup$get_isChecked
}
nc.bs.oa.oama.ecm.personGroup.registerClass('nc.bs.oa.oama.ecm.personGroup',UMP.UI.Mvc.Context);

