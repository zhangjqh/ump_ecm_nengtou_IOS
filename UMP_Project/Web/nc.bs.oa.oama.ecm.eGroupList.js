Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.eGroupList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.eGroupList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$eGroupList$get_eGroups(){
    return this.get('eGroups');
}
function nc$bs$oa$oama$ecm$eGroupList$set_eGroups(value){
    return this.set('eGroups',value);
}
nc.bs.oa.oama.ecm.eGroupList.prototype = {
    get_eGroups : nc$bs$oa$oama$ecm$eGroupList$get_eGroups,
    set_eGroups : nc$bs$oa$oama$ecm$eGroupList$get_eGroups
}
nc.bs.oa.oama.ecm.eGroupList.registerClass('nc.bs.oa.oama.ecm.eGroupList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.eGroup = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.eGroup.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$eGroup$get_egroupid(){
    return this.get('egroupid');
}
function nc$bs$oa$oama$ecm$eGroup$set_egroupid(value){
    return this.set('egroupid',value);
}
function nc$bs$oa$oama$ecm$eGroup$get_groupname(){
    return this.get('groupname');
}
function nc$bs$oa$oama$ecm$eGroup$set_groupname(value){
    return this.set('groupname',value);
}
function nc$bs$oa$oama$ecm$eGroup$get_psnnum(){
    return this.get('psnnum');
}
function nc$bs$oa$oama$ecm$eGroup$set_psnnum(value){
    return this.set('psnnum',value);
}
function nc$bs$oa$oama$ecm$eGroup$get_nameandnum(){
    return this.get('nameandnum');
}
function nc$bs$oa$oama$ecm$eGroup$set_nameandnum(value){
    return this.set('nameandnum',value);
}
nc.bs.oa.oama.ecm.eGroup.prototype = {
    get_egroupid : nc$bs$oa$oama$ecm$eGroup$get_egroupid,
    set_egroupid : nc$bs$oa$oama$ecm$eGroup$get_egroupid,
    get_groupname : nc$bs$oa$oama$ecm$eGroup$get_groupname,
    set_groupname : nc$bs$oa$oama$ecm$eGroup$get_groupname,
    get_psnnum : nc$bs$oa$oama$ecm$eGroup$get_psnnum,
    set_psnnum : nc$bs$oa$oama$ecm$eGroup$get_psnnum,
    get_nameandnum : nc$bs$oa$oama$ecm$eGroup$get_nameandnum,
    set_nameandnum : nc$bs$oa$oama$ecm$eGroup$get_nameandnum
}
nc.bs.oa.oama.ecm.eGroup.registerClass('nc.bs.oa.oama.ecm.eGroup',UMP.UI.Mvc.Context);

