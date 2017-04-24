Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.eventDetail = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.eventDetail.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$eventDetail$get_eventid(){
    return this.get('eventid');
}
function nc$bs$oa$oama$ecm$eventDetail$set_eventid(value){
    return this.set('eventid',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_theme(){
    return this.get('theme');
}
function nc$bs$oa$oama$ecm$eventDetail$set_theme(value){
    return this.set('theme',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_begintime(){
    return this.get('begintime');
}
function nc$bs$oa$oama$ecm$eventDetail$set_begintime(value){
    return this.set('begintime',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_endtime(){
    return this.get('endtime');
}
function nc$bs$oa$oama$ecm$eventDetail$set_endtime(value){
    return this.set('endtime',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_isallday(){
    return this.get('isallday');
}
function nc$bs$oa$oama$ecm$eventDetail$set_isallday(value){
    return this.set('isallday',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$eventDetail$set_type(value){
    return this.set('type',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$eventDetail$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_grouplist(){
    return this.get('grouplist');
}
function nc$bs$oa$oama$ecm$eventDetail$set_grouplist(value){
    return this.set('grouplist',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_expired(){
    return this.get('expired');
}
function nc$bs$oa$oama$ecm$eventDetail$set_expired(value){
    return this.set('expired',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_sharedby(){
    return this.get('sharedby');
}
function nc$bs$oa$oama$ecm$eventDetail$set_sharedby(value){
    return this.set('sharedby',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_remindtype(){
    return this.get('remindtype');
}
function nc$bs$oa$oama$ecm$eventDetail$set_remindtype(value){
    return this.set('remindtype',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_remindrule(){
    return this.get('remindrule');
}
function nc$bs$oa$oama$ecm$eventDetail$set_remindrule(value){
    return this.set('remindrule',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_status(){
    return this.get('status');
}
function nc$bs$oa$oama$ecm$eventDetail$set_status(value){
    return this.set('status',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_isrepeatevent(){
    return this.get('isrepeatevent');
}
function nc$bs$oa$oama$ecm$eventDetail$set_isrepeatevent(value){
    return this.set('isrepeatevent',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeat(){
    return this.get('repeat');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeat(value){
    return this.set('repeat',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeattype(){
    return this.get('repeattype');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeattype(value){
    return this.set('repeattype',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatdate(){
    return this.get('repeatdate');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatdate(value){
    return this.set('repeatdate',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_week(){
    return this.get('week');
}
function nc$bs$oa$oama$ecm$eventDetail$set_week(value){
    return this.set('week',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatday(){
    return this.get('repeatday');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatday(value){
    return this.set('repeatday',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_month(){
    return this.get('month');
}
function nc$bs$oa$oama$ecm$eventDetail$set_month(value){
    return this.set('month',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatcount(){
    return this.get('repeatcount');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatcount(value){
    return this.set('repeatcount',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_endrepeattype(){
    return this.get('endrepeattype');
}
function nc$bs$oa$oama$ecm$eventDetail$set_endrepeattype(value){
    return this.set('endrepeattype',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeattimes(){
    return this.get('repeattimes');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeattimes(value){
    return this.set('repeattimes',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatendday(){
    return this.get('repeatendday');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatendday(value){
    return this.set('repeatendday',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_msg(){
    return this.get('msg');
}
function nc$bs$oa$oama$ecm$eventDetail$set_msg(value){
    return this.set('msg',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_ts(){
    return this.get('ts');
}
function nc$bs$oa$oama$ecm$eventDetail$set_ts(value){
    return this.set('ts',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_ismessage(){
    return this.get('ismessage');
}
function nc$bs$oa$oama$ecm$eventDetail$set_ismessage(value){
    return this.set('ismessage',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_ismail(){
    return this.get('ismail');
}
function nc$bs$oa$oama$ecm$eventDetail$set_ismail(value){
    return this.set('ismail',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_issms(){
    return this.get('issms');
}
function nc$bs$oa$oama$ecm$eventDetail$set_issms(value){
    return this.set('issms',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_isim(){
    return this.get('isim');
}
function nc$bs$oa$oama$ecm$eventDetail$set_isim(value){
    return this.set('isim',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_ispush(){
    return this.get('ispush');
}
function nc$bs$oa$oama$ecm$eventDetail$set_ispush(value){
    return this.set('ispush',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_typename(){
    return this.get('typename');
}
function nc$bs$oa$oama$ecm$eventDetail$set_typename(value){
    return this.set('typename',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_priorityname(){
    return this.get('priorityname');
}
function nc$bs$oa$oama$ecm$eventDetail$set_priorityname(value){
    return this.set('priorityname',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_remindruledesc(){
    return this.get('remindruledesc');
}
function nc$bs$oa$oama$ecm$eventDetail$set_remindruledesc(value){
    return this.set('remindruledesc',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_isalldayswitch(){
    return this.get('isalldayswitch');
}
function nc$bs$oa$oama$ecm$eventDetail$set_isalldayswitch(value){
    return this.set('isalldayswitch',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_isrepeateventswitch(){
    return this.get('isrepeateventswitch');
}
function nc$bs$oa$oama$ecm$eventDetail$set_isrepeateventswitch(value){
    return this.set('isrepeateventswitch',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatdaydesc(){
    return this.get('repeatdaydesc');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatdaydesc(value){
    return this.set('repeatdaydesc',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_monthdesc(){
    return this.get('monthdesc');
}
function nc$bs$oa$oama$ecm$eventDetail$set_monthdesc(value){
    return this.set('monthdesc',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_monthrefs(){
    return this.get('monthrefs');
}
function nc$bs$oa$oama$ecm$eventDetail$set_monthrefs(value){
    return this.set('monthrefs',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_repeatdayresfs(){
    return this.get('repeatdayresfs');
}
function nc$bs$oa$oama$ecm$eventDetail$set_repeatdayresfs(value){
    return this.set('repeatdayresfs',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_begindate(){
    return this.get('begindate');
}
function nc$bs$oa$oama$ecm$eventDetail$set_begindate(value){
    return this.set('begindate',value);
}
function nc$bs$oa$oama$ecm$eventDetail$get_enddate(){
    return this.get('enddate');
}
function nc$bs$oa$oama$ecm$eventDetail$set_enddate(value){
    return this.set('enddate',value);
}
nc.bs.oa.oama.ecm.eventDetail.prototype = {
    get_eventid : nc$bs$oa$oama$ecm$eventDetail$get_eventid,
    set_eventid : nc$bs$oa$oama$ecm$eventDetail$get_eventid,
    get_theme : nc$bs$oa$oama$ecm$eventDetail$get_theme,
    set_theme : nc$bs$oa$oama$ecm$eventDetail$get_theme,
    get_begintime : nc$bs$oa$oama$ecm$eventDetail$get_begintime,
    set_begintime : nc$bs$oa$oama$ecm$eventDetail$get_begintime,
    get_endtime : nc$bs$oa$oama$ecm$eventDetail$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$eventDetail$get_endtime,
    get_isallday : nc$bs$oa$oama$ecm$eventDetail$get_isallday,
    set_isallday : nc$bs$oa$oama$ecm$eventDetail$get_isallday,
    get_type : nc$bs$oa$oama$ecm$eventDetail$get_type,
    set_type : nc$bs$oa$oama$ecm$eventDetail$get_type,
    get_priority : nc$bs$oa$oama$ecm$eventDetail$get_priority,
    set_priority : nc$bs$oa$oama$ecm$eventDetail$get_priority,
    get_grouplist : nc$bs$oa$oama$ecm$eventDetail$get_grouplist,
    set_grouplist : nc$bs$oa$oama$ecm$eventDetail$get_grouplist,
    get_expired : nc$bs$oa$oama$ecm$eventDetail$get_expired,
    set_expired : nc$bs$oa$oama$ecm$eventDetail$get_expired,
    get_sharedby : nc$bs$oa$oama$ecm$eventDetail$get_sharedby,
    set_sharedby : nc$bs$oa$oama$ecm$eventDetail$get_sharedby,
    get_remindtype : nc$bs$oa$oama$ecm$eventDetail$get_remindtype,
    set_remindtype : nc$bs$oa$oama$ecm$eventDetail$get_remindtype,
    get_remindrule : nc$bs$oa$oama$ecm$eventDetail$get_remindrule,
    set_remindrule : nc$bs$oa$oama$ecm$eventDetail$get_remindrule,
    get_status : nc$bs$oa$oama$ecm$eventDetail$get_status,
    set_status : nc$bs$oa$oama$ecm$eventDetail$get_status,
    get_isrepeatevent : nc$bs$oa$oama$ecm$eventDetail$get_isrepeatevent,
    set_isrepeatevent : nc$bs$oa$oama$ecm$eventDetail$get_isrepeatevent,
    get_repeat : nc$bs$oa$oama$ecm$eventDetail$get_repeat,
    set_repeat : nc$bs$oa$oama$ecm$eventDetail$get_repeat,
    get_repeattype : nc$bs$oa$oama$ecm$eventDetail$get_repeattype,
    set_repeattype : nc$bs$oa$oama$ecm$eventDetail$get_repeattype,
    get_repeatdate : nc$bs$oa$oama$ecm$eventDetail$get_repeatdate,
    set_repeatdate : nc$bs$oa$oama$ecm$eventDetail$get_repeatdate,
    get_week : nc$bs$oa$oama$ecm$eventDetail$get_week,
    set_week : nc$bs$oa$oama$ecm$eventDetail$get_week,
    get_repeatday : nc$bs$oa$oama$ecm$eventDetail$get_repeatday,
    set_repeatday : nc$bs$oa$oama$ecm$eventDetail$get_repeatday,
    get_month : nc$bs$oa$oama$ecm$eventDetail$get_month,
    set_month : nc$bs$oa$oama$ecm$eventDetail$get_month,
    get_repeatcount : nc$bs$oa$oama$ecm$eventDetail$get_repeatcount,
    set_repeatcount : nc$bs$oa$oama$ecm$eventDetail$get_repeatcount,
    get_endrepeattype : nc$bs$oa$oama$ecm$eventDetail$get_endrepeattype,
    set_endrepeattype : nc$bs$oa$oama$ecm$eventDetail$get_endrepeattype,
    get_repeattimes : nc$bs$oa$oama$ecm$eventDetail$get_repeattimes,
    set_repeattimes : nc$bs$oa$oama$ecm$eventDetail$get_repeattimes,
    get_repeatendday : nc$bs$oa$oama$ecm$eventDetail$get_repeatendday,
    set_repeatendday : nc$bs$oa$oama$ecm$eventDetail$get_repeatendday,
    get_msg : nc$bs$oa$oama$ecm$eventDetail$get_msg,
    set_msg : nc$bs$oa$oama$ecm$eventDetail$get_msg,
    get_ts : nc$bs$oa$oama$ecm$eventDetail$get_ts,
    set_ts : nc$bs$oa$oama$ecm$eventDetail$get_ts,
    get_ismessage : nc$bs$oa$oama$ecm$eventDetail$get_ismessage,
    set_ismessage : nc$bs$oa$oama$ecm$eventDetail$get_ismessage,
    get_ismail : nc$bs$oa$oama$ecm$eventDetail$get_ismail,
    set_ismail : nc$bs$oa$oama$ecm$eventDetail$get_ismail,
    get_issms : nc$bs$oa$oama$ecm$eventDetail$get_issms,
    set_issms : nc$bs$oa$oama$ecm$eventDetail$get_issms,
    get_isim : nc$bs$oa$oama$ecm$eventDetail$get_isim,
    set_isim : nc$bs$oa$oama$ecm$eventDetail$get_isim,
    get_ispush : nc$bs$oa$oama$ecm$eventDetail$get_ispush,
    set_ispush : nc$bs$oa$oama$ecm$eventDetail$get_ispush,
    get_typename : nc$bs$oa$oama$ecm$eventDetail$get_typename,
    set_typename : nc$bs$oa$oama$ecm$eventDetail$get_typename,
    get_priorityname : nc$bs$oa$oama$ecm$eventDetail$get_priorityname,
    set_priorityname : nc$bs$oa$oama$ecm$eventDetail$get_priorityname,
    get_remindruledesc : nc$bs$oa$oama$ecm$eventDetail$get_remindruledesc,
    set_remindruledesc : nc$bs$oa$oama$ecm$eventDetail$get_remindruledesc,
    get_isalldayswitch : nc$bs$oa$oama$ecm$eventDetail$get_isalldayswitch,
    set_isalldayswitch : nc$bs$oa$oama$ecm$eventDetail$get_isalldayswitch,
    get_isrepeateventswitch : nc$bs$oa$oama$ecm$eventDetail$get_isrepeateventswitch,
    set_isrepeateventswitch : nc$bs$oa$oama$ecm$eventDetail$get_isrepeateventswitch,
    get_repeatdaydesc : nc$bs$oa$oama$ecm$eventDetail$get_repeatdaydesc,
    set_repeatdaydesc : nc$bs$oa$oama$ecm$eventDetail$get_repeatdaydesc,
    get_monthdesc : nc$bs$oa$oama$ecm$eventDetail$get_monthdesc,
    set_monthdesc : nc$bs$oa$oama$ecm$eventDetail$get_monthdesc,
    get_monthrefs : nc$bs$oa$oama$ecm$eventDetail$get_monthrefs,
    set_monthrefs : nc$bs$oa$oama$ecm$eventDetail$get_monthrefs,
    get_repeatdayresfs : nc$bs$oa$oama$ecm$eventDetail$get_repeatdayresfs,
    set_repeatdayresfs : nc$bs$oa$oama$ecm$eventDetail$get_repeatdayresfs,
    get_begindate : nc$bs$oa$oama$ecm$eventDetail$get_begindate,
    set_begindate : nc$bs$oa$oama$ecm$eventDetail$get_begindate,
    get_enddate : nc$bs$oa$oama$ecm$eventDetail$get_enddate,
    set_enddate : nc$bs$oa$oama$ecm$eventDetail$get_enddate
}
nc.bs.oa.oama.ecm.eventDetail.registerClass('nc.bs.oa.oama.ecm.eventDetail',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.groupshareto = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.groupshareto.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$groupshareto$get_sharegroupid(){
    return this.get('sharegroupid');
}
function nc$bs$oa$oama$ecm$groupshareto$set_sharegroupid(value){
    return this.set('sharegroupid',value);
}
function nc$bs$oa$oama$ecm$groupshareto$get_sharegroupname(){
    return this.get('sharegroupname');
}
function nc$bs$oa$oama$ecm$groupshareto$set_sharegroupname(value){
    return this.set('sharegroupname',value);
}
function nc$bs$oa$oama$ecm$groupshareto$get_sharetoid(){
    return this.get('sharetoid');
}
function nc$bs$oa$oama$ecm$groupshareto$set_sharetoid(value){
    return this.set('sharetoid',value);
}
function nc$bs$oa$oama$ecm$groupshareto$get_sharetoname(){
    return this.get('sharetoname');
}
function nc$bs$oa$oama$ecm$groupshareto$set_sharetoname(value){
    return this.set('sharetoname',value);
}
nc.bs.oa.oama.ecm.groupshareto.prototype = {
    get_sharegroupid : nc$bs$oa$oama$ecm$groupshareto$get_sharegroupid,
    set_sharegroupid : nc$bs$oa$oama$ecm$groupshareto$get_sharegroupid,
    get_sharegroupname : nc$bs$oa$oama$ecm$groupshareto$get_sharegroupname,
    set_sharegroupname : nc$bs$oa$oama$ecm$groupshareto$get_sharegroupname,
    get_sharetoid : nc$bs$oa$oama$ecm$groupshareto$get_sharetoid,
    set_sharetoid : nc$bs$oa$oama$ecm$groupshareto$get_sharetoid,
    get_sharetoname : nc$bs$oa$oama$ecm$groupshareto$get_sharetoname,
    set_sharetoname : nc$bs$oa$oama$ecm$groupshareto$get_sharetoname
}
nc.bs.oa.oama.ecm.groupshareto.registerClass('nc.bs.oa.oama.ecm.groupshareto',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.monthref = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.monthref.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$monthref$get_key(){
    return this.get('key');
}
function nc$bs$oa$oama$ecm$monthref$set_key(value){
    return this.set('key',value);
}
function nc$bs$oa$oama$ecm$monthref$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$monthref$set_name(value){
    return this.set('name',value);
}
nc.bs.oa.oama.ecm.monthref.prototype = {
    get_key : nc$bs$oa$oama$ecm$monthref$get_key,
    set_key : nc$bs$oa$oama$ecm$monthref$get_key,
    get_name : nc$bs$oa$oama$ecm$monthref$get_name,
    set_name : nc$bs$oa$oama$ecm$monthref$get_name
}
nc.bs.oa.oama.ecm.monthref.registerClass('nc.bs.oa.oama.ecm.monthref',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.repeatdayref = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.repeatdayref.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$repeatdayref$get_key(){
    return this.get('key');
}
function nc$bs$oa$oama$ecm$repeatdayref$set_key(value){
    return this.set('key',value);
}
function nc$bs$oa$oama$ecm$repeatdayref$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$repeatdayref$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$repeatdayref$get_isChecked(){
    return this.get('isChecked');
}
function nc$bs$oa$oama$ecm$repeatdayref$set_isChecked(value){
    return this.set('isChecked',value);
}
nc.bs.oa.oama.ecm.repeatdayref.prototype = {
    get_key : nc$bs$oa$oama$ecm$repeatdayref$get_key,
    set_key : nc$bs$oa$oama$ecm$repeatdayref$get_key,
    get_name : nc$bs$oa$oama$ecm$repeatdayref$get_name,
    set_name : nc$bs$oa$oama$ecm$repeatdayref$get_name,
    get_isChecked : nc$bs$oa$oama$ecm$repeatdayref$get_isChecked,
    set_isChecked : nc$bs$oa$oama$ecm$repeatdayref$get_isChecked
}
nc.bs.oa.oama.ecm.repeatdayref.registerClass('nc.bs.oa.oama.ecm.repeatdayref',UMP.UI.Mvc.Context);

