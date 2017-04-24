Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.psnGroupListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.psnGroupListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "psnGroupList", {"tag":"context","attributes":{"id":"psnGroupList","iscascade":"false","from-type":"context","filter":""},"fields":{"persongroups":{"tag":"fieldset","attributes":{"id":"persongroups","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"personGroup","type":"string","parent-field":"","from-type":"context"},"fields":{"psnnum":{"tag":"field","attributes":{"id":"psnnum","type":"string"}},"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"bool"}},"psngroupid":{"tag":"field","attributes":{"id":"psngroupid","type":"string"}},"psngroupname":{"tag":"field","attributes":{"id":"psngroupname","type":"string"}},"nameandnum":{"tag":"field","attributes":{"id":"nameandnum","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$psnGroupListEntity$get_persongroups(){
    return this.field('persongroups');
}
function nc$bs$oa$oama$ecm$psnGroupListEntity$set_persongroups(value){
    return this.field('persongroups',value);
}
nc.bs.oa.oama.ecm.psnGroupListEntity.prototype = {
    get_persongroups : nc$bs$oa$oama$ecm$psnGroupListEntity$get_persongroups,
    set_persongroups : nc$bs$oa$oama$ecm$psnGroupListEntity$get_persongroups
}
nc.bs.oa.oama.ecm.psnGroupListEntity.registerClass('nc.bs.oa.oama.ecm.psnGroupListEntity',UMP.UI.Mvc.Entity);
