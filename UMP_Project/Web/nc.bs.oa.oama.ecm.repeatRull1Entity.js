Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.repeatRull1Entity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.repeatRull1Entity.initializeBase(this,[tag]);
    $um$initEntity(this, "repeatRull1", {"tag":"context","attributes":{"id":"repeatRull1","iscascade":"false","from-type":"context","filter":""},"fields":{"isrepeateventswitch":{"tag":"field","attributes":{"id":"isrepeateventswitch","type":"bool"}},"repeatendday":{"tag":"field","attributes":{"id":"repeatendday","type":"string"}},"repeatdate":{"tag":"field","attributes":{"id":"repeatdate","type":"string"}},"repeatdaydesc":{"tag":"field","attributes":{"id":"repeatdaydesc","type":"string"}},"repeat":{"tag":"field","attributes":{"id":"repeat","type":"string"}},"monthdesc":{"tag":"field","attributes":{"id":"monthdesc","type":"string"}},"repeattimes":{"tag":"field","attributes":{"id":"repeattimes","type":"string"}},"repeatcount":{"tag":"field","attributes":{"id":"repeatcount","type":"string"}},"endrepeattype":{"tag":"field","attributes":{"id":"endrepeattype","type":"string"}},"repeatday":{"tag":"field","attributes":{"id":"repeatday","type":"string"}},"month":{"tag":"field","attributes":{"id":"month","type":"string"}},"isrepeatevent":{"tag":"field","attributes":{"id":"isrepeatevent","type":"string"}},"repeatdayresfs":{"tag":"fieldset","attributes":{"id":"repeatdayresfs","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"repeatdayref1","type":"string","parent-field":"","from-type":"context"},"fields":{"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"key":{"tag":"field","attributes":{"id":"key","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"monthrefs":{"tag":"fieldset","attributes":{"id":"monthrefs","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"123","type":"string","parent-field":"","from-type":"context"},"fields":{"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"key":{"tag":"field","attributes":{"id":"key","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"repeattype":{"tag":"field","attributes":{"id":"repeattype","type":"string"}},"week":{"tag":"field","attributes":{"id":"week","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeatevent(){
    return this.field('isrepeatevent');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_isrepeatevent(value){
    return this.field('isrepeatevent',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeateventswitch(){
    return this.field('isrepeateventswitch');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_isrepeateventswitch(value){
    return this.field('isrepeateventswitch',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeat(){
    return this.field('repeat');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeat(value){
    return this.field('repeat',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattype(){
    return this.field('repeattype');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeattype(value){
    return this.field('repeattype',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdate(){
    return this.field('repeatdate');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatdate(value){
    return this.field('repeatdate',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_week(){
    return this.field('week');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_week(value){
    return this.field('week',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatday(){
    return this.field('repeatday');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatday(value){
    return this.field('repeatday',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_month(){
    return this.field('month');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_month(value){
    return this.field('month',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatcount(){
    return this.field('repeatcount');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatcount(value){
    return this.field('repeatcount',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_endrepeattype(){
    return this.field('endrepeattype');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_endrepeattype(value){
    return this.field('endrepeattype',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattimes(){
    return this.field('repeattimes');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeattimes(value){
    return this.field('repeattimes',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatendday(){
    return this.field('repeatendday');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatendday(value){
    return this.field('repeatendday',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdaydesc(){
    return this.field('repeatdaydesc');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatdaydesc(value){
    return this.field('repeatdaydesc',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthdesc(){
    return this.field('monthdesc');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_monthdesc(value){
    return this.field('monthdesc',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthrefs(){
    return this.field('monthrefs');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_monthrefs(value){
    return this.field('monthrefs',value);
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdayresfs(){
    return this.field('repeatdayresfs');
}
function nc$bs$oa$oama$ecm$repeatRull1Entity$set_repeatdayresfs(value){
    return this.field('repeatdayresfs',value);
}
nc.bs.oa.oama.ecm.repeatRull1Entity.prototype = {
    get_isrepeatevent : nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeatevent,
    set_isrepeatevent : nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeatevent,
    get_isrepeateventswitch : nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeateventswitch,
    set_isrepeateventswitch : nc$bs$oa$oama$ecm$repeatRull1Entity$get_isrepeateventswitch,
    get_repeat : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeat,
    set_repeat : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeat,
    get_repeattype : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattype,
    set_repeattype : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattype,
    get_repeatdate : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdate,
    set_repeatdate : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdate,
    get_week : nc$bs$oa$oama$ecm$repeatRull1Entity$get_week,
    set_week : nc$bs$oa$oama$ecm$repeatRull1Entity$get_week,
    get_repeatday : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatday,
    set_repeatday : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatday,
    get_month : nc$bs$oa$oama$ecm$repeatRull1Entity$get_month,
    set_month : nc$bs$oa$oama$ecm$repeatRull1Entity$get_month,
    get_repeatcount : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatcount,
    set_repeatcount : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatcount,
    get_endrepeattype : nc$bs$oa$oama$ecm$repeatRull1Entity$get_endrepeattype,
    set_endrepeattype : nc$bs$oa$oama$ecm$repeatRull1Entity$get_endrepeattype,
    get_repeattimes : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattimes,
    set_repeattimes : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeattimes,
    get_repeatendday : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatendday,
    set_repeatendday : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatendday,
    get_repeatdaydesc : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdaydesc,
    set_repeatdaydesc : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdaydesc,
    get_monthdesc : nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthdesc,
    set_monthdesc : nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthdesc,
    get_monthrefs : nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthrefs,
    set_monthrefs : nc$bs$oa$oama$ecm$repeatRull1Entity$get_monthrefs,
    get_repeatdayresfs : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdayresfs,
    set_repeatdayresfs : nc$bs$oa$oama$ecm$repeatRull1Entity$get_repeatdayresfs
}
nc.bs.oa.oama.ecm.repeatRull1Entity.registerClass('nc.bs.oa.oama.ecm.repeatRull1Entity',UMP.UI.Mvc.Entity);
