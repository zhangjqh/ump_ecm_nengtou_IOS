Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.taskstateenum = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.taskstateenum.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$taskstateenum$get_enumid(){
    return this.get('enumid');
}
function nc$bs$oa$oama$ecm$taskstateenum$set_enumid(value){
    return this.set('enumid',value);
}
function nc$bs$oa$oama$ecm$taskstateenum$get_enumlist(){
    return this.get('enumlist');
}
function nc$bs$oa$oama$ecm$taskstateenum$set_enumlist(value){
    return this.set('enumlist',value);
}
nc.bs.oa.oama.ecm.taskstateenum.prototype = {
    get_enumid : nc$bs$oa$oama$ecm$taskstateenum$get_enumid,
    set_enumid : nc$bs$oa$oama$ecm$taskstateenum$get_enumid,
    get_enumlist : nc$bs$oa$oama$ecm$taskstateenum$get_enumlist,
    set_enumlist : nc$bs$oa$oama$ecm$taskstateenum$get_enumlist
}
nc.bs.oa.oama.ecm.taskstateenum.registerClass('nc.bs.oa.oama.ecm.taskstateenum',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.enumtype = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.enumtype.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$enumtype$get_enumname(){
    return this.get('enumname');
}
function nc$bs$oa$oama$ecm$enumtype$set_enumname(value){
    return this.set('enumname',value);
}
function nc$bs$oa$oama$ecm$enumtype$get_enumid(){
    return this.get('enumid');
}
function nc$bs$oa$oama$ecm$enumtype$set_enumid(value){
    return this.set('enumid',value);
}
nc.bs.oa.oama.ecm.enumtype.prototype = {
    get_enumname : nc$bs$oa$oama$ecm$enumtype$get_enumname,
    set_enumname : nc$bs$oa$oama$ecm$enumtype$get_enumname,
    get_enumid : nc$bs$oa$oama$ecm$enumtype$get_enumid,
    set_enumid : nc$bs$oa$oama$ecm$enumtype$get_enumid
}
nc.bs.oa.oama.ecm.enumtype.registerClass('nc.bs.oa.oama.ecm.enumtype',UMP.UI.Mvc.Context);

