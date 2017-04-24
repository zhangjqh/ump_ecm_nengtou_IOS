Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ECMCtx = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.ECMCtx.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$ECMCtx$get_imgurl(){
    return this.get('imgurl');
}
function nc$bs$oa$oama$ecm$ECMCtx$set_imgurl(value){
    return this.set('imgurl',value);
}
function nc$bs$oa$oama$ecm$ECMCtx$get_apps(){
    return this.get('apps');
}
function nc$bs$oa$oama$ecm$ECMCtx$set_apps(value){
    return this.set('apps',value);
}
nc.bs.oa.oama.ecm.ECMCtx.prototype = {
    get_imgurl : nc$bs$oa$oama$ecm$ECMCtx$get_imgurl,
    set_imgurl : nc$bs$oa$oama$ecm$ECMCtx$get_imgurl,
    get_apps : nc$bs$oa$oama$ecm$ECMCtx$get_apps,
    set_apps : nc$bs$oa$oama$ecm$ECMCtx$get_apps
}
nc.bs.oa.oama.ecm.ECMCtx.registerClass('nc.bs.oa.oama.ecm.ECMCtx',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ECMApp = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.ECMApp.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$ECMApp$get_id(){
    return this.get('id');
}
function nc$bs$oa$oama$ecm$ECMApp$set_id(value){
    return this.set('id',value);
}
function nc$bs$oa$oama$ecm$ECMApp$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$ECMApp$set_name(value){
    return this.set('name',value);
}
nc.bs.oa.oama.ecm.ECMApp.prototype = {
    get_id : nc$bs$oa$oama$ecm$ECMApp$get_id,
    set_id : nc$bs$oa$oama$ecm$ECMApp$get_id,
    get_name : nc$bs$oa$oama$ecm$ECMApp$get_name,
    set_name : nc$bs$oa$oama$ecm$ECMApp$get_name
}
nc.bs.oa.oama.ecm.ECMApp.registerClass('nc.bs.oa.oama.ecm.ECMApp',UMP.UI.Mvc.Context);

