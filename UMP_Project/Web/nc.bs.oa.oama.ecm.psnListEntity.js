Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.psnListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.psnListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "psnList", {"tag":"context","attributes":{"id":"psnList","iscascade":"false","from-type":"context","filter":""},"fields":{"persons":{"tag":"fieldset","attributes":{"id":"persons","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"person","type":"string","parent-field":"","from-type":"context"},"fields":{"position":{"tag":"field","attributes":{"id":"position","type":"string"}},"sex":{"tag":"field","attributes":{"id":"sex","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"datetime"}},"buzunit":{"tag":"field","attributes":{"id":"buzunit","type":"string"}},"psnid":{"tag":"field","attributes":{"id":"psnid","type":"string"}},"job":{"tag":"field","attributes":{"id":"job","type":"string"}},"psnjobid":{"tag":"field","attributes":{"id":"psnjobid","type":"string"}},"photo":{"tag":"field","attributes":{"id":"photo","type":"string"}},"mobileno":{"tag":"field","attributes":{"id":"mobileno","type":"string"}},"extinfos":{"tag":"fieldset","attributes":{"id":"extinfos","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"extInfo","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"displaycaption":{"tag":"field","attributes":{"id":"displaycaption","type":"string"}},"displayvalue":{"tag":"field","attributes":{"id":"displayvalue","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"officephone":{"tag":"field","attributes":{"id":"officephone","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"bool"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"pgroups":{"tag":"fieldset","attributes":{"id":"pgroups","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"pGroup","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"psnnum":{"tag":"field","attributes":{"id":"psnnum","type":"string"}},"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"bool"}},"psngroupid":{"tag":"field","attributes":{"id":"psngroupid","type":"string"}},"psngroupname":{"tag":"field","attributes":{"id":"psngroupname","type":"string"}},"nameandnum":{"tag":"field","attributes":{"id":"nameandnum","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"dept":{"tag":"field","attributes":{"id":"dept","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$psnListEntity$get_persons(){
    return this.field('persons');
}
function nc$bs$oa$oama$ecm$psnListEntity$set_persons(value){
    return this.field('persons',value);
}
nc.bs.oa.oama.ecm.psnListEntity.prototype = {
    get_persons : nc$bs$oa$oama$ecm$psnListEntity$get_persons,
    set_persons : nc$bs$oa$oama$ecm$psnListEntity$get_persons
}
nc.bs.oa.oama.ecm.psnListEntity.registerClass('nc.bs.oa.oama.ecm.psnListEntity',UMP.UI.Mvc.Entity);
