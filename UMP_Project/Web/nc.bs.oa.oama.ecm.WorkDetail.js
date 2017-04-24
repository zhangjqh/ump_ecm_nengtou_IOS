Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.WorkDetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.WorkDetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$WorkDetail$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_title(){
    return this.get('title');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_title(value){
    return this.set('title',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_date(){
    return this.get('date');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_date(value){
    return this.set('date',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_contenttype(){
    return this.get('contenttype');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_contenttype(value){
    return this.set('contenttype',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_textcontent(){
    return this.get('textcontent');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_textcontent(value){
    return this.set('textcontent',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_flowhistory(){
    return this.get('flowhistory');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_flowhistory(value){
    return this.set('flowhistory',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_flowedit(){
    return this.get('flowedit');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_flowedit(value){
    return this.set('flowedit',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_attachment(){
    return this.get('attachment');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_attachment(value){
    return this.set('attachment',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_notice(){
    return this.get('notice');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_notice(value){
    return this.set('notice',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_archiveset(){
    return this.get('archiveset');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_archiveset(value){
    return this.set('archiveset',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_editable(){
    return this.get('editable');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_editable(value){
    return this.set('editable',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$WorkDetail$get_status(){
    return this.get('status');
}
function nc$bs$oa$oama$ecm$WorkDetail$set_status(value){
    return this.set('status',value);
}
nc.bs.oa.oama.ecm.WorkDetail.prototype = {
    get_flag : nc$bs$oa$oama$ecm$WorkDetail$get_flag,
    set_flag : nc$bs$oa$oama$ecm$WorkDetail$get_flag,
    get_des : nc$bs$oa$oama$ecm$WorkDetail$get_des,
    set_des : nc$bs$oa$oama$ecm$WorkDetail$get_des,
    get_id : nc$bs$oa$oama$ecm$WorkDetail$get_id,
    set_id : nc$bs$oa$oama$ecm$WorkDetail$get_id,
    get_title : nc$bs$oa$oama$ecm$WorkDetail$get_title,
    set_title : nc$bs$oa$oama$ecm$WorkDetail$get_title,
    get_priority : nc$bs$oa$oama$ecm$WorkDetail$get_priority,
    set_priority : nc$bs$oa$oama$ecm$WorkDetail$get_priority,
    get_date : nc$bs$oa$oama$ecm$WorkDetail$get_date,
    set_date : nc$bs$oa$oama$ecm$WorkDetail$get_date,
    get_contenttype : nc$bs$oa$oama$ecm$WorkDetail$get_contenttype,
    set_contenttype : nc$bs$oa$oama$ecm$WorkDetail$get_contenttype,
    get_textcontent : nc$bs$oa$oama$ecm$WorkDetail$get_textcontent,
    set_textcontent : nc$bs$oa$oama$ecm$WorkDetail$get_textcontent,
    get_flowhistory : nc$bs$oa$oama$ecm$WorkDetail$get_flowhistory,
    set_flowhistory : nc$bs$oa$oama$ecm$WorkDetail$get_flowhistory,
    get_flowedit : nc$bs$oa$oama$ecm$WorkDetail$get_flowedit,
    set_flowedit : nc$bs$oa$oama$ecm$WorkDetail$get_flowedit,
    get_attachment : nc$bs$oa$oama$ecm$WorkDetail$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$WorkDetail$get_attachment,
    get_notice : nc$bs$oa$oama$ecm$WorkDetail$get_notice,
    set_notice : nc$bs$oa$oama$ecm$WorkDetail$get_notice,
    get_archiveset : nc$bs$oa$oama$ecm$WorkDetail$get_archiveset,
    set_archiveset : nc$bs$oa$oama$ecm$WorkDetail$get_archiveset,
    get_editable : nc$bs$oa$oama$ecm$WorkDetail$get_editable,
    set_editable : nc$bs$oa$oama$ecm$WorkDetail$get_editable,
    get_ts : nc$bs$oa$oama$ecm$WorkDetail$get_ts,
    set_ts : nc$bs$oa$oama$ecm$WorkDetail$get_ts,
    get_status : nc$bs$oa$oama$ecm$WorkDetail$get_status,
    set_status : nc$bs$oa$oama$ecm$WorkDetail$get_status
}
nc.bs.oa.oama.ecm.WorkDetail.registerClass('nc.bs.oa.oama.ecm.WorkDetail',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.FlowHistory = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.FlowHistory.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$FlowHistory$get_initactor(){
    return this.get('initactor');
}
function nc$bs$oa$oama$ecm$FlowHistory$set_initactor(value){
    return this.set('initactor',value);
}
function nc$bs$oa$oama$ecm$FlowHistory$get_transactor(){
    return this.get('transactor');
}
function nc$bs$oa$oama$ecm$FlowHistory$set_transactor(value){
    return this.set('transactor',value);
}
nc.bs.oa.oama.ecm.FlowHistory.prototype = {
    get_initactor : nc$bs$oa$oama$ecm$FlowHistory$get_initactor,
    set_initactor : nc$bs$oa$oama$ecm$FlowHistory$get_initactor,
    get_transactor : nc$bs$oa$oama$ecm$FlowHistory$get_transactor,
    set_transactor : nc$bs$oa$oama$ecm$FlowHistory$get_transactor
}
nc.bs.oa.oama.ecm.FlowHistory.registerClass('nc.bs.oa.oama.ecm.FlowHistory',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.StepHistory = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.StepHistory.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$StepHistory$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$StepHistory$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$StepHistory$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$StepHistory$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_action(){
    return this.get('action');
}
function nc$bs$oa$oama$ecm$StepHistory$set_action(value){
    return this.set('action',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_commit(){
    return this.get('commit');
}
function nc$bs$oa$oama$ecm$StepHistory$set_commit(value){
    return this.set('commit',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_date(){
    return this.get('date');
}
function nc$bs$oa$oama$ecm$StepHistory$set_date(value){
    return this.set('date',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_handwrite(){
    return this.get('handwrite');
}
function nc$bs$oa$oama$ecm$StepHistory$set_handwrite(value){
    return this.set('handwrite',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$StepHistory$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
nc.bs.oa.oama.ecm.StepHistory.prototype = {
    get_index : nc$bs$oa$oama$ecm$StepHistory$get_index,
    set_index : nc$bs$oa$oama$ecm$StepHistory$get_index,
    get_id : nc$bs$oa$oama$ecm$StepHistory$get_id,
    set_id : nc$bs$oa$oama$ecm$StepHistory$get_id,
    get_name : nc$bs$oa$oama$ecm$StepHistory$get_name,
    set_name : nc$bs$oa$oama$ecm$StepHistory$get_name,
    get_action : nc$bs$oa$oama$ecm$StepHistory$get_action,
    set_action : nc$bs$oa$oama$ecm$StepHistory$get_action,
    get_commit : nc$bs$oa$oama$ecm$StepHistory$get_commit,
    set_commit : nc$bs$oa$oama$ecm$StepHistory$get_commit,
    get_date : nc$bs$oa$oama$ecm$StepHistory$get_date,
    set_date : nc$bs$oa$oama$ecm$StepHistory$get_date,
    get_handwrite : nc$bs$oa$oama$ecm$StepHistory$get_handwrite,
    set_handwrite : nc$bs$oa$oama$ecm$StepHistory$get_handwrite,
    get_ListViewSelector : nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector
}
nc.bs.oa.oama.ecm.StepHistory.registerClass('nc.bs.oa.oama.ecm.StepHistory',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.StepHistory = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.StepHistory.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$StepHistory$get_index(){
    return this.get('index');
}
function nc$bs$oa$oama$ecm$StepHistory$set_index(value){
    return this.set('index',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$StepHistory$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$StepHistory$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_action(){
    return this.get('action');
}
function nc$bs$oa$oama$ecm$StepHistory$set_action(value){
    return this.set('action',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_commit(){
    return this.get('commit');
}
function nc$bs$oa$oama$ecm$StepHistory$set_commit(value){
    return this.set('commit',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_date(){
    return this.get('date');
}
function nc$bs$oa$oama$ecm$StepHistory$set_date(value){
    return this.set('date',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_handwrite(){
    return this.get('handwrite');
}
function nc$bs$oa$oama$ecm$StepHistory$set_handwrite(value){
    return this.set('handwrite',value);
}
function nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$StepHistory$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
nc.bs.oa.oama.ecm.StepHistory.prototype = {
    get_index : nc$bs$oa$oama$ecm$StepHistory$get_index,
    set_index : nc$bs$oa$oama$ecm$StepHistory$get_index,
    get_id : nc$bs$oa$oama$ecm$StepHistory$get_id,
    set_id : nc$bs$oa$oama$ecm$StepHistory$get_id,
    get_name : nc$bs$oa$oama$ecm$StepHistory$get_name,
    set_name : nc$bs$oa$oama$ecm$StepHistory$get_name,
    get_action : nc$bs$oa$oama$ecm$StepHistory$get_action,
    set_action : nc$bs$oa$oama$ecm$StepHistory$get_action,
    get_commit : nc$bs$oa$oama$ecm$StepHistory$get_commit,
    set_commit : nc$bs$oa$oama$ecm$StepHistory$get_commit,
    get_date : nc$bs$oa$oama$ecm$StepHistory$get_date,
    set_date : nc$bs$oa$oama$ecm$StepHistory$get_date,
    get_handwrite : nc$bs$oa$oama$ecm$StepHistory$get_handwrite,
    set_handwrite : nc$bs$oa$oama$ecm$StepHistory$get_handwrite,
    get_ListViewSelector : nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$StepHistory$get_ListViewSelector
}
nc.bs.oa.oama.ecm.StepHistory.registerClass('nc.bs.oa.oama.ecm.StepHistory',UMP.UI.Mvc.Context);

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

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.Notice = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.Notice.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$Notice$get_msg(){
    return this.get('msg');
}
function nc$bs$oa$oama$ecm$Notice$set_msg(value){
    return this.set('msg',value);
}
function nc$bs$oa$oama$ecm$Notice$get_mail(){
    return this.get('mail');
}
function nc$bs$oa$oama$ecm$Notice$set_mail(value){
    return this.set('mail',value);
}
function nc$bs$oa$oama$ecm$Notice$get_mobile(){
    return this.get('mobile');
}
function nc$bs$oa$oama$ecm$Notice$set_mobile(value){
    return this.set('mobile',value);
}
function nc$bs$oa$oama$ecm$Notice$get_im(){
    return this.get('im');
}
function nc$bs$oa$oama$ecm$Notice$set_im(value){
    return this.set('im',value);
}
function nc$bs$oa$oama$ecm$Notice$get_approve(){
    return this.get('approve');
}
function nc$bs$oa$oama$ecm$Notice$set_approve(value){
    return this.set('approve',value);
}
function nc$bs$oa$oama$ecm$Notice$get_flow(){
    return this.get('flow');
}
function nc$bs$oa$oama$ecm$Notice$set_flow(value){
    return this.set('flow',value);
}
nc.bs.oa.oama.ecm.Notice.prototype = {
    get_msg : nc$bs$oa$oama$ecm$Notice$get_msg,
    set_msg : nc$bs$oa$oama$ecm$Notice$get_msg,
    get_mail : nc$bs$oa$oama$ecm$Notice$get_mail,
    set_mail : nc$bs$oa$oama$ecm$Notice$get_mail,
    get_mobile : nc$bs$oa$oama$ecm$Notice$get_mobile,
    set_mobile : nc$bs$oa$oama$ecm$Notice$get_mobile,
    get_im : nc$bs$oa$oama$ecm$Notice$get_im,
    set_im : nc$bs$oa$oama$ecm$Notice$get_im,
    get_approve : nc$bs$oa$oama$ecm$Notice$get_approve,
    set_approve : nc$bs$oa$oama$ecm$Notice$get_approve,
    get_flow : nc$bs$oa$oama$ecm$Notice$get_flow,
    set_flow : nc$bs$oa$oama$ecm$Notice$get_flow
}
nc.bs.oa.oama.ecm.Notice.registerClass('nc.bs.oa.oama.ecm.Notice',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ArchiveSet = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.ArchiveSet.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$ArchiveSet$get_folder(){
    return this.get('folder');
}
function nc$bs$oa$oama$ecm$ArchiveSet$set_folder(value){
    return this.set('folder',value);
}
function nc$bs$oa$oama$ecm$ArchiveSet$get_isauto(){
    return this.get('isauto');
}
function nc$bs$oa$oama$ecm$ArchiveSet$set_isauto(value){
    return this.set('isauto',value);
}
nc.bs.oa.oama.ecm.ArchiveSet.prototype = {
    get_folder : nc$bs$oa$oama$ecm$ArchiveSet$get_folder,
    set_folder : nc$bs$oa$oama$ecm$ArchiveSet$get_folder,
    get_isauto : nc$bs$oa$oama$ecm$ArchiveSet$get_isauto,
    set_isauto : nc$bs$oa$oama$ecm$ArchiveSet$get_isauto
}
nc.bs.oa.oama.ecm.ArchiveSet.registerClass('nc.bs.oa.oama.ecm.ArchiveSet',UMP.UI.Mvc.Context);

