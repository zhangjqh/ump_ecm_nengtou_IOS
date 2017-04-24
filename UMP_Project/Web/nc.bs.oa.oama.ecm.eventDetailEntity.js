Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.eventDetailEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.eventDetailEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "eventDetail", {"tag":"context","attributes":{"id":"eventDetail","iscascade":"false","from-type":"context","filter":""},"fields":{"endtime":{"tag":"field","attributes":{"id":"endtime","type":"string"}},"repeatendday":{"tag":"field","attributes":{"id":"repeatendday","type":"string"}},"expired":{"tag":"field","attributes":{"id":"expired","type":"string"}},"ts":{"tag":"field","attributes":{"id":"ts","type":"string"}},"grouplist":{"tag":"fieldset","attributes":{"id":"grouplist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"groupshareto","type":"string","parent-field":"","from-type":"context"},"fields":{"sharetoname":{"tag":"field","attributes":{"id":"sharetoname","type":"string"}},"sharetoid":{"tag":"field","attributes":{"id":"sharetoid","type":"string"}},"sharegroupname":{"tag":"field","attributes":{"id":"sharegroupname","type":"string"}},"sharegroupid":{"tag":"field","attributes":{"id":"sharegroupid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"begintime":{"tag":"field","attributes":{"id":"begintime","type":"string"}},"repeatdate":{"tag":"field","attributes":{"id":"repeatdate","type":"string"}},"repeatdaydesc":{"tag":"field","attributes":{"id":"repeatdaydesc","type":"string"}},"remindrule":{"tag":"field","attributes":{"id":"remindrule","type":"string"}},"ispush":{"tag":"field","attributes":{"id":"ispush","type":"bool"}},"repeat":{"tag":"field","attributes":{"id":"repeat","type":"string"}},"monthdesc":{"tag":"field","attributes":{"id":"monthdesc","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"eventid":{"tag":"field","attributes":{"id":"eventid","type":"string"}},"repeatcount":{"tag":"field","attributes":{"id":"repeatcount","type":"string"}},"ismessage":{"tag":"field","attributes":{"id":"ismessage","type":"bool"}},"repeatday":{"tag":"field","attributes":{"id":"repeatday","type":"string"}},"ismail":{"tag":"field","attributes":{"id":"ismail","type":"bool"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"isalldayswitch":{"tag":"field","attributes":{"id":"isalldayswitch","type":"bool"}},"priorityname":{"tag":"field","attributes":{"id":"priorityname","type":"string"}},"issms":{"tag":"field","attributes":{"id":"issms","type":"bool"}},"repeattype":{"tag":"field","attributes":{"id":"repeattype","type":"string"}},"isrepeateventswitch":{"tag":"field","attributes":{"id":"isrepeateventswitch","type":"bool"}},"status":{"tag":"field","attributes":{"id":"status","type":"string"}},"theme":{"tag":"field","attributes":{"id":"theme","type":"string"}},"repeattimes":{"tag":"field","attributes":{"id":"repeattimes","type":"string"}},"msg":{"tag":"field","attributes":{"id":"msg","type":"string"}},"remindruledesc":{"tag":"field","attributes":{"id":"remindruledesc","type":"string"}},"endrepeattype":{"tag":"field","attributes":{"id":"endrepeattype","type":"string"}},"sharedby":{"tag":"field","attributes":{"id":"sharedby","type":"string"}},"remindtype":{"tag":"field","attributes":{"id":"remindtype","type":"string"}},"typename":{"tag":"field","attributes":{"id":"typename","type":"string"}},"month":{"tag":"field","attributes":{"id":"month","type":"string"}},"isrepeatevent":{"tag":"field","attributes":{"id":"isrepeatevent","type":"string"}},"enddate":{"tag":"field","attributes":{"id":"enddate","type":"string"}},"begindate":{"tag":"field","attributes":{"id":"begindate","type":"string"}},"repeatdayresfs":{"tag":"fieldset","attributes":{"id":"repeatdayresfs","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"repeatdayref","type":"string","parent-field":"","from-type":"context"},"fields":{"isChecked":{"tag":"field","attributes":{"id":"isChecked","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"key":{"tag":"field","attributes":{"id":"key","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"monthrefs":{"tag":"fieldset","attributes":{"id":"monthrefs","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"monthref","type":"string","parent-field":"","from-type":"context"},"fields":{"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"key":{"tag":"field","attributes":{"id":"key","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"isim":{"tag":"field","attributes":{"id":"isim","type":"bool"}},"isallday":{"tag":"field","attributes":{"id":"isallday","type":"string"}},"week":{"tag":"field","attributes":{"id":"week","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_eventid(){
    return this.field('eventid');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_eventid(value){
    return this.field('eventid',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_theme(){
    return this.field('theme');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_theme(value){
    return this.field('theme',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_begintime(){
    return this.field('begintime');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_begintime(value){
    return this.field('begintime',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_endtime(){
    return this.field('endtime');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_endtime(value){
    return this.field('endtime',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_isallday(){
    return this.field('isallday');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_isallday(value){
    return this.field('isallday',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_type(){
    return this.field('type');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_type(value){
    return this.field('type',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_priority(){
    return this.field('priority');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_priority(value){
    return this.field('priority',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_grouplist(){
    return this.field('grouplist');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_grouplist(value){
    return this.field('grouplist',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_expired(){
    return this.field('expired');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_expired(value){
    return this.field('expired',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_sharedby(){
    return this.field('sharedby');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_sharedby(value){
    return this.field('sharedby',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_remindtype(){
    return this.field('remindtype');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_remindtype(value){
    return this.field('remindtype',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_remindrule(){
    return this.field('remindrule');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_remindrule(value){
    return this.field('remindrule',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_status(){
    return this.field('status');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_status(value){
    return this.field('status',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeatevent(){
    return this.field('isrepeatevent');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_isrepeatevent(value){
    return this.field('isrepeatevent',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeat(){
    return this.field('repeat');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeat(value){
    return this.field('repeat',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattype(){
    return this.field('repeattype');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeattype(value){
    return this.field('repeattype',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdate(){
    return this.field('repeatdate');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatdate(value){
    return this.field('repeatdate',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_week(){
    return this.field('week');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_week(value){
    return this.field('week',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatday(){
    return this.field('repeatday');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatday(value){
    return this.field('repeatday',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_month(){
    return this.field('month');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_month(value){
    return this.field('month',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatcount(){
    return this.field('repeatcount');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatcount(value){
    return this.field('repeatcount',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_endrepeattype(){
    return this.field('endrepeattype');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_endrepeattype(value){
    return this.field('endrepeattype',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattimes(){
    return this.field('repeattimes');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeattimes(value){
    return this.field('repeattimes',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatendday(){
    return this.field('repeatendday');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatendday(value){
    return this.field('repeatendday',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_msg(){
    return this.field('msg');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_msg(value){
    return this.field('msg',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_ts(){
    return this.field('ts');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_ts(value){
    return this.field('ts',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_ismessage(){
    return this.field('ismessage');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_ismessage(value){
    return this.field('ismessage',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_ismail(){
    return this.field('ismail');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_ismail(value){
    return this.field('ismail',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_issms(){
    return this.field('issms');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_issms(value){
    return this.field('issms',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_isim(){
    return this.field('isim');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_isim(value){
    return this.field('isim',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_ispush(){
    return this.field('ispush');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_ispush(value){
    return this.field('ispush',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_typename(){
    return this.field('typename');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_typename(value){
    return this.field('typename',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_priorityname(){
    return this.field('priorityname');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_priorityname(value){
    return this.field('priorityname',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_remindruledesc(){
    return this.field('remindruledesc');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_remindruledesc(value){
    return this.field('remindruledesc',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_isalldayswitch(){
    return this.field('isalldayswitch');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_isalldayswitch(value){
    return this.field('isalldayswitch',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeateventswitch(){
    return this.field('isrepeateventswitch');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_isrepeateventswitch(value){
    return this.field('isrepeateventswitch',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdaydesc(){
    return this.field('repeatdaydesc');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatdaydesc(value){
    return this.field('repeatdaydesc',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_monthdesc(){
    return this.field('monthdesc');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_monthdesc(value){
    return this.field('monthdesc',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_monthrefs(){
    return this.field('monthrefs');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_monthrefs(value){
    return this.field('monthrefs',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdayresfs(){
    return this.field('repeatdayresfs');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_repeatdayresfs(value){
    return this.field('repeatdayresfs',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_begindate(){
    return this.field('begindate');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_begindate(value){
    return this.field('begindate',value);
}
function nc$bs$oa$oama$ecm$eventDetailEntity$get_enddate(){
    return this.field('enddate');
}
function nc$bs$oa$oama$ecm$eventDetailEntity$set_enddate(value){
    return this.field('enddate',value);
}
nc.bs.oa.oama.ecm.eventDetailEntity.prototype = {
    get_eventid : nc$bs$oa$oama$ecm$eventDetailEntity$get_eventid,
    set_eventid : nc$bs$oa$oama$ecm$eventDetailEntity$get_eventid,
    get_theme : nc$bs$oa$oama$ecm$eventDetailEntity$get_theme,
    set_theme : nc$bs$oa$oama$ecm$eventDetailEntity$get_theme,
    get_begintime : nc$bs$oa$oama$ecm$eventDetailEntity$get_begintime,
    set_begintime : nc$bs$oa$oama$ecm$eventDetailEntity$get_begintime,
    get_endtime : nc$bs$oa$oama$ecm$eventDetailEntity$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$eventDetailEntity$get_endtime,
    get_isallday : nc$bs$oa$oama$ecm$eventDetailEntity$get_isallday,
    set_isallday : nc$bs$oa$oama$ecm$eventDetailEntity$get_isallday,
    get_type : nc$bs$oa$oama$ecm$eventDetailEntity$get_type,
    set_type : nc$bs$oa$oama$ecm$eventDetailEntity$get_type,
    get_priority : nc$bs$oa$oama$ecm$eventDetailEntity$get_priority,
    set_priority : nc$bs$oa$oama$ecm$eventDetailEntity$get_priority,
    get_grouplist : nc$bs$oa$oama$ecm$eventDetailEntity$get_grouplist,
    set_grouplist : nc$bs$oa$oama$ecm$eventDetailEntity$get_grouplist,
    get_expired : nc$bs$oa$oama$ecm$eventDetailEntity$get_expired,
    set_expired : nc$bs$oa$oama$ecm$eventDetailEntity$get_expired,
    get_sharedby : nc$bs$oa$oama$ecm$eventDetailEntity$get_sharedby,
    set_sharedby : nc$bs$oa$oama$ecm$eventDetailEntity$get_sharedby,
    get_remindtype : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindtype,
    set_remindtype : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindtype,
    get_remindrule : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindrule,
    set_remindrule : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindrule,
    get_status : nc$bs$oa$oama$ecm$eventDetailEntity$get_status,
    set_status : nc$bs$oa$oama$ecm$eventDetailEntity$get_status,
    get_isrepeatevent : nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeatevent,
    set_isrepeatevent : nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeatevent,
    get_repeat : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeat,
    set_repeat : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeat,
    get_repeattype : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattype,
    set_repeattype : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattype,
    get_repeatdate : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdate,
    set_repeatdate : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdate,
    get_week : nc$bs$oa$oama$ecm$eventDetailEntity$get_week,
    set_week : nc$bs$oa$oama$ecm$eventDetailEntity$get_week,
    get_repeatday : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatday,
    set_repeatday : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatday,
    get_month : nc$bs$oa$oama$ecm$eventDetailEntity$get_month,
    set_month : nc$bs$oa$oama$ecm$eventDetailEntity$get_month,
    get_repeatcount : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatcount,
    set_repeatcount : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatcount,
    get_endrepeattype : nc$bs$oa$oama$ecm$eventDetailEntity$get_endrepeattype,
    set_endrepeattype : nc$bs$oa$oama$ecm$eventDetailEntity$get_endrepeattype,
    get_repeattimes : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattimes,
    set_repeattimes : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeattimes,
    get_repeatendday : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatendday,
    set_repeatendday : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatendday,
    get_msg : nc$bs$oa$oama$ecm$eventDetailEntity$get_msg,
    set_msg : nc$bs$oa$oama$ecm$eventDetailEntity$get_msg,
    get_ts : nc$bs$oa$oama$ecm$eventDetailEntity$get_ts,
    set_ts : nc$bs$oa$oama$ecm$eventDetailEntity$get_ts,
    get_ismessage : nc$bs$oa$oama$ecm$eventDetailEntity$get_ismessage,
    set_ismessage : nc$bs$oa$oama$ecm$eventDetailEntity$get_ismessage,
    get_ismail : nc$bs$oa$oama$ecm$eventDetailEntity$get_ismail,
    set_ismail : nc$bs$oa$oama$ecm$eventDetailEntity$get_ismail,
    get_issms : nc$bs$oa$oama$ecm$eventDetailEntity$get_issms,
    set_issms : nc$bs$oa$oama$ecm$eventDetailEntity$get_issms,
    get_isim : nc$bs$oa$oama$ecm$eventDetailEntity$get_isim,
    set_isim : nc$bs$oa$oama$ecm$eventDetailEntity$get_isim,
    get_ispush : nc$bs$oa$oama$ecm$eventDetailEntity$get_ispush,
    set_ispush : nc$bs$oa$oama$ecm$eventDetailEntity$get_ispush,
    get_typename : nc$bs$oa$oama$ecm$eventDetailEntity$get_typename,
    set_typename : nc$bs$oa$oama$ecm$eventDetailEntity$get_typename,
    get_priorityname : nc$bs$oa$oama$ecm$eventDetailEntity$get_priorityname,
    set_priorityname : nc$bs$oa$oama$ecm$eventDetailEntity$get_priorityname,
    get_remindruledesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindruledesc,
    set_remindruledesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_remindruledesc,
    get_isalldayswitch : nc$bs$oa$oama$ecm$eventDetailEntity$get_isalldayswitch,
    set_isalldayswitch : nc$bs$oa$oama$ecm$eventDetailEntity$get_isalldayswitch,
    get_isrepeateventswitch : nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeateventswitch,
    set_isrepeateventswitch : nc$bs$oa$oama$ecm$eventDetailEntity$get_isrepeateventswitch,
    get_repeatdaydesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdaydesc,
    set_repeatdaydesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdaydesc,
    get_monthdesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_monthdesc,
    set_monthdesc : nc$bs$oa$oama$ecm$eventDetailEntity$get_monthdesc,
    get_monthrefs : nc$bs$oa$oama$ecm$eventDetailEntity$get_monthrefs,
    set_monthrefs : nc$bs$oa$oama$ecm$eventDetailEntity$get_monthrefs,
    get_repeatdayresfs : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdayresfs,
    set_repeatdayresfs : nc$bs$oa$oama$ecm$eventDetailEntity$get_repeatdayresfs,
    get_begindate : nc$bs$oa$oama$ecm$eventDetailEntity$get_begindate,
    set_begindate : nc$bs$oa$oama$ecm$eventDetailEntity$get_begindate,
    get_enddate : nc$bs$oa$oama$ecm$eventDetailEntity$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$eventDetailEntity$get_enddate
}
nc.bs.oa.oama.ecm.eventDetailEntity.registerClass('nc.bs.oa.oama.ecm.eventDetailEntity',UMP.UI.Mvc.Entity);
