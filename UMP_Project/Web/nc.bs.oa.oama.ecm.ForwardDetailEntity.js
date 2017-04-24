Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ForwardDetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.ForwardDetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "ForwardDetail", {"tag":"context","attributes":{"id":"ForwardDetail","iscascade":"false","from-type":"context","filter":""},"fields":{"flowedit":{"tag":"fieldset","attributes":{"id":"flowedit","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"FlowEdit","type":"string","parent-field":"","from-type":"context"},"fields":{"model":{"tag":"field","attributes":{"id":"model","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"names":{"tag":"field","attributes":{"id":"names","type":"string"}},"rulename":{"tag":"field","attributes":{"id":"rulename","type":"string"}},"rule":{"tag":"field","attributes":{"id":"rule","type":"string"}},"active":{"tag":"field","attributes":{"id":"active","type":"string"}},"steps":{"tag":"fieldset","attributes":{"id":"steps","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"StepEdit","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"},"sourceid":{"tag":"field","attributes":{"id":"sourceid","type":"string"}},"opinion":{"tag":"field","attributes":{"id":"opinion","type":"string"}},"attachment":{"tag":"fieldset","attributes":{"id":"attachment","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"Attachment","type":"string","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"filepath":{"tag":"field","attributes":{"id":"filepath","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"sizeshow":{"tag":"field","attributes":{"id":"sizeshow","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}},"size":{"tag":"field","attributes":{"id":"size","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$get_flowedit(){
    return this.field('flowedit');
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$set_flowedit(value){
    return this.field('flowedit',value);
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$get_attachment(){
    return this.field('attachment');
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$set_attachment(value){
    return this.field('attachment',value);
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$get_sourceid(){
    return this.field('sourceid');
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$set_sourceid(value){
    return this.field('sourceid',value);
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$get_opinion(){
    return this.field('opinion');
}
function nc$bs$oa$oama$ecm$ForwardDetailEntity$set_opinion(value){
    return this.field('opinion',value);
}
nc.bs.oa.oama.ecm.ForwardDetailEntity.prototype = {
    get_flowedit : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_flowedit,
    set_flowedit : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_flowedit,
    get_attachment : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_attachment,
    get_sourceid : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_sourceid,
    set_sourceid : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_sourceid,
    get_opinion : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_opinion,
    set_opinion : nc$bs$oa$oama$ecm$ForwardDetailEntity$get_opinion
}
nc.bs.oa.oama.ecm.ForwardDetailEntity.registerClass('nc.bs.oa.oama.ecm.ForwardDetailEntity',UMP.UI.Mvc.Entity);
