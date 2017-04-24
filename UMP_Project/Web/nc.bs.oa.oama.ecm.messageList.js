Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.messageList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.messageList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$messageList$get_topic(){
    return this.get('topic');
}
function nc$bs$oa$oama$ecm$messageList$set_topic(value){
    return this.set('topic',value);
}
function nc$bs$oa$oama$ecm$messageList$get_msgType(){
    return this.get('msgType');
}
function nc$bs$oa$oama$ecm$messageList$set_msgType(value){
    return this.set('msgType',value);
}
function nc$bs$oa$oama$ecm$messageList$get_sendBy(){
    return this.get('sendBy');
}
function nc$bs$oa$oama$ecm$messageList$set_sendBy(value){
    return this.set('sendBy',value);
}
function nc$bs$oa$oama$ecm$messageList$get_datetime(){
    return this.get('datetime');
}
function nc$bs$oa$oama$ecm$messageList$set_datetime(value){
    return this.set('datetime',value);
}
function nc$bs$oa$oama$ecm$messageList$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$messageList$set_content(value){
    return this.set('content',value);
}
nc.bs.oa.oama.ecm.messageList.prototype = {
    get_topic : nc$bs$oa$oama$ecm$messageList$get_topic,
    set_topic : nc$bs$oa$oama$ecm$messageList$get_topic,
    get_msgType : nc$bs$oa$oama$ecm$messageList$get_msgType,
    set_msgType : nc$bs$oa$oama$ecm$messageList$get_msgType,
    get_sendBy : nc$bs$oa$oama$ecm$messageList$get_sendBy,
    set_sendBy : nc$bs$oa$oama$ecm$messageList$get_sendBy,
    get_datetime : nc$bs$oa$oama$ecm$messageList$get_datetime,
    set_datetime : nc$bs$oa$oama$ecm$messageList$get_datetime,
    get_content : nc$bs$oa$oama$ecm$messageList$get_content,
    set_content : nc$bs$oa$oama$ecm$messageList$get_content
}
nc.bs.oa.oama.ecm.messageList.registerClass('nc.bs.oa.oama.ecm.messageList',UMP.UI.Mvc.Context);

