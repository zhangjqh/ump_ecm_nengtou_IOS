Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.eGroupListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.eGroupListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "eGroupList", {"tag":"context","attributes":{"id":"eGroupList","iscascade":"false","from-type":"context","filter":""},"fields":{"eGroups":{"tag":"fieldset","attributes":{"id":"eGroups","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"eGroup","type":"string","parent-field":"","from-type":"context"},"fields":{"psnnum":{"tag":"field","attributes":{"id":"psnnum","type":"string"}},"egroupid":{"tag":"field","attributes":{"id":"egroupid","type":"string"}},"groupname":{"tag":"field","attributes":{"id":"groupname","type":"string"}},"nameandnum":{"tag":"field","attributes":{"id":"nameandnum","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$eGroupListEntity$get_eGroups(){
    return this.field('eGroups');
}
function nc$bs$oa$oama$ecm$eGroupListEntity$set_eGroups(value){
    return this.field('eGroups',value);
}
nc.bs.oa.oama.ecm.eGroupListEntity.prototype = {
    get_eGroups : nc$bs$oa$oama$ecm$eGroupListEntity$get_eGroups,
    set_eGroups : nc$bs$oa$oama$ecm$eGroupListEntity$get_eGroups
}
nc.bs.oa.oama.ecm.eGroupListEntity.registerClass('nc.bs.oa.oama.ecm.eGroupListEntity',UMP.UI.Mvc.Entity);
