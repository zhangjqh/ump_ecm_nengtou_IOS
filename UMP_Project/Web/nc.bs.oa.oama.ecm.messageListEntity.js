Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.messageListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.messageListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "messageList", {"tag":"context","attributes":{"id":"messageList","iscascade":"false","from-type":"context","filter":""},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"topic":{"tag":"field","attributes":{"id":"topic","type":"string"}},"sendBy":{"tag":"field","attributes":{"id":"sendBy","type":"string"}},"msgType":{"tag":"field","attributes":{"id":"msgType","type":"string"}},"datetime":{"tag":"field","attributes":{"id":"datetime","type":"datetime"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$messageListEntity$get_topic(){
    return this.field('topic');
}
function nc$bs$oa$oama$ecm$messageListEntity$set_topic(value){
    return this.field('topic',value);
}
function nc$bs$oa$oama$ecm$messageListEntity$get_msgType(){
    return this.field('msgType');
}
function nc$bs$oa$oama$ecm$messageListEntity$set_msgType(value){
    return this.field('msgType',value);
}
function nc$bs$oa$oama$ecm$messageListEntity$get_sendBy(){
    return this.field('sendBy');
}
function nc$bs$oa$oama$ecm$messageListEntity$set_sendBy(value){
    return this.field('sendBy',value);
}
function nc$bs$oa$oama$ecm$messageListEntity$get_datetime(){
    return this.field('datetime');
}
function nc$bs$oa$oama$ecm$messageListEntity$set_datetime(value){
    return this.field('datetime',value);
}
function nc$bs$oa$oama$ecm$messageListEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$messageListEntity$set_content(value){
    return this.field('content',value);
}
nc.bs.oa.oama.ecm.messageListEntity.prototype = {
    get_topic : nc$bs$oa$oama$ecm$messageListEntity$get_topic,
    set_topic : nc$bs$oa$oama$ecm$messageListEntity$get_topic,
    get_msgType : nc$bs$oa$oama$ecm$messageListEntity$get_msgType,
    set_msgType : nc$bs$oa$oama$ecm$messageListEntity$get_msgType,
    get_sendBy : nc$bs$oa$oama$ecm$messageListEntity$get_sendBy,
    set_sendBy : nc$bs$oa$oama$ecm$messageListEntity$get_sendBy,
    get_datetime : nc$bs$oa$oama$ecm$messageListEntity$get_datetime,
    set_datetime : nc$bs$oa$oama$ecm$messageListEntity$get_datetime,
    get_content : nc$bs$oa$oama$ecm$messageListEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$messageListEntity$get_content
}
nc.bs.oa.oama.ecm.messageListEntity.registerClass('nc.bs.oa.oama.ecm.messageListEntity',UMP.UI.Mvc.Entity);
