Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.WorkDetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.WorkDetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "WorkDetail", {"tag":"context","attributes":{"id":"WorkDetail","iscascade":"false","from-type":"context","filter":""},"fields":{"flowedit":{"tag":"fieldset","attributes":{"id":"flowedit","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"FlowEdit","type":"string","parent-field":"","from-type":"context"},"fields":{"model":{"tag":"field","attributes":{"id":"model","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"names":{"tag":"field","attributes":{"id":"names","type":"string"}},"rulename":{"tag":"field","attributes":{"id":"rulename","type":"string"}},"rule":{"tag":"field","attributes":{"id":"rule","type":"string"}},"active":{"tag":"field","attributes":{"id":"active","type":"string"}},"steps":{"tag":"fieldset","attributes":{"id":"steps","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"StepEdit","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"textcontent":{"tag":"field","attributes":{"id":"textcontent","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"status":{"tag":"field","attributes":{"id":"status","type":"string"}},"archiveset":{"tag":"fieldset","attributes":{"id":"archiveset","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"ArchiveSet","type":"string","parent-field":"","from-type":"context"},"fields":{"folder":{"tag":"field","attributes":{"id":"folder","type":"string"}},"isauto":{"tag":"field","attributes":{"id":"isauto","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"attachment":{"tag":"fieldset","attributes":{"id":"attachment","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"Attachment","type":"string","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"filepath":{"tag":"field","attributes":{"id":"filepath","type":"string"}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"sizeshow":{"tag":"field","attributes":{"id":"sizeshow","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}},"size":{"tag":"field","attributes":{"id":"size","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"date":{"tag":"field","attributes":{"id":"date","type":"string"}},"contenttype":{"tag":"field","attributes":{"id":"contenttype","type":"string"}},"editable":{"tag":"field","attributes":{"id":"editable","type":"string"}},"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"flowhistory":{"tag":"fieldset","attributes":{"id":"flowhistory","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"FlowHistory","type":"string","parent-field":"","from-type":"context"},"fields":{"initactor":{"tag":"fieldset","attributes":{"id":"initactor","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"StepHistory","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"handwrite":{"tag":"field","attributes":{"id":"handwrite","type":""}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"commit":{"tag":"field","attributes":{"id":"commit","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"action":{"tag":"field","attributes":{"id":"action","type":"string"}},"date":{"tag":"field","attributes":{"id":"date","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"transactor":{"tag":"fieldset","attributes":{"id":"transactor","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"StepHistory","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"id":{"tag":"field","attributes":{"id":"id","type":"string"}},"handwrite":{"tag":"field","attributes":{"id":"handwrite","type":""}},"index":{"tag":"field","attributes":{"id":"index","type":"string"}},"commit":{"tag":"field","attributes":{"id":"commit","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"action":{"tag":"field","attributes":{"id":"action","type":"string"}},"date":{"tag":"field","attributes":{"id":"date","type":"string"}},"ListViewSelector":{"tag":"field","attributes":{"id":"ListViewSelector","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"},"title":{"tag":"field","attributes":{"id":"title","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"notice":{"tag":"fieldset","attributes":{"id":"notice","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"Notice","type":"string","parent-field":"","from-type":"context"},"fields":{"mail":{"tag":"field","attributes":{"id":"mail","type":"string"}},"approve":{"tag":"field","attributes":{"id":"approve","type":"string"}},"flow":{"tag":"field","attributes":{"id":"flow","type":"string"}},"im":{"tag":"field","attributes":{"id":"im","type":"string"}},"msg":{"tag":"field","attributes":{"id":"msg","type":"string"}},"mobile":{"tag":"field","attributes":{"id":"mobile","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_id(){
    return this.field('id');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_id(value){
    return this.field('id',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_title(){
    return this.field('title');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_title(value){
    return this.field('title',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_priority(){
    return this.field('priority');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_priority(value){
    return this.field('priority',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_date(){
    return this.field('date');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_date(value){
    return this.field('date',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_contenttype(){
    return this.field('contenttype');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_contenttype(value){
    return this.field('contenttype',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_textcontent(){
    return this.field('textcontent');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_textcontent(value){
    return this.field('textcontent',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowhistory(){
    return this.field('flowhistory');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_flowhistory(value){
    return this.field('flowhistory',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowedit(){
    return this.field('flowedit');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_flowedit(value){
    return this.field('flowedit',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_attachment(){
    return this.field('attachment');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_attachment(value){
    return this.field('attachment',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_notice(){
    return this.field('notice');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_notice(value){
    return this.field('notice',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_archiveset(){
    return this.field('archiveset');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_archiveset(value){
    return this.field('archiveset',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_editable(){
    return this.field('editable');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_editable(value){
    return this.field('editable',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_ts(value){
    return this.field('ts',value);
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$get_status(){
    return this.field('status');
}
function nc$bs$oa$oama$ecm$WorkDetailEntity$set_status(value){
    return this.field('status',value);
}
nc.bs.oa.oama.ecm.WorkDetailEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$WorkDetailEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$WorkDetailEntity$get_des,
    get_id : nc$bs$oa$oama$ecm$WorkDetailEntity$get_id,
    set_id : nc$bs$oa$oama$ecm$WorkDetailEntity$get_id,
    get_title : nc$bs$oa$oama$ecm$WorkDetailEntity$get_title,
    set_title : nc$bs$oa$oama$ecm$WorkDetailEntity$get_title,
    get_priority : nc$bs$oa$oama$ecm$WorkDetailEntity$get_priority,
    set_priority : nc$bs$oa$oama$ecm$WorkDetailEntity$get_priority,
    get_date : nc$bs$oa$oama$ecm$WorkDetailEntity$get_date,
    set_date : nc$bs$oa$oama$ecm$WorkDetailEntity$get_date,
    get_contenttype : nc$bs$oa$oama$ecm$WorkDetailEntity$get_contenttype,
    set_contenttype : nc$bs$oa$oama$ecm$WorkDetailEntity$get_contenttype,
    get_textcontent : nc$bs$oa$oama$ecm$WorkDetailEntity$get_textcontent,
    set_textcontent : nc$bs$oa$oama$ecm$WorkDetailEntity$get_textcontent,
    get_flowhistory : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowhistory,
    set_flowhistory : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowhistory,
    get_flowedit : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowedit,
    set_flowedit : nc$bs$oa$oama$ecm$WorkDetailEntity$get_flowedit,
    get_attachment : nc$bs$oa$oama$ecm$WorkDetailEntity$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$WorkDetailEntity$get_attachment,
    get_notice : nc$bs$oa$oama$ecm$WorkDetailEntity$get_notice,
    set_notice : nc$bs$oa$oama$ecm$WorkDetailEntity$get_notice,
    get_archiveset : nc$bs$oa$oama$ecm$WorkDetailEntity$get_archiveset,
    set_archiveset : nc$bs$oa$oama$ecm$WorkDetailEntity$get_archiveset,
    get_editable : nc$bs$oa$oama$ecm$WorkDetailEntity$get_editable,
    set_editable : nc$bs$oa$oama$ecm$WorkDetailEntity$get_editable,
    get_ts : nc$bs$oa$oama$ecm$WorkDetailEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$WorkDetailEntity$get_ts,
    get_status : nc$bs$oa$oama$ecm$WorkDetailEntity$get_status,
    set_status : nc$bs$oa$oama$ecm$WorkDetailEntity$get_status
}
nc.bs.oa.oama.ecm.WorkDetailEntity.registerClass('nc.bs.oa.oama.ecm.WorkDetailEntity',UMP.UI.Mvc.Entity);
