Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.listconfirmEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.listconfirmEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "listconfirm", {"tag":"context","attributes":{"id":"listconfirm","iscascade":"false","from-type":"context","filter":""},"fields":{"listid":{"tag":"field","attributes":{"id":"listid","type":"string"}},"listname":{"tag":"fieldset","attributes":{"id":"listname","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"reportdetail","type":"string","parent-field":"","from-type":"context"},"fields":{"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"reporttime":{"tag":"field","attributes":{"id":"reporttime","type":"string"}},"reportstate":{"tag":"field","attributes":{"id":"reportstate","type":"string"}},"reportid":{"tag":"field","attributes":{"id":"reportid","type":"string"}},"completion":{"tag":"fieldset","attributes":{"id":"completion","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"completion","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"reprotcontent":{"tag":"field","attributes":{"id":"reprotcontent","type":"string"}},"reporttime":{"tag":"field","attributes":{"id":"reporttime","type":"string"}},"reportname":{"tag":"field","attributes":{"id":"reportname","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"reportname":{"tag":"field","attributes":{"id":"reportname","type":"string"}},"reportheme":{"tag":"field","attributes":{"id":"reportheme","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$listconfirmEntity$get_listid(){
    return this.field('listid');
}
function nc$bs$oa$oama$ecm$listconfirmEntity$set_listid(value){
    return this.field('listid',value);
}
function nc$bs$oa$oama$ecm$listconfirmEntity$get_listname(){
    return this.field('listname');
}
function nc$bs$oa$oama$ecm$listconfirmEntity$set_listname(value){
    return this.field('listname',value);
}
nc.bs.oa.oama.ecm.listconfirmEntity.prototype = {
    get_listid : nc$bs$oa$oama$ecm$listconfirmEntity$get_listid,
    set_listid : nc$bs$oa$oama$ecm$listconfirmEntity$get_listid,
    get_listname : nc$bs$oa$oama$ecm$listconfirmEntity$get_listname,
    set_listname : nc$bs$oa$oama$ecm$listconfirmEntity$get_listname
}
nc.bs.oa.oama.ecm.listconfirmEntity.registerClass('nc.bs.oa.oama.ecm.listconfirmEntity',UMP.UI.Mvc.Entity);
