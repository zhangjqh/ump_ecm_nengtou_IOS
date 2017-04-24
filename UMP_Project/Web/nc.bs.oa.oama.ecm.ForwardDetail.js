Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ForwardDetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.ForwardDetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$ForwardDetail$get_flowedit(){
    return this.get('flowedit');
}
function nc$bs$oa$oama$ecm$ForwardDetail$set_flowedit(value){
    return this.set('flowedit',value);
}
function nc$bs$oa$oama$ecm$ForwardDetail$get_attachment(){
    return this.get('attachment');
}
function nc$bs$oa$oama$ecm$ForwardDetail$set_attachment(value){
    return this.set('attachment',value);
}
function nc$bs$oa$oama$ecm$ForwardDetail$get_sourceid(){
    return this.get('sourceid');
}
function nc$bs$oa$oama$ecm$ForwardDetail$set_sourceid(value){
    return this.set('sourceid',value);
}
function nc$bs$oa$oama$ecm$ForwardDetail$get_opinion(){
    return this.get('opinion');
}
function nc$bs$oa$oama$ecm$ForwardDetail$set_opinion(value){
    return this.set('opinion',value);
}
nc.bs.oa.oama.ecm.ForwardDetail.prototype = {
    get_flowedit : nc$bs$oa$oama$ecm$ForwardDetail$get_flowedit,
    set_flowedit : nc$bs$oa$oama$ecm$ForwardDetail$get_flowedit,
    get_attachment : nc$bs$oa$oama$ecm$ForwardDetail$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$ForwardDetail$get_attachment,
    get_sourceid : nc$bs$oa$oama$ecm$ForwardDetail$get_sourceid,
    set_sourceid : nc$bs$oa$oama$ecm$ForwardDetail$get_sourceid,
    get_opinion : nc$bs$oa$oama$ecm$ForwardDetail$get_opinion,
    set_opinion : nc$bs$oa$oama$ecm$ForwardDetail$get_opinion
}
nc.bs.oa.oama.ecm.ForwardDetail.registerClass('nc.bs.oa.oama.ecm.ForwardDetail',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.FlowEdit = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.FlowEdit.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$FlowEdit$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_rule(){
    return this.get('rule');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_rule(value){
    return this.set('rule',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_steps(){
    return this.get('steps');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_steps(value){
    return this.set('steps',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_names(){
    return this.get('names');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_names(value){
    return this.set('names',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_model(){
    return this.get('model');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_model(value){
    return this.set('model',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_rulename(){
    return this.get('rulename');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_rulename(value){
    return this.set('rulename',value);
}
function nc$bs$oa$oama$ecm$FlowEdit$get_active(){
    return this.get('active');
}
function nc$bs$oa$oama$ecm$FlowEdit$set_active(value){
    return this.set('active',value);
}
nc.bs.oa.oama.ecm.FlowEdit.prototype = {
    get_index : nc$bs$oa$oama$ecm$FlowEdit$get_index,
    set_index : nc$bs$oa$oama$ecm$FlowEdit$get_index,
    get_rule : nc$bs$oa$oama$ecm$FlowEdit$get_rule,
    set_rule : nc$bs$oa$oama$ecm$FlowEdit$get_rule,
    get_steps : nc$bs$oa$oama$ecm$FlowEdit$get_steps,
    set_steps : nc$bs$oa$oama$ecm$FlowEdit$get_steps,
    get_names : nc$bs$oa$oama$ecm$FlowEdit$get_names,
    set_names : nc$bs$oa$oama$ecm$FlowEdit$get_names,
    get_model : nc$bs$oa$oama$ecm$FlowEdit$get_model,
    set_model : nc$bs$oa$oama$ecm$FlowEdit$get_model,
    get_rulename : nc$bs$oa$oama$ecm$FlowEdit$get_rulename,
    set_rulename : nc$bs$oa$oama$ecm$FlowEdit$get_rulename,
    get_active : nc$bs$oa$oama$ecm$FlowEdit$get_active,
    set_active : nc$bs$oa$oama$ecm$FlowEdit$get_active
}
nc.bs.oa.oama.ecm.FlowEdit.registerClass('nc.bs.oa.oama.ecm.FlowEdit',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.StepEdit = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.StepEdit.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$StepEdit$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$StepEdit$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$StepEdit$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$StepEdit$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$StepEdit$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$StepEdit$set_name(value){
    return this.set('name',value);
}
nc.bs.oa.oama.ecm.StepEdit.prototype = {
    get_index : nc$bs$oa$oama$ecm$StepEdit$get_index,
    set_index : nc$bs$oa$oama$ecm$StepEdit$get_index,
    get_id : nc$bs$oa$oama$ecm$StepEdit$get_id,
    set_id : nc$bs$oa$oama$ecm$StepEdit$get_id,
    get_name : nc$bs$oa$oama$ecm$StepEdit$get_name,
    set_name : nc$bs$oa$oama$ecm$StepEdit$get_name
}
nc.bs.oa.oama.ecm.StepEdit.registerClass('nc.bs.oa.oama.ecm.StepEdit',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.Attachment = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.Attachment.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$Attachment$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$Attachment$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$Attachment$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$Attachment$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_size(){
    return this.get('size');
}
function nc$bs$oa$oama$ecm$Attachment$set_size(value){
    return this.set('size',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$Attachment$set_type(value){
    return this.set('type',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_content(){
    return this.get('content');
}
function nc$bs$oa$oama$ecm$Attachment$set_content(value){
    return this.set('content',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_downflag(){
    return this.get('downflag');
}
function nc$bs$oa$oama$ecm$Attachment$set_downflag(value){
    return this.set('downflag',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_sizeshow(){
    return this.get('sizeshow');
}
function nc$bs$oa$oama$ecm$Attachment$set_sizeshow(value){
    return this.set('sizeshow',value);
}
function nc$bs$oa$oama$ecm$Attachment$get_filepath(){
    return this.get('filepath');
}
function nc$bs$oa$oama$ecm$Attachment$set_filepath(value){
    return this.set('filepath',value);
}
nc.bs.oa.oama.ecm.Attachment.prototype = {
    get_index : nc$bs$oa$oama$ecm$Attachment$get_index,
    set_index : nc$bs$oa$oama$ecm$Attachment$get_index,
    get_id : nc$bs$oa$oama$ecm$Attachment$get_id,
    set_id : nc$bs$oa$oama$ecm$Attachment$get_id,
    get_name : nc$bs$oa$oama$ecm$Attachment$get_name,
    set_name : nc$bs$oa$oama$ecm$Attachment$get_name,
    get_size : nc$bs$oa$oama$ecm$Attachment$get_size,
    set_size : nc$bs$oa$oama$ecm$Attachment$get_size,
    get_type : nc$bs$oa$oama$ecm$Attachment$get_type,
    set_type : nc$bs$oa$oama$ecm$Attachment$get_type,
    get_content : nc$bs$oa$oama$ecm$Attachment$get_content,
    set_content : nc$bs$oa$oama$ecm$Attachment$get_content,
    get_downflag : nc$bs$oa$oama$ecm$Attachment$get_downflag,
    set_downflag : nc$bs$oa$oama$ecm$Attachment$get_downflag,
    get_sizeshow : nc$bs$oa$oama$ecm$Attachment$get_sizeshow,
    set_sizeshow : nc$bs$oa$oama$ecm$Attachment$get_sizeshow,
    get_filepath : nc$bs$oa$oama$ecm$Attachment$get_filepath,
    set_filepath : nc$bs$oa$oama$ecm$Attachment$get_filepath
}
nc.bs.oa.oama.ecm.Attachment.registerClass('nc.bs.oa.oama.ecm.Attachment',UMP.UI.Mvc.Context);

