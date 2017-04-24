Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_CreateMessageEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.msg_CreateMessageEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "msg_CreateMessage", {"tag":"context","attributes":{"id":"msg_CreateMessage","iscascade":"false","from-type":"context","filter":""},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"topic":{"tag":"field","attributes":{"id":"topic","type":"string"}},"sendtypelist":{"tag":"fieldset","attributes":{"id":"sendtypelist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"msg_SendType","type":"string","parent-field":"","from-type":"context"},"fields":{"chk4Push":{"tag":"field","attributes":{"id":"chk4Push","type":"bool"}},"sendType4Push":{"tag":"field","attributes":{"id":"sendType4Push","type":"string"}},"sendType4Email":{"tag":"field","attributes":{"id":"sendType4Email","type":"string"}},"sendType4cssms":{"tag":"field","attributes":{"id":"sendType4cssms","type":"string"}},"chk4IM":{"tag":"field","attributes":{"id":"chk4IM","type":"bool"}},"chk4CSSMS":{"tag":"field","attributes":{"id":"chk4CSSMS","type":"bool"}},"sendType4Im":{"tag":"field","attributes":{"id":"sendType4Im","type":"string"}},"chk4Email":{"tag":"field","attributes":{"id":"chk4Email","type":"bool"}}},"namespace":"nc.bs.oa.oama.ecm"},"attachmentlist":{"tag":"fieldset","attributes":{"id":"attachmentlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"msg_Attachment","type":"string","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"filepath":{"tag":"field","attributes":{"id":"filepath","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"sizeshow":{"tag":"field","attributes":{"id":"sizeshow","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}},"size":{"tag":"field","attributes":{"id":"size","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"messagetype":{"tag":"field","attributes":{"id":"messagetype","type":"string"}},"attachments":{"tag":"field","attributes":{"id":"attachments","type":"string"}},"messageid":{"tag":"field","attributes":{"id":"messageid","from":"","type":""}},"maclientid":{"tag":"field","attributes":{"id":"maclientid","type":"string"}},"recipientList":{"tag":"fieldset","attributes":{"id":"recipientList","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"msg_Recipient","type":"string","parent-field":"","from-type":"context"},"fields":{"recipientName":{"tag":"field","attributes":{"id":"recipientName","type":"string"}},"recipientID":{"tag":"field","attributes":{"id":"recipientID","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"recipientNames":{"tag":"field","attributes":{"id":"recipientNames","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientList(){
    return this.field('recipientList');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_recipientList(value){
    return this.field('recipientList',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachmentlist(){
    return this.field('attachmentlist');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_attachmentlist(value){
    return this.field('attachmentlist',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_sendtypelist(){
    return this.field('sendtypelist');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_sendtypelist(value){
    return this.field('sendtypelist',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messageid(){
    return this.field('messageid');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_messageid(value){
    return this.field('messageid',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientNames(){
    return this.field('recipientNames');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_recipientNames(value){
    return this.field('recipientNames',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_topic(){
    return this.field('topic');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_topic(value){
    return this.field('topic',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_content(){
    return this.field('content');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_content(value){
    return this.field('content',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachments(){
    return this.field('attachments');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_attachments(value){
    return this.field('attachments',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_maclientid(){
    return this.field('maclientid');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_maclientid(value){
    return this.field('maclientid',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messagetype(){
    return this.field('messagetype');
}
function nc$bs$oa$oama$ecm$msg_CreateMessageEntity$set_messagetype(value){
    return this.field('messagetype',value);
}
nc.bs.oa.oama.ecm.msg_CreateMessageEntity.prototype = {
    get_recipientList : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientList,
    set_recipientList : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientList,
    get_attachmentlist : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachmentlist,
    set_attachmentlist : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachmentlist,
    get_sendtypelist : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_sendtypelist,
    set_sendtypelist : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_sendtypelist,
    get_messageid : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messageid,
    set_messageid : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messageid,
    get_recipientNames : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientNames,
    set_recipientNames : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_recipientNames,
    get_topic : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_topic,
    set_topic : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_topic,
    get_content : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_content,
    set_content : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_content,
    get_attachments : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachments,
    set_attachments : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_attachments,
    get_maclientid : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_maclientid,
    set_maclientid : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_maclientid,
    get_messagetype : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messagetype,
    set_messagetype : nc$bs$oa$oama$ecm$msg_CreateMessageEntity$get_messagetype
}
nc.bs.oa.oama.ecm.msg_CreateMessageEntity.registerClass('nc.bs.oa.oama.ecm.msg_CreateMessageEntity',UMP.UI.Mvc.Entity);
