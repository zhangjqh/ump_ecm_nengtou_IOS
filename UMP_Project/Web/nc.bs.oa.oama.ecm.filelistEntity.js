Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.filelistEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.filelistEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "filelist", {"tag":"context","attributes":{"id":"filelist","iscascade":"false","from-type":"context","filter":""},"fields":{"attachment":{"tag":"fieldset","attributes":{"id":"attachment","child-field":"","iscascade":"false","relation":"n","fullclassname":"","from":"file","type":"string","parent-field":"","from-type":"context"},"fields":{"filesize":{"tag":"field","attributes":{"id":"filesize","type":"string"}},"filename":{"tag":"field","attributes":{"id":"filename","type":"string"}},"filetype":{"tag":"field","attributes":{"id":"filetype","type":"string"}},"fileid":{"tag":"field","attributes":{"id":"fileid","type":"string"}},"downflag":{"tag":"field","attributes":{"id":"downflag","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"},"listid":{"tag":"field","attributes":{"id":"listid","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$filelistEntity$get_listid(){
    return this.field('listid');
}
function nc$bs$oa$oama$ecm$filelistEntity$set_listid(value){
    return this.field('listid',value);
}
function nc$bs$oa$oama$ecm$filelistEntity$get_attachment(){
    return this.field('attachment');
}
function nc$bs$oa$oama$ecm$filelistEntity$set_attachment(value){
    return this.field('attachment',value);
}
nc.bs.oa.oama.ecm.filelistEntity.prototype = {
    get_listid : nc$bs$oa$oama$ecm$filelistEntity$get_listid,
    set_listid : nc$bs$oa$oama$ecm$filelistEntity$get_listid,
    get_attachment : nc$bs$oa$oama$ecm$filelistEntity$get_attachment,
    set_attachment : nc$bs$oa$oama$ecm$filelistEntity$get_attachment
}
nc.bs.oa.oama.ecm.filelistEntity.registerClass('nc.bs.oa.oama.ecm.filelistEntity',UMP.UI.Mvc.Entity);
