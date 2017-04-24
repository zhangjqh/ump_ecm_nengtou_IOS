Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_CreateMessage = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.msg_CreateMessage.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientList(){
    return this.get('recipientList');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_recipientList(value){
    return this.set('recipientList',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachmentlist(){
    return this.get('attachmentlist');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_attachmentlist(value){
    return this.set('attachmentlist',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_sendtypelist(){
    return this.get('sendtypelist');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_sendtypelist(value){
    return this.set('sendtypelist',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_messageid(){
    return this.get('messageid');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_messageid(value){
    return this.set('messageid',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientNames(){
    return this.get('recipientNames');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_recipientNames(value){
    return this.set('recipientNames',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_topic(){
    return this.get('topic');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_topic(value){
    return this.set('topic',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachments(){
    return this.get('attachments');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_attachments(value){
    return this.set('attachments',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_maclientid(){
    return this.get('maclientid');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_maclientid(value){
    return this.set('maclientid',value);
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$get_messagetype(){
    return this.get('messagetype');
}
function nc$bs$oa$oama$ecm$msg_CreateMessage$set_messagetype(value){
    return this.set('messagetype',value);
}
nc.bs.oa.oama.ecm.msg_CreateMessage.prototype = {
    get_recipientList : nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientList,
    set_recipientList : nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientList,
    get_attachmentlist : nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachmentlist,
    set_attachmentlist : nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachmentlist,
    get_sendtypelist : nc$bs$oa$oama$ecm$msg_CreateMessage$get_sendtypelist,
    set_sendtypelist : nc$bs$oa$oama$ecm$msg_CreateMessage$get_sendtypelist,
    get_messageid : nc$bs$oa$oama$ecm$msg_CreateMessage$get_messageid,
    set_messageid : nc$bs$oa$oama$ecm$msg_CreateMessage$get_messageid,
    get_recipientNames : nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientNames,
    set_recipientNames : nc$bs$oa$oama$ecm$msg_CreateMessage$get_recipientNames,
    get_topic : nc$bs$oa$oama$ecm$msg_CreateMessage$get_topic,
    set_topic : nc$bs$oa$oama$ecm$msg_CreateMessage$get_topic,
    get_content : nc$bs$oa$oama$ecm$msg_CreateMessage$get_content,
    set_content : nc$bs$oa$oama$ecm$msg_CreateMessage$get_content,
    get_attachments : nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachments,
    set_attachments : nc$bs$oa$oama$ecm$msg_CreateMessage$get_attachments,
    get_maclientid : nc$bs$oa$oama$ecm$msg_CreateMessage$get_maclientid,
    set_maclientid : nc$bs$oa$oama$ecm$msg_CreateMessage$get_maclientid,
    get_messagetype : nc$bs$oa$oama$ecm$msg_CreateMessage$get_messagetype,
    set_messagetype : nc$bs$oa$oama$ecm$msg_CreateMessage$get_messagetype
}
nc.bs.oa.oama.ecm.msg_CreateMessage.registerClass('nc.bs.oa.oama.ecm.msg_CreateMessage',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_Recipient = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.msg_Recipient.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$msg_Recipient$get_recipientID(){
    return this.get('recipientID');
}
function nc$bs$oa$oama$ecm$msg_Recipient$set_recipientID(value){
    return this.set('recipientID',value);
}
function nc$bs$oa$oama$ecm$msg_Recipient$get_recipientName(){
    return this.get('recipientName');
}
function nc$bs$oa$oama$ecm$msg_Recipient$set_recipientName(value){
    return this.set('recipientName',value);
}
nc.bs.oa.oama.ecm.msg_Recipient.prototype = {
    get_recipientID : nc$bs$oa$oama$ecm$msg_Recipient$get_recipientID,
    set_recipientID : nc$bs$oa$oama$ecm$msg_Recipient$get_recipientID,
    get_recipientName : nc$bs$oa$oama$ecm$msg_Recipient$get_recipientName,
    set_recipientName : nc$bs$oa$oama$ecm$msg_Recipient$get_recipientName
}
nc.bs.oa.oama.ecm.msg_Recipient.registerClass('nc.bs.oa.oama.ecm.msg_Recipient',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_Attachment = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.msg_Attachment.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_size(){
    return this.get('size');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_size(value){
    return this.set('size',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_sizeshow(){
    return this.get('sizeshow');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_sizeshow(value){
    return this.set('sizeshow',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_filepath(){
    return this.get('filepath');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_filepath(value){
    return this.set('filepath',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_downflag(){
    return this.get('downflag');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_downflag(value){
    return this.set('downflag',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$msg_Attachment$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$msg_Attachment$set_type(value){
    return this.set('type',value);
}
nc.bs.oa.oama.ecm.msg_Attachment.prototype = {
    get_size : nc$bs$oa$oama$ecm$msg_Attachment$get_size,
    set_size : nc$bs$oa$oama$ecm$msg_Attachment$get_size,
    get_sizeshow : nc$bs$oa$oama$ecm$msg_Attachment$get_sizeshow,
    set_sizeshow : nc$bs$oa$oama$ecm$msg_Attachment$get_sizeshow,
    get_filepath : nc$bs$oa$oama$ecm$msg_Attachment$get_filepath,
    set_filepath : nc$bs$oa$oama$ecm$msg_Attachment$get_filepath,
    get_name : nc$bs$oa$oama$ecm$msg_Attachment$get_name,
    set_name : nc$bs$oa$oama$ecm$msg_Attachment$get_name,
    get_id : nc$bs$oa$oama$ecm$msg_Attachment$get_id,
    set_id : nc$bs$oa$oama$ecm$msg_Attachment$get_id,
    get_index : nc$bs$oa$oama$ecm$msg_Attachment$get_index,
    set_index : nc$bs$oa$oama$ecm$msg_Attachment$get_index,
    get_downflag : nc$bs$oa$oama$ecm$msg_Attachment$get_downflag,
    set_downflag : nc$bs$oa$oama$ecm$msg_Attachment$get_downflag,
    get_content : nc$bs$oa$oama$ecm$msg_Attachment$get_content,
    set_content : nc$bs$oa$oama$ecm$msg_Attachment$get_content,
    get_type : nc$bs$oa$oama$ecm$msg_Attachment$get_type,
    set_type : nc$bs$oa$oama$ecm$msg_Attachment$get_type
}
nc.bs.oa.oama.ecm.msg_Attachment.registerClass('nc.bs.oa.oama.ecm.msg_Attachment',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.msg_SendType = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.msg_SendType.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Email(){
    return this.get('sendType4Email');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_sendType4Email(value){
    return this.set('sendType4Email',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Im(){
    return this.get('sendType4Im');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_sendType4Im(value){
    return this.set('sendType4Im',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Push(){
    return this.get('sendType4Push');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_sendType4Push(value){
    return this.set('sendType4Push',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_sendType4cssms(){
    return this.get('sendType4cssms');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_sendType4cssms(value){
    return this.set('sendType4cssms',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_chk4Email(){
    return this.get('chk4Email');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_chk4Email(value){
    return this.set('chk4Email',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_chk4IM(){
    return this.get('chk4IM');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_chk4IM(value){
    return this.set('chk4IM',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_chk4Push(){
    return this.get('chk4Push');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_chk4Push(value){
    return this.set('chk4Push',value);
}
function nc$bs$oa$oama$ecm$msg_SendType$get_chk4CSSMS(){
    return this.get('chk4CSSMS');
}
function nc$bs$oa$oama$ecm$msg_SendType$set_chk4CSSMS(value){
    return this.set('chk4CSSMS',value);
}
nc.bs.oa.oama.ecm.msg_SendType.prototype = {
    get_sendType4Email : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Email,
    set_sendType4Email : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Email,
    get_sendType4Im : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Im,
    set_sendType4Im : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Im,
    get_sendType4Push : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Push,
    set_sendType4Push : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4Push,
    get_sendType4cssms : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4cssms,
    set_sendType4cssms : nc$bs$oa$oama$ecm$msg_SendType$get_sendType4cssms,
    get_chk4Email : nc$bs$oa$oama$ecm$msg_SendType$get_chk4Email,
    set_chk4Email : nc$bs$oa$oama$ecm$msg_SendType$get_chk4Email,
    get_chk4IM : nc$bs$oa$oama$ecm$msg_SendType$get_chk4IM,
    set_chk4IM : nc$bs$oa$oama$ecm$msg_SendType$get_chk4IM,
    get_chk4Push : nc$bs$oa$oama$ecm$msg_SendType$get_chk4Push,
    set_chk4Push : nc$bs$oa$oama$ecm$msg_SendType$get_chk4Push,
    get_chk4CSSMS : nc$bs$oa$oama$ecm$msg_SendType$get_chk4CSSMS,
    set_chk4CSSMS : nc$bs$oa$oama$ecm$msg_SendType$get_chk4CSSMS
}
nc.bs.oa.oama.ecm.msg_SendType.registerClass('nc.bs.oa.oama.ecm.msg_SendType',UMP.UI.Mvc.Context);

