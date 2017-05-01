Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.messageGroupEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.messageGroupEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "messageGroup", {"tag":"context","attributes":{"id":"messageGroup","iscascade":"false","from-type":"context","filter":""},"fields":{"msglist":{"tag":"fieldset","attributes":{"id":"msglist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"messageList","type":"","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"sendDate":{"tag":"field","attributes":{"id":"sendDate","type":"datetime"}},"topic":{"tag":"field","attributes":{"id":"topic","type":"string"}},"msgtitle":{"tag":"field","attributes":{"id":"msgtitle","type":"string"}},"sendBy":{"tag":"field","attributes":{"id":"sendBy","type":"string"}},"sendType":{"tag":"field","attributes":{"id":"sendType","type":"string"}},"msgID":{"tag":"field","attributes":{"id":"msgID","type":"string"}},"businessType":{"tag":"field","attributes":{"id":"businessType","type":"string"}},"msgType":{"tag":"field","attributes":{"id":"msgType","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$messageGroupEntity$get_msglist(){
    return this.field('msglist');
}
function nc$bs$oa$oama$ecm$messageGroupEntity$set_msglist(value){
    return this.field('msglist',value);
}
nc.bs.oa.oama.ecm.messageGroupEntity.prototype = {
    get_msglist : nc$bs$oa$oama$ecm$messageGroupEntity$get_msglist,
    set_msglist : nc$bs$oa$oama$ecm$messageGroupEntity$get_msglist
}
nc.bs.oa.oama.ecm.messageGroupEntity.registerClass('nc.bs.oa.oama.ecm.messageGroupEntity',UMP.UI.Mvc.Entity);
