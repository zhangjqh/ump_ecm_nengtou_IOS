Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.pushswitch = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.pushswitch.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$pushswitch$get_pushable(){
    return this.get('pushable');
}
function nc$bs$oa$oama$ecm$pushswitch$set_pushable(value){
    return this.set('pushable',value);
}
nc.bs.oa.oama.ecm.pushswitch.prototype = {
    get_pushable : nc$bs$oa$oama$ecm$pushswitch$get_pushable,
    set_pushable : nc$bs$oa$oama$ecm$pushswitch$get_pushable
}
nc.bs.oa.oama.ecm.pushswitch.registerClass('nc.bs.oa.oama.ecm.pushswitch',UMP.UI.Mvc.Context);

