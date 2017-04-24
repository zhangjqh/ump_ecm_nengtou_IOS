Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainflist = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oainflist.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oainflist$get_oainfs(){
    return this.get('oainfs');
}
function nc$bs$oa$oama$ecm$oainflist$set_oainfs(value){
    return this.set('oainfs',value);
}
function nc$bs$oa$oama$ecm$oainflist$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$oainflist$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$oainflist$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$oainflist$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$oainflist$get_columnname(){
    return this.get('columnname');
}
function nc$bs$oa$oama$ecm$oainflist$set_columnname(value){
    return this.set('columnname',value);
}
nc.bs.oa.oama.ecm.oainflist.prototype = {
    get_oainfs : nc$bs$oa$oama$ecm$oainflist$get_oainfs,
    set_oainfs : nc$bs$oa$oama$ecm$oainflist$get_oainfs,
    get_flag : nc$bs$oa$oama$ecm$oainflist$get_flag,
    set_flag : nc$bs$oa$oama$ecm$oainflist$get_flag,
    get_des : nc$bs$oa$oama$ecm$oainflist$get_des,
    set_des : nc$bs$oa$oama$ecm$oainflist$get_des,
    get_columnname : nc$bs$oa$oama$ecm$oainflist$get_columnname,
    set_columnname : nc$bs$oa$oama$ecm$oainflist$get_columnname
}
nc.bs.oa.oama.ecm.oainflist.registerClass('nc.bs.oa.oama.ecm.oainflist',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.oainf = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.oainf.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$oainf$get_infoid(){
    return this.get('infoid');
}
function nc$bs$oa$oama$ecm$oainf$set_infoid(value){
    return this.set('infoid',value);
}
function nc$bs$oa$oama$ecm$oainf$get_infotitle(){
    return this.get('infotitle');
}
function nc$bs$oa$oama$ecm$oainf$set_infotitle(value){
    return this.set('infotitle',value);
}
function nc$bs$oa$oama$ecm$oainf$get_infosummary(){
    return this.get('infosummary');
}
function nc$bs$oa$oama$ecm$oainf$set_infosummary(value){
    return this.set('infosummary',value);
}
function nc$bs$oa$oama$ecm$oainf$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$oainf$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$oainf$get_publishdate(){
    return this.get('publishdate');
}
function nc$bs$oa$oama$ecm$oainf$set_publishdate(value){
    return this.set('publishdate',value);
}
function nc$bs$oa$oama$ecm$oainf$get_newinfoflag(){
    return this.get('newinfoflag');
}
function nc$bs$oa$oama$ecm$oainf$set_newinfoflag(value){
    return this.set('newinfoflag',value);
}
function nc$bs$oa$oama$ecm$oainf$get_infostyletype(){
    return this.get('infostyletype');
}
function nc$bs$oa$oama$ecm$oainf$set_infostyletype(value){
    return this.set('infostyletype',value);
}
function nc$bs$oa$oama$ecm$oainf$get_unread(){
    return this.get('unread');
}
function nc$bs$oa$oama$ecm$oainf$set_unread(value){
    return this.set('unread',value);
}
function nc$bs$oa$oama$ecm$oainf$get_ListViewSelector(){
    return this.get('ListViewSelector');
}
function nc$bs$oa$oama$ecm$oainf$set_ListViewSelector(value){
    return this.set('ListViewSelector',value);
}
nc.bs.oa.oama.ecm.oainf.prototype = {
    get_infoid : nc$bs$oa$oama$ecm$oainf$get_infoid,
    set_infoid : nc$bs$oa$oama$ecm$oainf$get_infoid,
    get_infotitle : nc$bs$oa$oama$ecm$oainf$get_infotitle,
    set_infotitle : nc$bs$oa$oama$ecm$oainf$get_infotitle,
    get_infosummary : nc$bs$oa$oama$ecm$oainf$get_infosummary,
    set_infosummary : nc$bs$oa$oama$ecm$oainf$get_infosummary,
    get_ts : nc$bs$oa$oama$ecm$oainf$get_ts,
    set_ts : nc$bs$oa$oama$ecm$oainf$get_ts,
    get_publishdate : nc$bs$oa$oama$ecm$oainf$get_publishdate,
    set_publishdate : nc$bs$oa$oama$ecm$oainf$get_publishdate,
    get_newinfoflag : nc$bs$oa$oama$ecm$oainf$get_newinfoflag,
    set_newinfoflag : nc$bs$oa$oama$ecm$oainf$get_newinfoflag,
    get_infostyletype : nc$bs$oa$oama$ecm$oainf$get_infostyletype,
    set_infostyletype : nc$bs$oa$oama$ecm$oainf$get_infostyletype,
    get_unread : nc$bs$oa$oama$ecm$oainf$get_unread,
    set_unread : nc$bs$oa$oama$ecm$oainf$get_unread,
    get_ListViewSelector : nc$bs$oa$oama$ecm$oainf$get_ListViewSelector,
    set_ListViewSelector : nc$bs$oa$oama$ecm$oainf$get_ListViewSelector
}
nc.bs.oa.oama.ecm.oainf.registerClass('nc.bs.oa.oama.ecm.oainf',UMP.UI.Mvc.Context);

