Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.messageGroup = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.messageGroup.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$messageGroup$get_msglist(){
    return this.get('msglist');
}
function nc$bs$oa$oama$ecm$messageGroup$set_msglist(value){
    return this.set('msglist',value);
}
nc.bs.oa.oama.ecm.messageGroup.prototype = {
    get_msglist : nc$bs$oa$oama$ecm$messageGroup$get_msglist,
    set_msglist : nc$bs$oa$oama$ecm$messageGroup$get_msglist
}
nc.bs.oa.oama.ecm.messageGroup.registerClass('nc.bs.oa.oama.ecm.messageGroup',UMP.UI.Mvc.Context);

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
function nc$bs$oa$oama$ecm$messageList$get_sendDate(){
    return this.get('sendDate');
}
function nc$bs$oa$oama$ecm$messageList$set_sendDate(value){
    return this.set('sendDate',value);
}
function nc$bs$oa$oama$ecm$messageList$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$messageList$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$messageList$get_businessType(){
    return this.get('businessType');
}
function nc$bs$oa$oama$ecm$messageList$set_businessType(value){
    return this.set('businessType',value);
}
function nc$bs$oa$oama$ecm$messageList$get_msgID(){
    return this.get('msgID');
}
function nc$bs$oa$oama$ecm$messageList$set_msgID(value){
    return this.set('msgID',value);
}
function nc$bs$oa$oama$ecm$messageList$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$messageList$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
function nc$bs$oa$oama$ecm$messageList$get_sendType(){
    return this.get('sendType');
}
function nc$bs$oa$oama$ecm$messageList$set_sendType(value){
    return this.set('sendType',value);
}
nc.bs.oa.oama.ecm.messageList.prototype = {
    get_topic : nc$bs$oa$oama$ecm$messageList$get_topic,
    set_topic : nc$bs$oa$oama$ecm$messageList$get_topic,
    get_msgType : nc$bs$oa$oama$ecm$messageList$get_msgType,
    set_msgType : nc$bs$oa$oama$ecm$messageList$get_msgType,
    get_sendBy : nc$bs$oa$oama$ecm$messageList$get_sendBy,
    set_sendBy : nc$bs$oa$oama$ecm$messageList$get_sendBy,
    get_sendDate : nc$bs$oa$oama$ecm$messageList$get_sendDate,
    set_sendDate : nc$bs$oa$oama$ecm$messageList$get_sendDate,
    get_content : nc$bs$oa$oama$ecm$messageList$get_content,
    set_content : nc$bs$oa$oama$ecm$messageList$get_content,
    get_businessType : nc$bs$oa$oama$ecm$messageList$get_businessType,
    set_businessType : nc$bs$oa$oama$ecm$messageList$get_businessType,
    get_msgID : nc$bs$oa$oama$ecm$messageList$get_msgID,
    set_msgID : nc$bs$oa$oama$ecm$messageList$get_msgID,
    get_ListViewSelector : nc$bs$oa$oama$ecm$messageList$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$messageList$get_ListViewSelector,
    get_sendType : nc$bs$oa$oama$ecm$messageList$get_sendType,
    set_sendType : nc$bs$oa$oama$ecm$messageList$get_sendType
}
nc.bs.oa.oama.ecm.messageList.registerClass('nc.bs.oa.oama.ecm.messageList',UMP.UI.Mvc.Context);

