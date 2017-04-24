Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.urgetaskdet = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.urgetaskdet.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_urgrontent(){
    return this.get('urgrontent');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_urgrontent(value){
    return this.set('urgrontent',value);
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_msg(){
    return this.get('msg');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_msg(value){
    return this.set('msg',value);
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_email(){
    return this.get('email');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_email(value){
    return this.set('email',value);
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_sms(){
    return this.get('sms');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_sms(value){
    return this.set('sms',value);
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_im(){
    return this.get('im');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_im(value){
    return this.set('im',value);
}
function nc$bs$oa$oama$ecm$urgetaskdet$get_push(){
    return this.get('push');
}
function nc$bs$oa$oama$ecm$urgetaskdet$set_push(value){
    return this.set('push',value);
}
nc.bs.oa.oama.ecm.urgetaskdet.prototype = {
    get_urgrontent : nc$bs$oa$oama$ecm$urgetaskdet$get_urgrontent,
    set_urgrontent : nc$bs$oa$oama$ecm$urgetaskdet$get_urgrontent,
    get_msg : nc$bs$oa$oama$ecm$urgetaskdet$get_msg,
    set_msg : nc$bs$oa$oama$ecm$urgetaskdet$get_msg,
    get_email : nc$bs$oa$oama$ecm$urgetaskdet$get_email,
    set_email : nc$bs$oa$oama$ecm$urgetaskdet$get_email,
    get_sms : nc$bs$oa$oama$ecm$urgetaskdet$get_sms,
    set_sms : nc$bs$oa$oama$ecm$urgetaskdet$get_sms,
    get_im : nc$bs$oa$oama$ecm$urgetaskdet$get_im,
    set_im : nc$bs$oa$oama$ecm$urgetaskdet$get_im,
    get_push : nc$bs$oa$oama$ecm$urgetaskdet$get_push,
    set_push : nc$bs$oa$oama$ecm$urgetaskdet$get_push
}
nc.bs.oa.oama.ecm.urgetaskdet.registerClass('nc.bs.oa.oama.ecm.urgetaskdet',UMP.UI.Mvc.Context);

