Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainfototal = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oainfototal.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oainfototal$get_initinfogrouplist(){
    return this.get('initinfogrouplist');
}
function nc$bs$oa$oama$ecm$oainfototal$set_initinfogrouplist(value){
    return this.set('initinfogrouplist',value);
}
function nc$bs$oa$oama$ecm$oainfototal$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$oainfototal$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$oainfototal$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$oainfototal$set_des(value){
    return this.set('des',value);
}
nc.bs.oa.oama.ecm.oainfototal.prototype = {
    get_initinfogrouplist : nc$bs$oa$oama$ecm$oainfototal$get_initinfogrouplist,
    set_initinfogrouplist : nc$bs$oa$oama$ecm$oainfototal$get_initinfogrouplist,
    get_flag : nc$bs$oa$oama$ecm$oainfototal$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oainfototal$get_flag,
    get_des : nc$bs$oa$oama$ecm$oainfototal$get_des,
    set_des : nc$bs$oa$oama$ecm$oainfototal$get_des
}
nc.bs.oa.oama.ecm.oainfototal.registerClass('nc.bs.oa.oama.ecm.oainfototal',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oacolumnlist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oacolumnlist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogrouptitle(){
    return this.get('initinfogrouptitle');
}
function nc$bs$oa$oama$ecm$oacolumnlist$set_initinfogrouptitle(value){
    return this.set('initinfogrouptitle',value);
}
function nc$bs$oa$oama$ecm$oacolumnlist$get_infosummarylist(){
    return this.get('infosummarylist');
}
function nc$bs$oa$oama$ecm$oacolumnlist$set_infosummarylist(value){
    return this.set('infosummarylist',value);
}
function nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogroupid(){
    return this.get('initinfogroupid');
}
function nc$bs$oa$oama$ecm$oacolumnlist$set_initinfogroupid(value){
    return this.set('initinfogroupid',value);
}
nc.bs.oa.oama.ecm.oacolumnlist.prototype = {
    get_initinfogrouptitle : nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogrouptitle,
    set_initinfogrouptitle : nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogrouptitle,
    get_infosummarylist : nc$bs$oa$oama$ecm$oacolumnlist$get_infosummarylist,
    set_infosummarylist : nc$bs$oa$oama$ecm$oacolumnlist$get_infosummarylist,
    get_initinfogroupid : nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogroupid,
    set_initinfogroupid : nc$bs$oa$oama$ecm$oacolumnlist$get_initinfogroupid
}
nc.bs.oa.oama.ecm.oacolumnlist.registerClass('nc.bs.oa.oama.ecm.oacolumnlist',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainfolist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oainfolist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oainfolist$get_infoid(){
    return this.get('infoid');
}
function nc$bs$oa$oama$ecm$oainfolist$set_infoid(value){
    return this.set('infoid',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_infotitle(){
    return this.get('infotitle');
}
function nc$bs$oa$oama$ecm$oainfolist$set_infotitle(value){
    return this.set('infotitle',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_publishdate(){
    return this.get('publishdate');
}
function nc$bs$oa$oama$ecm$oainfolist$set_publishdate(value){
    return this.set('publishdate',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_infosummary(){
    return this.get('infosummary');
}
function nc$bs$oa$oama$ecm$oainfolist$set_infosummary(value){
    return this.set('infosummary',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_newinfoflag(){
    return this.get('newinfoflag');
}
function nc$bs$oa$oama$ecm$oainfolist$set_newinfoflag(value){
    return this.set('newinfoflag',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$oainfolist$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_infostyletype(){
    return this.get('infostyletype');
}
function nc$bs$oa$oama$ecm$oainfolist$set_infostyletype(value){
    return this.set('infostyletype',value);
}
function nc$bs$oa$oama$ecm$oainfolist$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$oainfolist$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
nc.bs.oa.oama.ecm.oainfolist.prototype = {
    get_infoid : nc$bs$oa$oama$ecm$oainfolist$get_infoid,
    set_infoid : nc$bs$oa$oama$ecm$oainfolist$get_infoid,
    get_infotitle : nc$bs$oa$oama$ecm$oainfolist$get_infotitle,
    set_infotitle : nc$bs$oa$oama$ecm$oainfolist$get_infotitle,
    get_publishdate : nc$bs$oa$oama$ecm$oainfolist$get_publishdate,
    set_publishdate : nc$bs$oa$oama$ecm$oainfolist$get_publishdate,
    get_infosummary : nc$bs$oa$oama$ecm$oainfolist$get_infosummary,
    set_infosummary : nc$bs$oa$oama$ecm$oainfolist$get_infosummary,
    get_newinfoflag : nc$bs$oa$oama$ecm$oainfolist$get_newinfoflag,
    set_newinfoflag : nc$bs$oa$oama$ecm$oainfolist$get_newinfoflag,
    get_ts : nc$bs$oa$oama$ecm$oainfolist$get_ts,
    set_ts : nc$bs$oa$oama$ecm$oainfolist$get_ts,
    get_infostyletype : nc$bs$oa$oama$ecm$oainfolist$get_infostyletype,
    set_infostyletype : nc$bs$oa$oama$ecm$oainfolist$get_infostyletype,
    get_ListViewSelector : nc$bs$oa$oama$ecm$oainfolist$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$oainfolist$get_ListViewSelector
}
nc.bs.oa.oama.ecm.oainfolist.registerClass('nc.bs.oa.oama.ecm.oainfolist',UMP.UI.Mvc.Context);

