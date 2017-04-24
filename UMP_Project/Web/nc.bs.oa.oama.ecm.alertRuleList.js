Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.alertRuleList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.alertRuleList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$alertRuleList$get_alertRules(){
    return this.get('alertRules');
}
function nc$bs$oa$oama$ecm$alertRuleList$set_alertRules(value){
    return this.set('alertRules',value);
}
nc.bs.oa.oama.ecm.alertRuleList.prototype = {
    get_alertRules : nc$bs$oa$oama$ecm$alertRuleList$get_alertRules,
    set_alertRules : nc$bs$oa$oama$ecm$alertRuleList$get_alertRules
}
nc.bs.oa.oama.ecm.alertRuleList.registerClass('nc.bs.oa.oama.ecm.alertRuleList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.alertRule = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.alertRule.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$alertRule$get_value(){
    return this.get('value');
}
function nc$bs$oa$oama$ecm$alertRule$set_value(value){
    return this.set('value',value);
}
function nc$bs$oa$oama$ecm$alertRule$get_desc(){
    return this.get('desc');
}
function nc$bs$oa$oama$ecm$alertRule$set_desc(value){
    return this.set('desc',value);
}
nc.bs.oa.oama.ecm.alertRule.prototype = {
    get_value : nc$bs$oa$oama$ecm$alertRule$get_value,
    set_value : nc$bs$oa$oama$ecm$alertRule$get_value,
    get_desc : nc$bs$oa$oama$ecm$alertRule$get_desc,
    set_desc : nc$bs$oa$oama$ecm$alertRule$get_desc
}
nc.bs.oa.oama.ecm.alertRule.registerClass('nc.bs.oa.oama.ecm.alertRule',UMP.UI.Mvc.Context);

