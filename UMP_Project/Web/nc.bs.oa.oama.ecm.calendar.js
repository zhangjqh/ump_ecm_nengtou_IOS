Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.calendar = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.calendar.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$calendar$get_month(){
    return this.get('month');
}
function nc$bs$oa$oama$ecm$calendar$set_month(value){
    return this.set('month',value);
}
function nc$bs$oa$oama$ecm$calendar$get_CalendarData(){
    return this.get('CalendarData');
}
function nc$bs$oa$oama$ecm$calendar$set_CalendarData(value){
    return this.set('CalendarData',value);
}
function nc$bs$oa$oama$ecm$calendar$get_eventlist(){
    return this.get('eventlist');
}
function nc$bs$oa$oama$ecm$calendar$set_eventlist(value){
    return this.set('eventlist',value);
}
nc.bs.oa.oama.ecm.calendar.prototype = {
    get_month : nc$bs$oa$oama$ecm$calendar$get_month,
    set_month : nc$bs$oa$oama$ecm$calendar$get_month,
    get_CalendarData : nc$bs$oa$oama$ecm$calendar$get_CalendarData,
    set_CalendarData : nc$bs$oa$oama$ecm$calendar$get_CalendarData,
    get_eventlist : nc$bs$oa$oama$ecm$calendar$get_eventlist,
    set_eventlist : nc$bs$oa$oama$ecm$calendar$get_eventlist
}
nc.bs.oa.oama.ecm.calendar.registerClass('nc.bs.oa.oama.ecm.calendar',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.dayinfo = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.dayinfo.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$dayinfo$get_day(){
    return this.get('day');
}
function nc$bs$oa$oama$ecm$dayinfo$set_day(value){
    return this.set('day',value);
}
function nc$bs$oa$oama$ecm$dayinfo$get_ishaveevents(){
    return this.get('ishaveevents');
}
function nc$bs$oa$oama$ecm$dayinfo$set_ishaveevents(value){
    return this.set('ishaveevents',value);
}
function nc$bs$oa$oama$ecm$dayinfo$get_ishaveexpired(){
    return this.get('ishaveexpired');
}
function nc$bs$oa$oama$ecm$dayinfo$set_ishaveexpired(value){
    return this.set('ishaveexpired',value);
}
nc.bs.oa.oama.ecm.dayinfo.prototype = {
    get_day : nc$bs$oa$oama$ecm$dayinfo$get_day,
    set_day : nc$bs$oa$oama$ecm$dayinfo$get_day,
    get_ishaveevents : nc$bs$oa$oama$ecm$dayinfo$get_ishaveevents,
    set_ishaveevents : nc$bs$oa$oama$ecm$dayinfo$get_ishaveevents,
    get_ishaveexpired : nc$bs$oa$oama$ecm$dayinfo$get_ishaveexpired,
    set_ishaveexpired : nc$bs$oa$oama$ecm$dayinfo$get_ishaveexpired
}
nc.bs.oa.oama.ecm.dayinfo.registerClass('nc.bs.oa.oama.ecm.dayinfo',UMP.UI.Mvc.Context);

Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.event = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.event.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$event$get_eventid(){
    return this.get('eventid');
}
function nc$bs$oa$oama$ecm$event$set_eventid(value){
    return this.set('eventid',value);
}
function nc$bs$oa$oama$ecm$event$get_priority(){
    return this.get('priority');
}
function nc$bs$oa$oama$ecm$event$set_priority(value){
    return this.set('priority',value);
}
function nc$bs$oa$oama$ecm$event$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$event$set_type(value){
    return this.set('type',value);
}
function nc$bs$oa$oama$ecm$event$get_expired(){
    return this.get('expired');
}
function nc$bs$oa$oama$ecm$event$set_expired(value){
    return this.set('expired',value);
}
function nc$bs$oa$oama$ecm$event$get_begintime(){
    return this.get('begintime');
}
function nc$bs$oa$oama$ecm$event$set_begintime(value){
    return this.set('begintime',value);
}
function nc$bs$oa$oama$ecm$event$get_endtime(){
    return this.get('endtime');
}
function nc$bs$oa$oama$ecm$event$set_endtime(value){
    return this.set('endtime',value);
}
function nc$bs$oa$oama$ecm$event$get_isallday(){
    return this.get('isallday');
}
function nc$bs$oa$oama$ecm$event$set_isallday(value){
    return this.set('isallday',value);
}
function nc$bs$oa$oama$ecm$event$get_theme(){
    return this.get('theme');
}
function nc$bs$oa$oama$ecm$event$set_theme(value){
    return this.set('theme',value);
}
function nc$bs$oa$oama$ecm$event$get_isrepeatevent(){
    return this.get('isrepeatevent');
}
function nc$bs$oa$oama$ecm$event$set_isrepeatevent(value){
    return this.set('isrepeatevent',value);
}
function nc$bs$oa$oama$ecm$event$get_sharedby(){
    return this.get('sharedby');
}
function nc$bs$oa$oama$ecm$event$set_sharedby(value){
    return this.set('sharedby',value);
}
function nc$bs$oa$oama$ecm$event$get_typename(){
    return this.get('typename');
}
function nc$bs$oa$oama$ecm$event$set_typename(value){
    return this.set('typename',value);
}
function nc$bs$oa$oama$ecm$event$get_priorityimg(){
    return this.get('priorityimg');
}
function nc$bs$oa$oama$ecm$event$set_priorityimg(value){
    return this.set('priorityimg',value);
}
function nc$bs$oa$oama$ecm$event$get_showbegintime(){
    return this.get('showbegintime');
}
function nc$bs$oa$oama$ecm$event$set_showbegintime(value){
    return this.set('showbegintime',value);
}
function nc$bs$oa$oama$ecm$event$get_showendtime(){
    return this.get('showendtime');
}
function nc$bs$oa$oama$ecm$event$set_showendtime(value){
    return this.set('showendtime',value);
}
function nc$bs$oa$oama$ecm$event$get_eventpid(){
    return this.get('eventpid');
}
function nc$bs$oa$oama$ecm$event$set_eventpid(value){
    return this.set('eventpid',value);
}
nc.bs.oa.oama.ecm.event.prototype = {
    get_eventid : nc$bs$oa$oama$ecm$event$get_eventid,
    set_eventid : nc$bs$oa$oama$ecm$event$get_eventid,
    get_priority : nc$bs$oa$oama$ecm$event$get_priority,
    set_priority : nc$bs$oa$oama$ecm$event$get_priority,
    get_type : nc$bs$oa$oama$ecm$event$get_type,
    set_type : nc$bs$oa$oama$ecm$event$get_type,
    get_expired : nc$bs$oa$oama$ecm$event$get_expired,
    set_expired : nc$bs$oa$oama$ecm$event$get_expired,
    get_begintime : nc$bs$oa$oama$ecm$event$get_begintime,
    set_begintime : nc$bs$oa$oama$ecm$event$get_begintime,
    get_endtime : nc$bs$oa$oama$ecm$event$get_endtime,
    set_endtime : nc$bs$oa$oama$ecm$event$get_endtime,
    get_isallday : nc$bs$oa$oama$ecm$event$get_isallday,
    set_isallday : nc$bs$oa$oama$ecm$event$get_isallday,
    get_theme : nc$bs$oa$oama$ecm$event$get_theme,
    set_theme : nc$bs$oa$oama$ecm$event$get_theme,
    get_isrepeatevent : nc$bs$oa$oama$ecm$event$get_isrepeatevent,
    set_isrepeatevent : nc$bs$oa$oama$ecm$event$get_isrepeatevent,
    get_sharedby : nc$bs$oa$oama$ecm$event$get_sharedby,
    set_sharedby : nc$bs$oa$oama$ecm$event$get_sharedby,
    get_typename : nc$bs$oa$oama$ecm$event$get_typename,
    set_typename : nc$bs$oa$oama$ecm$event$get_typename,
    get_priorityimg : nc$bs$oa$oama$ecm$event$get_priorityimg,
    set_priorityimg : nc$bs$oa$oama$ecm$event$get_priorityimg,
    get_showbegintime : nc$bs$oa$oama$ecm$event$get_showbegintime,
    set_showbegintime : nc$bs$oa$oama$ecm$event$get_showbegintime,
    get_showendtime : nc$bs$oa$oama$ecm$event$get_showendtime,
    set_showendtime : nc$bs$oa$oama$ecm$event$get_showendtime,
    get_eventpid : nc$bs$oa$oama$ecm$event$get_eventpid,
    set_eventpid : nc$bs$oa$oama$ecm$event$get_eventpid
}
nc.bs.oa.oama.ecm.event.registerClass('nc.bs.oa.oama.ecm.event',UMP.UI.Mvc.Context);

