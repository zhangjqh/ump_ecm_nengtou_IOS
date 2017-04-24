Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reforagr = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.reforagr.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$reforagr$get_reportid(){
    return this.get('reportid');
}
function nc$bs$oa$oama$ecm$reforagr$set_reportid(value){
    return this.set('reportid',value);
}
function nc$bs$oa$oama$ecm$reforagr$get_approvaltype(){
    return this.get('approvaltype');
}
function nc$bs$oa$oama$ecm$reforagr$set_approvaltype(value){
    return this.set('approvaltype',value);
}
function nc$bs$oa$oama$ecm$reforagr$get_approvalmsg(){
    return this.get('approvalmsg');
}
function nc$bs$oa$oama$ecm$reforagr$set_approvalmsg(value){
    return this.set('approvalmsg',value);
}
nc.bs.oa.oama.ecm.reforagr.prototype = {
    get_reportid : nc$bs$oa$oama$ecm$reforagr$get_reportid,
    set_reportid : nc$bs$oa$oama$ecm$reforagr$get_reportid,
    get_approvaltype : nc$bs$oa$oama$ecm$reforagr$get_approvaltype,
    set_approvaltype : nc$bs$oa$oama$ecm$reforagr$get_approvaltype,
    get_approvalmsg : nc$bs$oa$oama$ecm$reforagr$get_approvalmsg,
    set_approvalmsg : nc$bs$oa$oama$ecm$reforagr$get_approvalmsg
}
nc.bs.oa.oama.ecm.reforagr.registerClass('nc.bs.oa.oama.ecm.reforagr',UMP.UI.Mvc.Context);

