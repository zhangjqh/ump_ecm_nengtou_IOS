Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.listconfirm = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.listconfirm.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$listconfirm$get_listid(){
    return this.get('listid');
}
function nc$bs$oa$oama$ecm$listconfirm$set_listid(value){
    return this.set('listid',value);
}
function nc$bs$oa$oama$ecm$listconfirm$get_listname(){
    return this.get('listname');
}
function nc$bs$oa$oama$ecm$listconfirm$set_listname(value){
    return this.set('listname',value);
}
nc.bs.oa.oama.ecm.listconfirm.prototype = {
    get_listid : nc$bs$oa$oama$ecm$listconfirm$get_listid,
    set_listid : nc$bs$oa$oama$ecm$listconfirm$get_listid,
    get_listname : nc$bs$oa$oama$ecm$listconfirm$get_listname,
    set_listname : nc$bs$oa$oama$ecm$listconfirm$get_listname
}
nc.bs.oa.oama.ecm.listconfirm.registerClass('nc.bs.oa.oama.ecm.listconfirm',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reportdetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.reportdetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$reportdetail$get_reportid(){
    return this.get('reportid');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reportid(value){
    return this.set('reportid',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_reportheme(){
    return this.get('reportheme');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reportheme(value){
    return this.set('reportheme',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_reporttime(){
    return this.get('reporttime');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reporttime(value){
    return this.set('reporttime',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_reportname(){
    return this.get('reportname');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reportname(value){
    return this.set('reportname',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_reportstate(){
    return this.get('reportstate');
}
function nc$bs$oa$oama$ecm$reportdetail$set_reportstate(value){
    return this.set('reportstate',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_taskstate(){
    return this.get('taskstate');
}
function nc$bs$oa$oama$ecm$reportdetail$set_taskstate(value){
    return this.set('taskstate',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_taskschedule(){
    return this.get('taskschedule');
}
function nc$bs$oa$oama$ecm$reportdetail$set_taskschedule(value){
    return this.set('taskschedule',value);
}
function nc$bs$oa$oama$ecm$reportdetail$get_completion(){
    return this.get('completion');
}
function nc$bs$oa$oama$ecm$reportdetail$set_completion(value){
    return this.set('completion',value);
}
nc.bs.oa.oama.ecm.reportdetail.prototype = {
    get_reportid : nc$bs$oa$oama$ecm$reportdetail$get_reportid,
    set_reportid : nc$bs$oa$oama$ecm$reportdetail$get_reportid,
    get_reportheme : nc$bs$oa$oama$ecm$reportdetail$get_reportheme,
    set_reportheme : nc$bs$oa$oama$ecm$reportdetail$get_reportheme,
    get_reporttime : nc$bs$oa$oama$ecm$reportdetail$get_reporttime,
    set_reporttime : nc$bs$oa$oama$ecm$reportdetail$get_reporttime,
    get_reportname : nc$bs$oa$oama$ecm$reportdetail$get_reportname,
    set_reportname : nc$bs$oa$oama$ecm$reportdetail$get_reportname,
    get_reportstate : nc$bs$oa$oama$ecm$reportdetail$get_reportstate,
    set_reportstate : nc$bs$oa$oama$ecm$reportdetail$get_reportstate,
    get_taskstate : nc$bs$oa$oama$ecm$reportdetail$get_taskstate,
    set_taskstate : nc$bs$oa$oama$ecm$reportdetail$get_taskstate,
    get_taskschedule : nc$bs$oa$oama$ecm$reportdetail$get_taskschedule,
    set_taskschedule : nc$bs$oa$oama$ecm$reportdetail$get_taskschedule,
    get_completion : nc$bs$oa$oama$ecm$reportdetail$get_completion,
    set_completion : nc$bs$oa$oama$ecm$reportdetail$get_completion
}
nc.bs.oa.oama.ecm.reportdetail.registerClass('nc.bs.oa.oama.ecm.reportdetail',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.completion = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.completion.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$completion$get_reporttime(){
    return this.get('reporttime');
}
function nc$bs$oa$oama$ecm$completion$set_reporttime(value){
    return this.set('reporttime',value);
}
function nc$bs$oa$oama$ecm$completion$get_reportname(){
    return this.get('reportname');
}
function nc$bs$oa$oama$ecm$completion$set_reportname(value){
    return this.set('reportname',value);
}
function nc$bs$oa$oama$ecm$completion$get_reprotcontent(){
    return this.get('reprotcontent');
}
function nc$bs$oa$oama$ecm$completion$set_reprotcontent(value){
    return this.set('reprotcontent',value);
}
nc.bs.oa.oama.ecm.completion.prototype = {
    get_reporttime : nc$bs$oa$oama$ecm$completion$get_reporttime,
    set_reporttime : nc$bs$oa$oama$ecm$completion$get_reporttime,
    get_reportname : nc$bs$oa$oama$ecm$completion$get_reportname,
    set_reportname : nc$bs$oa$oama$ecm$completion$get_reportname,
    get_reprotcontent : nc$bs$oa$oama$ecm$completion$get_reprotcontent,
    set_reprotcontent : nc$bs$oa$oama$ecm$completion$get_reprotcontent
}
nc.bs.oa.oama.ecm.completion.registerClass('nc.bs.oa.oama.ecm.completion',UMP.UI.Mvc.Context);

