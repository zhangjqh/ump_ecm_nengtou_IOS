Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.GroupListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.GroupListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "GroupList", {"tag":"context","attributes":{"id":"GroupList","iscascade":"false","from-type":"context","filter":""},"fields":{"pagesize":{"tag":"field","attributes":{"id":"pagesize","type":"string"}},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"viewid":{"tag":"field","attributes":{"id":"viewid","type":"string"}},"action":{"tag":"field","attributes":{"id":"action","type":"string"}},"state":{"tag":"field","attributes":{"id":"state","type":"string"}},"groups":{"tag":"fieldset","attributes":{"id":"groups","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"WorkGroup","type":"string","parent-field":"","from-type":"context"},"fields":{"title":{"tag":"field","attributes":{"id":"title","type":"string"}},"works":{"tag":"fieldset","attributes":{"id":"works","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"Work","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"title":{"tag":"field","attributes":{"id":"title","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"date":{"tag":"field","attributes":{"id":"date","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_groups(){
    return this.field('groups');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_groups(value){
    return this.field('groups',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_pagesize(){
    return this.field('pagesize');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_pagesize(value){
    return this.field('pagesize',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_state(){
    return this.field('state');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_state(value){
    return this.field('state',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_action(){
    return this.field('action');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_action(value){
    return this.field('action',value);
}
function nc$bs$oa$oama$ecm$GroupListEntity$get_viewid(){
    return this.field('viewid');
}
function nc$bs$oa$oama$ecm$GroupListEntity$set_viewid(value){
    return this.field('viewid',value);
}
nc.bs.oa.oama.ecm.GroupListEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$GroupListEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$GroupListEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$GroupListEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$GroupListEntity$get_des,
    get_groups : nc$bs$oa$oama$ecm$GroupListEntity$get_groups,
    set_groups : nc$bs$oa$oama$ecm$GroupListEntity$get_groups,
    get_pagesize : nc$bs$oa$oama$ecm$GroupListEntity$get_pagesize,
    set_pagesize : nc$bs$oa$oama$ecm$GroupListEntity$get_pagesize,
    get_state : nc$bs$oa$oama$ecm$GroupListEntity$get_state,
    set_state : nc$bs$oa$oama$ecm$GroupListEntity$get_state,
    get_action : nc$bs$oa$oama$ecm$GroupListEntity$get_action,
    set_action : nc$bs$oa$oama$ecm$GroupListEntity$get_action,
    get_viewid : nc$bs$oa$oama$ecm$GroupListEntity$get_viewid,
    set_viewid : nc$bs$oa$oama$ecm$GroupListEntity$get_viewid
}
nc.bs.oa.oama.ecm.GroupListEntity.registerClass('nc.bs.oa.oama.ecm.GroupListEntity',UMP.UI.Mvc.Entity);
