Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.remindTime = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.remindTime.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$remindTime$get_begintime(){
    return this.get('begintime');
}
function nc$bs$oa$oama$ecm$remindTime$set_begintime(value){
    return this.set('begintime',value);
}
function nc$bs$oa$oama$ecm$remindTime$get_endtime(){
    return this.get('endtime');
}
function nc$bs$oa$oama$ecm$remindTime$set_endtime(value){
    return this.set('endtime',value);
}
nc.bs.oa.oama.ecm.remindTime.prototype = {
    get_begintime : nc$bs$oa$oama$ecm$remindTime$get_begintime,
    set_begintime : nc$bs$oa$oama$ecm$remindTime$get_begintime,
    get_endtime : nc$bs$oa$oama$ecm$remindTime$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$remindTime$get_endtime
}
nc.bs.oa.oama.ecm.remindTime.registerClass('nc.bs.oa.oama.ecm.remindTime',UMP.UI.Mvc.Context);

