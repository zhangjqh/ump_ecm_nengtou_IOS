Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reportlistEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.reportlistEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "reportlist", {"tag":"context","attributes":{"id":"reportlist","iscascade":"false","from-type":"context","filter":""},"fields":{"reporthistorylist":{"tag":"fieldset","attributes":{"id":"reporthistorylist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"reporthistorylist","type":"string","parent-field":"","from-type":"context"},"fields":{"repstatecode":{"tag":"field","attributes":{"id":"repstatecode","type":"string"}},"approvalmsg":{"tag":"field","attributes":{"id":"approvalmsg","type":"string"}},"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"time":{"tag":"field","attributes":{"id":"time","type":"string"}},"attachmentlist":{"tag":"fieldset","attributes":{"id":"attachmentlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"attachment","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"filetype":{"tag":"field","attributes":{"id":"filetype","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"relatedname":{"tag":"field","attributes":{"id":"relatedname","type":"string"}},"reportstate":{"tag":"field","attributes":{"id":"reportstate","type":"string"}},"completion":{"tag":"fieldset","attributes":{"id":"completion","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"completion","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"relatedname":{"tag":"field","attributes":{"id":"relatedname","type":"string"}},"reporttime":{"tag":"field","attributes":{"id":"reporttime","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"},"listid":{"tag":"field","attributes":{"id":"listid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$reportlistEntity$get_listid(){
    return this.field('listid');
}
function nc$bs$oa$oama$ecm$reportlistEntity$set_listid(value){
    return this.field('listid',value);
}
function nc$bs$oa$oama$ecm$reportlistEntity$get_reporthistorylist(){
    return this.field('reporthistorylist');
}
function nc$bs$oa$oama$ecm$reportlistEntity$set_reporthistorylist(value){
    return this.field('reporthistorylist',value);
}
nc.bs.oa.oama.ecm.reportlistEntity.prototype = {
    get_listid : nc$bs$oa$oama$ecm$reportlistEntity$get_listid,
    set_listid : nc$bs$oa$oama$ecm$reportlistEntity$get_listid,
    get_reporthistorylist : nc$bs$oa$oama$ecm$reportlistEntity$get_reporthistorylist,
    set_reporthistorylist : nc$bs$oa$oama$ecm$reportlistEntity$get_reporthistorylist
}
nc.bs.oa.oama.ecm.reportlistEntity.registerClass('nc.bs.oa.oama.ecm.reportlistEntity',UMP.UI.Mvc.Entity);
