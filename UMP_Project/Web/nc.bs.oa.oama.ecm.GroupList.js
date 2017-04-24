Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.GroupList = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.GroupList.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$GroupList$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$GroupList$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$GroupList$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_groups(){
    return this.get('groups');
}
function nc$bs$oa$oama$ecm$GroupList$set_groups(value){
    return this.set('groups',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_pagesize(){
    return this.get('pagesize');
}
function nc$bs$oa$oama$ecm$GroupList$set_pagesize(value){
    return this.set('pagesize',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_state(){
    return this.get('state');
}
function nc$bs$oa$oama$ecm$GroupList$set_state(value){
    return this.set('state',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_action(){
    return this.get('action');
}
function nc$bs$oa$oama$ecm$GroupList$set_action(value){
    return this.set('action',value);
}
function nc$bs$oa$oama$ecm$GroupList$get_viewid(){
    return this.get('viewid');
}
function nc$bs$oa$oama$ecm$GroupList$set_viewid(value){
    return this.set('viewid',value);
}
nc.bs.oa.oama.ecm.GroupList.prototype = {
    get_flag : nc$bs$oa$oama$ecm$GroupList$get_flag,
    set_flag : nc$bs$oa$oama$ecm$GroupList$get_flag,
    get_des : nc$bs$oa$oama$ecm$GroupList$get_des,
    set_des : nc$bs$oa$oama$ecm$GroupList$get_des,
    get_groups : nc$bs$oa$oama$ecm$GroupList$get_groups,
    set_groups : nc$bs$oa$oama$ecm$GroupList$get_groups,
    get_pagesize : nc$bs$oa$oama$ecm$GroupList$get_pagesize,
    set_pagesize : nc$bs$oa$oama$ecm$GroupList$get_pagesize,
    get_state : nc$bs$oa$oama$ecm$GroupList$get_state,
    set_state : nc$bs$oa$oama$ecm$GroupList$get_state,
    get_action : nc$bs$oa$oama$ecm$GroupList$get_action,
    set_action : nc$bs$oa$oama$ecm$GroupList$get_action,
    get_viewid : nc$bs$oa$oama$ecm$GroupList$get_viewid,
    set_viewid : nc$bs$oa$oama$ecm$GroupList$get_viewid
}
nc.bs.oa.oama.ecm.GroupList.registerClass('nc.bs.oa.oama.ecm.GroupList',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.WorkGroup = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.WorkGroup.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$WorkGroup$get_title(){
    return this.get('title');
}
function nc$bs$oa$oama$ecm$WorkGroup$set_title(value){
    return this.set('title',value);
}
function nc$bs$oa$oama$ecm$WorkGroup$get_works(){
    return this.get('works');
}
function nc$bs$oa$oama$ecm$WorkGroup$set_works(value){
    return this.set('works',value);
}
nc.bs.oa.oama.ecm.WorkGroup.prototype = {
    get_title : nc$bs$oa$oama$ecm$WorkGroup$get_title,
    set_title : nc$bs$oa$oama$ecm$WorkGroup$get_title,
    get_works : nc$bs$oa$oama$ecm$WorkGroup$get_works,
    set_works : nc$bs$oa$oama$ecm$WorkGroup$get_works
}
nc.bs.oa.oama.ecm.WorkGroup.registerClass('nc.bs.oa.oama.ecm.WorkGroup',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.Work = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.Work.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$Work$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$Work$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$Work$get_title(){
    return this.get('title');
}
function nc$bs$oa$oama$ecm$Work$set_title(value){
    return this.set('title',value);
}
function nc$bs$oa$oama$ecm$Work$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$Work$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$Work$get_date(){
    return this.get('date');
}
function nc$bs$oa$oama$ecm$Work$set_date(value){
    return this.set('date',value);
}
function nc$bs$oa$oama$ecm$Work$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$Work$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
nc.bs.oa.oama.ecm.Work.prototype = {
    get_id : nc$bs$oa$oama$ecm$Work$get_id,
    set_id : nc$bs$oa$oama$ecm$Work$get_id,
    get_title : nc$bs$oa$oama$ecm$Work$get_title,
    set_title : nc$bs$oa$oama$ecm$Work$get_title,
    get_priority : nc$bs$oa$oama$ecm$Work$get_priority,
    set_priority : nc$bs$oa$oama$ecm$Work$get_priority,
    get_date : nc$bs$oa$oama$ecm$Work$get_date,
    set_date : nc$bs$oa$oama$ecm$Work$get_date,
    get_ListViewSelector : nc$bs$oa$oama$ecm$Work$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$Work$get_ListViewSelector
}
nc.bs.oa.oama.ecm.Work.registerClass('nc.bs.oa.oama.ecm.Work',UMP.UI.Mvc.Context);

