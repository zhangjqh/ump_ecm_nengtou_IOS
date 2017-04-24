Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.responseref = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.responseref.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$responseref$get_listid(){
    return this.get('listid');
}
function nc$bs$oa$oama$ecm$responseref$set_listid(value){
    return this.set('listid',value);
}
function nc$bs$oa$oama$ecm$responseref$get_stafflist(){
    return this.get('stafflist');
}
function nc$bs$oa$oama$ecm$responseref$set_stafflist(value){
    return this.set('stafflist',value);
}
nc.bs.oa.oama.ecm.responseref.prototype = {
    get_listid : nc$bs$oa$oama$ecm$responseref$get_listid,
    set_listid : nc$bs$oa$oama$ecm$responseref$get_listid,
    get_stafflist : nc$bs$oa$oama$ecm$responseref$get_stafflist,
    set_stafflist : nc$bs$oa$oama$ecm$responseref$get_stafflist
}
nc.bs.oa.oama.ecm.responseref.registerClass('nc.bs.oa.oama.ecm.responseref',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.person = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.person.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$person$get_staffid(){
    return this.get('staffid');
}
function nc$bs$oa$oama$ecm$person$set_staffid(value){
    return this.set('staffid',value);
}
function nc$bs$oa$oama$ecm$person$get_nsme(){
    return this.get('nsme');
}
function nc$bs$oa$oama$ecm$person$set_nsme(value){
    return this.set('nsme',value);
}
function nc$bs$oa$oama$ecm$person$get_department(){
    return this.get('department');
}
function nc$bs$oa$oama$ecm$person$set_department(value){
    return this.set('department',value);
}
function nc$bs$oa$oama$ecm$person$get_ischecked(){
    return this.get('ischecked');
}
function nc$bs$oa$oama$ecm$person$set_ischecked(value){
    return this.set('ischecked',value);
}
nc.bs.oa.oama.ecm.person.prototype = {
    get_staffid : nc$bs$oa$oama$ecm$person$get_staffid,
    set_staffid : nc$bs$oa$oama$ecm$person$get_staffid,
    get_nsme : nc$bs$oa$oama$ecm$person$get_nsme,
    set_nsme : nc$bs$oa$oama$ecm$person$get_nsme,
    get_department : nc$bs$oa$oama$ecm$person$get_department,
    set_department : nc$bs$oa$oama$ecm$person$get_department,
    get_ischecked : nc$bs$oa$oama$ecm$person$get_ischecked,
    set_ischecked : nc$bs$oa$oama$ecm$person$get_ischecked
}
nc.bs.oa.oama.ecm.person.registerClass('nc.bs.oa.oama.ecm.person',UMP.UI.Mvc.Context);

