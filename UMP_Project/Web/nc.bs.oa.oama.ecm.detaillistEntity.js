Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.detaillistEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.detaillistEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "detaillist", {"tag":"context","attributes":{"id":"detaillist","iscascade":"false","from-type":"context","filter":""},"fields":{"listid":{"tag":"field","attributes":{"id":"listid","type":"string"}},"tasklist":{"tag":"fieldset","attributes":{"id":"tasklist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"task","type":"string","parent-field":"","from-type":"context"},"fields":{"taskshedue":{"tag":"field","attributes":{"id":"taskshedue","type":"string"}},"prioritycode":{"tag":"field","attributes":{"id":"prioritycode","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"charger":{"tag":"field","attributes":{"id":"charger","type":"string"}},"expired":{"tag":"field","attributes":{"id":"expired","type":"string"}},"startdate":{"tag":"field","attributes":{"id":"startdate","type":"string"}},"urge":{"tag":"field","attributes":{"id":"urge","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"taskid":{"tag":"field","attributes":{"id":"taskid","type":"string"}},"mewtask":{"tag":"field","attributes":{"id":"mewtask","type":"string"}},"enddate":{"tag":"field","attributes":{"id":"enddate","type":"string"}},"taskname":{"tag":"field","attributes":{"id":"taskname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$detaillistEntity$get_listid(){
    return this.field('listid');
}
function nc$bs$oa$oama$ecm$detaillistEntity$set_listid(value){
    return this.field('listid',value);
}
function nc$bs$oa$oama$ecm$detaillistEntity$get_tasklist(){
    return this.field('tasklist');
}
function nc$bs$oa$oama$ecm$detaillistEntity$set_tasklist(value){
    return this.field('tasklist',value);
}
nc.bs.oa.oama.ecm.detaillistEntity.prototype = {
    get_listid : nc$bs$oa$oama$ecm$detaillistEntity$get_listid,
    set_listid : nc$bs$oa$oama$ecm$detaillistEntity$get_listid,
    get_tasklist : nc$bs$oa$oama$ecm$detaillistEntity$get_tasklist,
    set_tasklist : nc$bs$oa$oama$ecm$detaillistEntity$get_tasklist
}
nc.bs.oa.oama.ecm.detaillistEntity.registerClass('nc.bs.oa.oama.ecm.detaillistEntity',UMP.UI.Mvc.Entity);
