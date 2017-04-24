Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.navListEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.navListEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "navList", {"tag":"context","attributes":{"id":"navList","iscascade":"false","from-type":"context","filter":""},"fields":{"navs":{"tag":"fieldset","attributes":{"id":"navs","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"nav","type":"string","parent-field":"","from-type":"context"},"fields":{"psncnt":{"tag":"field","attributes":{"id":"psncnt","type":"int"}},"position":{"tag":"field","attributes":{"id":"position","type":"string"}},"sex":{"tag":"field","attributes":{"id":"sex","type":"string"}},"job":{"tag":"field","attributes":{"id":"job","type":"string"}},"psnjobid":{"tag":"field","attributes":{"id":"psnjobid","type":"string"}},"mobileno":{"tag":"field","attributes":{"id":"mobileno","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"navtype":{"tag":"field","attributes":{"id":"navtype","type":"string"}},"dept":{"tag":"field","attributes":{"id":"dept","type":"string"}},"navid":{"tag":"field","attributes":{"id":"navid","type":"string"}},"navname":{"tag":"field","attributes":{"id":"navname","type":"string"}},"end":{"tag":"field","attributes":{"id":"end","type":"string"}},"nameandnum":{"tag":"field","attributes":{"id":"nameandnum","type":"string"}},"navimage":{"tag":"field","attributes":{"id":"navimage","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$navListEntity$get_navs(){
    return this.field('navs');
}
function nc$bs$oa$oama$ecm$navListEntity$set_navs(value){
    return this.field('navs',value);
}
nc.bs.oa.oama.ecm.navListEntity.prototype = {
    get_navs : nc$bs$oa$oama$ecm$navListEntity$get_navs,
    set_navs : nc$bs$oa$oama$ecm$navListEntity$get_navs
}
nc.bs.oa.oama.ecm.navListEntity.registerClass('nc.bs.oa.oama.ecm.navListEntity',UMP.UI.Mvc.Entity);
