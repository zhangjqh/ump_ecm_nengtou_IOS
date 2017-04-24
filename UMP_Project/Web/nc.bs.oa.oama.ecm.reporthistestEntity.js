Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.reporthistestEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.reporthistestEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "reporthistest", {"tag":"context","attributes":{"id":"reporthistest","iscascade":"false","from-type":"context","filter":""},"fields":{"reporthisList":{"tag":"fieldset","attributes":{"id":"reporthisList","child-field":"","iscascade":"false","relation":"1","fullclassname":"","from":"reporthistorylist","type":"string","parent-field":"","from-type":"context"},"fields":{"reporthistory":{"tag":"fieldset","attributes":{"id":"reporthistory","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"reportdetail","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"repstatecode":{"tag":"field","attributes":{"id":"repstatecode","type":"string"}},"approvalmsg":{"tag":"field","attributes":{"id":"approvalmsg","type":"string"}},"taskschedule":{"tag":"field","attributes":{"id":"taskschedule","type":"string"}},"time":{"tag":"field","attributes":{"id":"time","type":"string"}},"attachmentlist":{"tag":"fieldset","attributes":{"id":"attachmentlist","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"attachment","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"filetype":{"tag":"field","attributes":{"id":"filetype","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"taskstate":{"tag":"field","attributes":{"id":"taskstate","type":"string"}},"relatedname":{"tag":"field","attributes":{"id":"relatedname","type":"string"}},"reportstate":{"tag":"field","attributes":{"id":"reportstate","type":"string"}},"completion":{"tag":"fieldset","attributes":{"id":"completion","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"completion","type":"fieldset","parent-field":"","from-type":"context"},"fields":{"content":{"tag":"field","attributes":{"id":"content","type":"string"}},"relatedname":{"tag":"field","attributes":{"id":"relatedname","type":"string"}},"reporttime":{"tag":"field","attributes":{"id":"reporttime","type":"string"}},"taskcomment":{"tag":"field","attributes":{"id":"taskcomment","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$reporthistestEntity$get_reporthisList(){
    return this.field('reporthisList');
}
function nc$bs$oa$oama$ecm$reporthistestEntity$set_reporthisList(value){
    return this.field('reporthisList',value);
}
nc.bs.oa.oama.ecm.reporthistestEntity.prototype = {
    get_reporthisList : nc$bs$oa$oama$ecm$reporthistestEntity$get_reporthisList,
    set_reporthisList : nc$bs$oa$oama$ecm$reporthistestEntity$get_reporthisList
}
nc.bs.oa.oama.ecm.reporthistestEntity.registerClass('nc.bs.oa.oama.ecm.reporthistestEntity',UMP.UI.Mvc.Entity);
