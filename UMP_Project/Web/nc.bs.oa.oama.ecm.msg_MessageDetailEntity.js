Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_MessageDetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.msg_MessageDetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "msg_MessageDetail", {"tag":"context","attributes":{"id":"msg_MessageDetail","iscascade":"false","from-type":"context","filter":""},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"sendDate":{"tag":"field","attributes":{"id":"sendDate","type":"datetime"}},"topic":{"tag":"field","attributes":{"id":"topic","type":"string"}},"sendBy":{"tag":"field","attributes":{"id":"sendBy","type":"string"}},"msgID":{"tag":"field","attributes":{"id":"msgID","type":"string"}},"businessType":{"tag":"field","attributes":{"id":"businessType","type":"string"}},"msgType":{"tag":"field","attributes":{"id":"msgType","type":"string"}},"attachment":{"tag":"field","attributes":{"id":"attachment","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_topic(){
    return this.field('topic');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_topic(value){
    return this.field('topic',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgType(){
    return this.field('msgType');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_msgType(value){
    return this.field('msgType',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendBy(){
    return this.field('sendBy');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_sendBy(value){
    return this.field('sendBy',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendDate(){
    return this.field('sendDate');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_sendDate(value){
    return this.field('sendDate',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_content(value){
    return this.field('content',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_businessType(){
    return this.field('businessType');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_businessType(value){
    return this.field('businessType',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgID(){
    return this.field('msgID');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_msgID(value){
    return this.field('msgID',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_attachment(){
    return this.field('attachment');
}
function nc$bs$oa$oama$ecm$msg_MessageDetailEntity$set_attachment(value){
    return this.field('attachment',value);
}
nc.bs.oa.oama.ecm.msg_MessageDetailEntity.prototype = {
    get_topic : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_topic,
    set_topic : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_topic,
    get_msgType : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgType,
    set_msgType : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgType,
    get_sendBy : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendBy,
    set_sendBy : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendBy,
    get_sendDate : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendDate,
    set_sendDate : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_sendDate,
    get_content : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_content,
    get_businessType : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_businessType,
    set_businessType : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_businessType,
    get_msgID : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgID,
    set_msgID : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_msgID,
    get_attachment : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$msg_MessageDetailEntity$get_attachment
}
nc.bs.oa.oama.ecm.msg_MessageDetailEntity.registerClass('nc.bs.oa.oama.ecm.msg_MessageDetailEntity',UMP.UI.Mvc.Entity);
