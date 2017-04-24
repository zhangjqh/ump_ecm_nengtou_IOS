Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.pushswitchEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.pushswitchEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "pushswitch", {"tag":"context","attributes":{"id":"pushswitch","iscascade":"false","from-type":"context","filter":""},"fields":{"pushable":{"tag":"field","attributes":{"id":"pushable","type":"bool"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$pushswitchEntity$get_pushable(){
    return this.field('pushable');
}
function nc$bs$oa$oama$ecm$pushswitchEntity$set_pushable(value){
    return this.field('pushable',value);
}
nc.bs.oa.oama.ecm.pushswitchEntity.prototype = {
    get_pushable : nc$bs$oa$oama$ecm$pushswitchEntity$get_pushable,
    set_pushable : nc$bs$oa$oama$ecm$pushswitchEntity$get_pushable
}
nc.bs.oa.oama.ecm.pushswitchEntity.registerClass('nc.bs.oa.oama.ecm.pushswitchEntity',UMP.UI.Mvc.Entity);
