Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.alertRuleListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.alertRuleListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "alertRuleList", {"tag":"context","attributes":{"id":"alertRuleList","iscascade":"false","from-type":"context","filter":""},"fields":{"alertRules":{"tag":"fieldset","attributes":{"id":"alertRules","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"alertRule","type":"string","parent-field":"","from-type":"context"},"fields":{"desc":{"tag":"field","attributes":{"id":"desc","type":"string"}},"value":{"tag":"field","attributes":{"id":"value","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$alertRuleListEntity$get_alertRules(){
    return this.field('alertRules');
}
function nc$bs$oa$oama$ecm$alertRuleListEntity$set_alertRules(value){
    return this.field('alertRules',value);
}
nc.bs.oa.oama.ecm.alertRuleListEntity.prototype = {
    get_alertRules : nc$bs$oa$oama$ecm$alertRuleListEntity$get_alertRules,
    set_alertRules : nc$bs$oa$oama$ecm$alertRuleListEntity$get_alertRules
}
nc.bs.oa.oama.ecm.alertRuleListEntity.registerClass('nc.bs.oa.oama.ecm.alertRuleListEntity',UMP.UI.Mvc.Entity);
