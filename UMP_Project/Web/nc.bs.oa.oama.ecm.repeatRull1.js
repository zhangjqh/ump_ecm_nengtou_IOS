Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.repeatRull1 = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.repeatRull1.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$repeatRull1$get_isrepeatevent(){
    return this.get('isrepeatevent');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_isrepeatevent(value){
    return this.set('isrepeatevent',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_isrepeateventswitch(){
    return this.get('isrepeateventswitch');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_isrepeateventswitch(value){
    return this.set('isrepeateventswitch',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeat(){
    return this.get('repeat');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeat(value){
    return this.set('repeat',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeattype(){
    return this.get('repeattype');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeattype(value){
    return this.set('repeattype',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatdate(){
    return this.get('repeatdate');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatdate(value){
    return this.set('repeatdate',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_week(){
    return this.get('week');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_week(value){
    return this.set('week',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatday(){
    return this.get('repeatday');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatday(value){
    return this.set('repeatday',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_month(){
    return this.get('month');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_month(value){
    return this.set('month',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatcount(){
    return this.get('repeatcount');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatcount(value){
    return this.set('repeatcount',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_endrepeattype(){
    return this.get('endrepeattype');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_endrepeattype(value){
    return this.set('endrepeattype',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeattimes(){
    return this.get('repeattimes');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeattimes(value){
    return this.set('repeattimes',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatendday(){
    return this.get('repeatendday');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatendday(value){
    return this.set('repeatendday',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatdaydesc(){
    return this.get('repeatdaydesc');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatdaydesc(value){
    return this.set('repeatdaydesc',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_monthdesc(){
    return this.get('monthdesc');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_monthdesc(value){
    return this.set('monthdesc',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_monthrefs(){
    return this.get('monthrefs');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_monthrefs(value){
    return this.set('monthrefs',value);
}
function nc$bs$oa$oama$ecm$repeatRull1$get_repeatdayresfs(){
    return this.get('repeatdayresfs');
}
function nc$bs$oa$oama$ecm$repeatRull1$set_repeatdayresfs(value){
    return this.set('repeatdayresfs',value);
}
nc.bs.oa.oama.ecm.repeatRull1.prototype = {
    get_isrepeatevent : nc$bs$oa$oama$ecm$repeatRull1$get_isrepeatevent,
    set_isrepeatevent : nc$bs$oa$oama$ecm$repeatRull1$get_isrepeatevent,
    get_isrepeateventswitch : nc$bs$oa$oama$ecm$repeatRull1$get_isrepeateventswitch,
    set_isrepeateventswitch : nc$bs$oa$oama$ecm$repeatRull1$get_isrepeateventswitch,
    get_repeat : nc$bs$oa$oama$ecm$repeatRull1$get_repeat,
    set_repeat : nc$bs$oa$oama$ecm$repeatRull1$get_repeat,
    get_repeattype : nc$bs$oa$oama$ecm$repeatRull1$get_repeattype,
    set_repeattype : nc$bs$oa$oama$ecm$repeatRull1$get_repeattype,
    get_repeatdate : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdate,
    set_repeatdate : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdate,
    get_week : nc$bs$oa$oama$ecm$repeatRull1$get_week,
    set_week : nc$bs$oa$oama$ecm$repeatRull1$get_week,
    get_repeatday : nc$bs$oa$oama$ecm$repeatRull1$get_repeatday,
    set_repeatday : nc$bs$oa$oama$ecm$repeatRull1$get_repeatday,
    get_month : nc$bs$oa$oama$ecm$repeatRull1$get_month,
    set_month : nc$bs$oa$oama$ecm$repeatRull1$get_month,
    get_repeatcount : nc$bs$oa$oama$ecm$repeatRull1$get_repeatcount,
    set_repeatcount : nc$bs$oa$oama$ecm$repeatRull1$get_repeatcount,
    get_endrepeattype : nc$bs$oa$oama$ecm$repeatRull1$get_endrepeattype,
    set_endrepeattype : nc$bs$oa$oama$ecm$repeatRull1$get_endrepeattype,
    get_repeattimes : nc$bs$oa$oama$ecm$repeatRull1$get_repeattimes,
    set_repeattimes : nc$bs$oa$oama$ecm$repeatRull1$get_repeattimes,
    get_repeatendday : nc$bs$oa$oama$ecm$repeatRull1$get_repeatendday,
    set_repeatendday : nc$bs$oa$oama$ecm$repeatRull1$get_repeatendday,
    get_repeatdaydesc : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdaydesc,
    set_repeatdaydesc : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdaydesc,
    get_monthdesc : nc$bs$oa$oama$ecm$repeatRull1$get_monthdesc,
    set_monthdesc : nc$bs$oa$oama$ecm$repeatRull1$get_monthdesc,
    get_monthrefs : nc$bs$oa$oama$ecm$repeatRull1$get_monthrefs,
    set_monthrefs : nc$bs$oa$oama$ecm$repeatRull1$get_monthrefs,
    get_repeatdayresfs : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdayresfs,
    set_repeatdayresfs : nc$bs$oa$oama$ecm$repeatRull1$get_repeatdayresfs
}
nc.bs.oa.oama.ecm.repeatRull1.registerClass('nc.bs.oa.oama.ecm.repeatRull1',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.123 = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.123.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$123$get_key(){
    return this.get('key');
}
function nc$bs$oa$oama$ecm$123$set_key(value){
    return this.set('key',value);
}
function nc$bs$oa$oama$ecm$123$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$123$set_name(value){
    return this.set('name',value);
}
nc.bs.oa.oama.ecm.123.prototype = {
    get_key : nc$bs$oa$oama$ecm$123$get_key,
    set_key : nc$bs$oa$oama$ecm$123$get_key,
    get_name : nc$bs$oa$oama$ecm$123$get_name,
    set_name : nc$bs$oa$oama$ecm$123$get_name
}
nc.bs.oa.oama.ecm.123.registerClass('nc.bs.oa.oama.ecm.123',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.repeatdayref1 = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.repeatdayref1.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$repeatdayref1$get_key(){
    return this.get('key');
}
function nc$bs$oa$oama$ecm$repeatdayref1$set_key(value){
    return this.set('key',value);
}
function nc$bs$oa$oama$ecm$repeatdayref1$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$repeatdayref1$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$repeatdayref1$get_isChecked(){
    return this.get('isChecked');
}
function nc$bs$oa$oama$ecm$repeatdayref1$set_isChecked(value){
    return this.set('isChecked',value);
}
nc.bs.oa.oama.ecm.repeatdayref1.prototype = {
    get_key : nc$bs$oa$oama$ecm$repeatdayref1$get_key,
    set_key : nc$bs$oa$oama$ecm$repeatdayref1$get_key,
    get_name : nc$bs$oa$oama$ecm$repeatdayref1$get_name,
    set_name : nc$bs$oa$oama$ecm$repeatdayref1$get_name,
    get_isChecked : nc$bs$oa$oama$ecm$repeatdayref1$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$repeatdayref1$get_isChecked
}
nc.bs.oa.oama.ecm.repeatdayref1.registerClass('nc.bs.oa.oama.ecm.repeatdayref1',UMP.UI.Mvc.Context);

