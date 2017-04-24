Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.urgetaskdetEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.urgetaskdetEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "urgetaskdet", {"tag":"context","attributes":{"id":"urgetaskdet","iscascade":"false","from-type":"context","filter":""},"fields":{"urgrontent":{"tag":"field","attributes":{"id":"urgrontent","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"im":{"tag":"field","attributes":{"id":"im","type":"string"}},"sms":{"tag":"field","attributes":{"id":"sms","type":"string"}},"msg":{"tag":"field","attributes":{"id":"msg","type":"string"}},"push":{"tag":"field","attributes":{"id":"push","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_urgrontent(){
    return this.field('urgrontent');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_urgrontent(value){
    return this.field('urgrontent',value);
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_msg(){
    return this.field('msg');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_msg(value){
    return this.field('msg',value);
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_email(){
    return this.field('email');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_email(value){
    return this.field('email',value);
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_sms(){
    return this.field('sms');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_sms(value){
    return this.field('sms',value);
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_im(){
    return this.field('im');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_im(value){
    return this.field('im',value);
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$get_push(){
    return this.field('push');
}
function nc$bs$oa$oama$ecm$urgetaskdetEntity$set_push(value){
    return this.field('push',value);
}
nc.bs.oa.oama.ecm.urgetaskdetEntity.prototype = {
    get_urgrontent : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_urgrontent,
    set_urgrontent : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_urgrontent,
    get_msg : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_msg,
    set_msg : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_msg,
    get_email : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_email,
    set_email : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_email,
    get_sms : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_sms,
    set_sms : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_sms,
    get_im : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_im,
    set_im : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_im,
    get_push : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_push,
    set_push : nc$bs$oa$oama$ecm$urgetaskdetEntity$get_push
}
nc.bs.oa.oama.ecm.urgetaskdetEntity.registerClass('nc.bs.oa.oama.ecm.urgetaskdetEntity',UMP.UI.Mvc.Entity);
