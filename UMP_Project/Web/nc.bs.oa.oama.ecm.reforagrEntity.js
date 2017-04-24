Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reforagrEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.reforagrEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "reforagr", {"tag":"context","attributes":{"id":"reforagr","iscascade":"false","from-type":"context","filter":""},"fields":{"approvalmsg":{"tag":"field","attributes":{"id":"approvalmsg","type":"string"}},"reportid":{"tag":"field","attributes":{"id":"reportid","type":"string"}},"approvaltype":{"tag":"field","attributes":{"id":"approvaltype","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$reforagrEntity$get_reportid(){
    return this.field('reportid');
}
function nc$bs$oa$oama$ecm$reforagrEntity$set_reportid(value){
    return this.field('reportid',value);
}
function nc$bs$oa$oama$ecm$reforagrEntity$get_approvaltype(){
    return this.field('approvaltype');
}
function nc$bs$oa$oama$ecm$reforagrEntity$set_approvaltype(value){
    return this.field('approvaltype',value);
}
function nc$bs$oa$oama$ecm$reforagrEntity$get_approvalmsg(){
    return this.field('approvalmsg');
}
function nc$bs$oa$oama$ecm$reforagrEntity$set_approvalmsg(value){
    return this.field('approvalmsg',value);
}
nc.bs.oa.oama.ecm.reforagrEntity.prototype = {
    get_reportid : nc$bs$oa$oama$ecm$reforagrEntity$get_reportid,
    set_reportid : nc$bs$oa$oama$ecm$reforagrEntity$get_reportid,
    get_approvaltype : nc$bs$oa$oama$ecm$reforagrEntity$get_approvaltype,
    set_approvaltype : nc$bs$oa$oama$ecm$reforagrEntity$get_approvaltype,
    get_approvalmsg : nc$bs$oa$oama$ecm$reforagrEntity$get_approvalmsg,
    set_approvalmsg : nc$bs$oa$oama$ecm$reforagrEntity$get_approvalmsg
}
nc.bs.oa.oama.ecm.reforagrEntity.registerClass('nc.bs.oa.oama.ecm.reforagrEntity',UMP.UI.Mvc.Entity);
