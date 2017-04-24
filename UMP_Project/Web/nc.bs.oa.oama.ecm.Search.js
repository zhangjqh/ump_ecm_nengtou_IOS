Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.Search = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.Search.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$Search$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$Search$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$Search$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$Search$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$Search$get_condition(){
    return this.get('condition');
}
function nc$bs$oa$oama$ecm$Search$set_condition(value){
    return this.set('condition',value);
}
function nc$bs$oa$oama$ecm$Search$get_list(){
    return this.get('list');
}
function nc$bs$oa$oama$ecm$Search$set_list(value){
    return this.set('list',value);
}
function nc$bs$oa$oama$ecm$Search$get_psncount(){
    return this.get('psncount');
}
function nc$bs$oa$oama$ecm$Search$set_psncount(value){
    return this.set('psncount',value);
}
nc.bs.oa.oama.ecm.Search.prototype = {
    get_flag : nc$bs$oa$oama$ecm$Search$get_flag,
    set_flag : nc$bs$oa$oama$ecm$Search$get_flag,
    get_des : nc$bs$oa$oama$ecm$Search$get_des,
    set_des : nc$bs$oa$oama$ecm$Search$get_des,
    get_condition : nc$bs$oa$oama$ecm$Search$get_condition,
    set_condition : nc$bs$oa$oama$ecm$Search$get_condition,
    get_list : nc$bs$oa$oama$ecm$Search$get_list,
    set_list : nc$bs$oa$oama$ecm$Search$get_list,
    get_psncount : nc$bs$oa$oama$ecm$Search$get_psncount,
    set_psncount : nc$bs$oa$oama$ecm$Search$get_psncount
}
nc.bs.oa.oama.ecm.Search.registerClass('nc.bs.oa.oama.ecm.Search',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.SearchRow = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.SearchRow.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$SearchRow$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$SearchRow$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$SearchRow$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_sex(){
    return this.get('sex');
}
function nc$bs$oa$oama$ecm$SearchRow$set_sex(value){
    return this.set('sex',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_position(){
    return this.get('position');
}
function nc$bs$oa$oama$ecm$SearchRow$set_position(value){
    return this.set('position',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_mobile(){
    return this.get('mobile');
}
function nc$bs$oa$oama$ecm$SearchRow$set_mobile(value){
    return this.set('mobile',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_dept(){
    return this.get('dept');
}
function nc$bs$oa$oama$ecm$SearchRow$set_dept(value){
    return this.set('dept',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_email(){
    return this.get('email');
}
function nc$bs$oa$oama$ecm$SearchRow$set_email(value){
    return this.set('email',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$SearchRow$set_type(value){
    return this.set('type',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_end(){
    return this.get('end');
}
function nc$bs$oa$oama$ecm$SearchRow$set_end(value){
    return this.set('end',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_num(){
    return this.get('num');
}
function nc$bs$oa$oama$ecm$SearchRow$set_num(value){
    return this.set('num',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_checked(){
    return this.get('checked');
}
function nc$bs$oa$oama$ecm$SearchRow$set_checked(value){
    return this.set('checked',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$SearchRow$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
function nc$bs$oa$oama$ecm$SearchRow$get_user(){
    return this.get('user');
}
function nc$bs$oa$oama$ecm$SearchRow$set_user(value){
    return this.set('user',value);
}
nc.bs.oa.oama.ecm.SearchRow.prototype = {
    get_id : nc$bs$oa$oama$ecm$SearchRow$get_id,
    set_id : nc$bs$oa$oama$ecm$SearchRow$get_id,
    get_name : nc$bs$oa$oama$ecm$SearchRow$get_name,
    set_name : nc$bs$oa$oama$ecm$SearchRow$get_name,
    get_sex : nc$bs$oa$oama$ecm$SearchRow$get_sex,
    set_sex : nc$bs$oa$oama$ecm$SearchRow$get_sex,
    get_position : nc$bs$oa$oama$ecm$SearchRow$get_position,
    set_position : nc$bs$oa$oama$ecm$SearchRow$get_position,
    get_mobile : nc$bs$oa$oama$ecm$SearchRow$get_mobile,
    set_mobile : nc$bs$oa$oama$ecm$SearchRow$get_mobile,
    get_dept : nc$bs$oa$oama$ecm$SearchRow$get_dept,
    set_dept : nc$bs$oa$oama$ecm$SearchRow$get_dept,
    get_email : nc$bs$oa$oama$ecm$SearchRow$get_email,
    set_email : nc$bs$oa$oama$ecm$SearchRow$get_email,
    get_type : nc$bs$oa$oama$ecm$SearchRow$get_type,
    set_type : nc$bs$oa$oama$ecm$SearchRow$get_type,
    get_end : nc$bs$oa$oama$ecm$SearchRow$get_end,
    set_end : nc$bs$oa$oama$ecm$SearchRow$get_end,
    get_num : nc$bs$oa$oama$ecm$SearchRow$get_num,
    set_num : nc$bs$oa$oama$ecm$SearchRow$get_num,
    get_checked : nc$bs$oa$oama$ecm$SearchRow$get_checked,
    set_checked : nc$bs$oa$oama$ecm$SearchRow$get_checked,
    get_ListViewSelector : nc$bs$oa$oama$ecm$SearchRow$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$SearchRow$get_ListViewSelector,
    get_user : nc$bs$oa$oama$ecm$SearchRow$get_user,
    set_user : nc$bs$oa$oama$ecm$SearchRow$get_user
}
nc.bs.oa.oama.ecm.SearchRow.registerClass('nc.bs.oa.oama.ecm.SearchRow',UMP.UI.Mvc.Context);

