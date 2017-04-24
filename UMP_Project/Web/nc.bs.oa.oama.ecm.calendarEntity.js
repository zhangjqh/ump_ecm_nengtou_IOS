Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.calendarEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.calendarEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "calendar", {"tag":"context","attributes":{"id":"calendar","iscascade":"false","from-type":"context","filter":""},"fields":{"CalendarData":{"tag":"fieldset","attributes":{"id":"CalendarData","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"dayinfo","type":"string","parent-field":"","from-type":"context"},"fields":{"ishaveevents":{"tag":"field","attributes":{"id":"ishaveevents","type":"string"}},"ishaveexpired":{"tag":"field","attributes":{"id":"ishaveexpired","type":"string"}},"day":{"tag":"field","attributes":{"id":"day","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"month":{"tag":"field","attributes":{"id":"month","type":"string"}},"eventlist":{"tag":"fieldset","attributes":{"id":"eventlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"event","type":"string","parent-field":"","from-type":"context"},"fields":{"endtime":{"tag":"field","attributes":{"id":"endtime","type":"string"}},"expired":{"tag":"field","attributes":{"id":"expired","type":"string"}},"eventpid":{"tag":"field","attributes":{"id":"eventpid","type":"string"}},"begintime":{"tag":"field","attributes":{"id":"begintime","type":"string"}},"showbegintime":{"tag":"field","attributes":{"id":"showbegintime","type":"string"}},"theme":{"tag":"field","attributes":{"id":"theme","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"eventid":{"tag":"field","attributes":{"id":"eventid","type":"string"}},"priorityimg":{"tag":"field","attributes":{"id":"priorityimg","type":"string"}},"sharedby":{"tag":"field","attributes":{"id":"sharedby","type":"string"}},"priority":{"tag":"field","attributes":{"id":"priority","type":"string"}},"typename":{"tag":"field","attributes":{"id":"typename","type":"string"}},"isrepeatevent":{"tag":"field","attributes":{"id":"isrepeatevent","type":"string"}},"showendtime":{"tag":"field","attributes":{"id":"showendtime","type":"string"}},"isallday":{"tag":"field","attributes":{"id":"isallday","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$calendarEntity$get_month(){
    return this.field('month');
}
function nc$bs$oa$oama$ecm$calendarEntity$set_month(value){
    return this.field('month',value);
}
function nc$bs$oa$oama$ecm$calendarEntity$get_CalendarData(){
    return this.field('CalendarData');
}
function nc$bs$oa$oama$ecm$calendarEntity$set_CalendarData(value){
    return this.field('CalendarData',value);
}
function nc$bs$oa$oama$ecm$calendarEntity$get_eventlist(){
    return this.field('eventlist');
}
function nc$bs$oa$oama$ecm$calendarEntity$set_eventlist(value){
    return this.field('eventlist',value);
}
nc.bs.oa.oama.ecm.calendarEntity.prototype = {
    get_month : nc$bs$oa$oama$ecm$calendarEntity$get_month,
    set_month : nc$bs$oa$oama$ecm$calendarEntity$get_month,
    get_CalendarData : nc$bs$oa$oama$ecm$calendarEntity$get_CalendarData,
    set_CalendarData : nc$bs$oa$oama$ecm$calendarEntity$get_CalendarData,
    get_eventlist : nc$bs$oa$oama$ecm$calendarEntity$get_eventlist,
    set_eventlist : nc$bs$oa$oama$ecm$calendarEntity$get_eventlist
}
nc.bs.oa.oama.ecm.calendarEntity.registerClass('nc.bs.oa.oama.ecm.calendarEntity',UMP.UI.Mvc.Entity);
