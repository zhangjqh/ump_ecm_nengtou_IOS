Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.ECMCtxEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.ECMCtxEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "ECMCtx", {"tag":"context","attributes":{"id":"ECMCtx","iscascade":"false","from-type":"context","filter":""},"fields":{"apps":{"tag":"fieldset","attributes":{"id":"apps","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"ECMApp","type":"string","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"imgurl":{"tag":"field","attributes":{"id":"imgurl","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$ECMCtxEntity$get_imgurl(){
    return this.field('imgurl');
}
function nc$bs$oa$oama$ecm$ECMCtxEntity$set_imgurl(value){
    return this.field('imgurl',value);
}
function nc$bs$oa$oama$ecm$ECMCtxEntity$get_apps(){
    return this.field('apps');
}
function nc$bs$oa$oama$ecm$ECMCtxEntity$set_apps(value){
    return this.field('apps',value);
}
nc.bs.oa.oama.ecm.ECMCtxEntity.prototype = {
    get_imgurl : nc$bs$oa$oama$ecm$ECMCtxEntity$get_imgurl,
    set_imgurl : nc$bs$oa$oama$ecm$ECMCtxEntity$get_imgurl,
    get_apps : nc$bs$oa$oama$ecm$ECMCtxEntity$get_apps,
    set_apps : nc$bs$oa$oama$ecm$ECMCtxEntity$get_apps
}
nc.bs.oa.oama.ecm.ECMCtxEntity.registerClass('nc.bs.oa.oama.ecm.ECMCtxEntity',UMP.UI.Mvc.Entity);
