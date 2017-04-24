Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.responserefEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.responserefEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "responseref", {"tag":"context","attributes":{"id":"responseref","iscascade":"false","from-type":"context","filter":""},"fields":{"stafflist":{"tag":"fieldset","attributes":{"id":"stafflist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"person","type":"string","parent-field":"","from-type":"context"},"fields":{"department":{"tag":"field","attributes":{"id":"department","type":"string"}},"staffid":{"tag":"field","attributes":{"id":"staffid","type":"string"}},"ischecked":{"tag":"field","attributes":{"id":"ischecked","type":"bool"}},"nsme":{"tag":"field","attributes":{"id":"nsme","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"listid":{"tag":"field","attributes":{"id":"listid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$responserefEntity$get_listid(){
    return this.field('listid');
}
function nc$bs$oa$oama$ecm$responserefEntity$set_listid(value){
    return this.field('listid',value);
}
function nc$bs$oa$oama$ecm$responserefEntity$get_stafflist(){
    return this.field('stafflist');
}
function nc$bs$oa$oama$ecm$responserefEntity$set_stafflist(value){
    return this.field('stafflist',value);
}
nc.bs.oa.oama.ecm.responserefEntity.prototype = {
    get_listid : nc$bs$oa$oama$ecm$responserefEntity$get_listid,
    set_listid : nc$bs$oa$oama$ecm$responserefEntity$get_listid,
    get_stafflist : nc$bs$oa$oama$ecm$responserefEntity$get_stafflist,
    set_stafflist : nc$bs$oa$oama$ecm$responserefEntity$get_stafflist
}
nc.bs.oa.oama.ecm.responserefEntity.registerClass('nc.bs.oa.oama.ecm.responserefEntity',UMP.UI.Mvc.Entity);
