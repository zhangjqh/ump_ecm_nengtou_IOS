Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_MessageDetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.msg_MessageDetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_topic(){
    return this.get('topic');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_topic(value){
    return this.set('topic',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgType(){
    return this.get('msgType');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_msgType(value){
    return this.set('msgType',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendBy(){
    return this.get('sendBy');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_sendBy(value){
    return this.set('sendBy',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendDate(){
    return this.get('sendDate');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_sendDate(value){
    return this.set('sendDate',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_businessType(){
    return this.get('businessType');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_businessType(value){
    return this.set('businessType',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgID(){
    return this.get('msgID');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_msgID(value){
    return this.set('msgID',value);
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$get_attachment(){
    return this.get('attachment');
}
function nc$bs$oa$oama$ecm$msg_MessageDetail$set_attachment(value){
    return this.set('attachment',value);
}
nc.bs.oa.oama.ecm.msg_MessageDetail.prototype = {
    get_topic : nc$bs$oa$oama$ecm$msg_MessageDetail$get_topic,
    set_topic : nc$bs$oa$oama$ecm$msg_MessageDetail$get_topic,
    get_msgType : nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgType,
    set_msgType : nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgType,
    get_sendBy : nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendBy,
    set_sendBy : nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendBy,
    get_sendDate : nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendDate,
    set_sendDate : nc$bs$oa$oama$ecm$msg_MessageDetail$get_sendDate,
    get_content : nc$bs$oa$oama$ecm$msg_MessageDetail$get_content,
    set_content : nc$bs$oa$oama$ecm$msg_MessageDetail$get_content,
    get_businessType : nc$bs$oa$oama$ecm$msg_MessageDetail$get_businessType,
    set_businessType : nc$bs$oa$oama$ecm$msg_MessageDetail$get_businessType,
    get_msgID : nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgID,
    set_msgID : nc$bs$oa$oama$ecm$msg_MessageDetail$get_msgID,
    get_attachment : nc$bs$oa$oama$ecm$msg_MessageDetail$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$msg_MessageDetail$get_attachment
}
nc.bs.oa.oama.ecm.msg_MessageDetail.registerClass('nc.bs.oa.oama.ecm.msg_MessageDetail',UMP.UI.Mvc.Context);

