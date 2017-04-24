Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.PersonInfo = function(id, entity, json) {
    //Step 1：call base method and initialize context object
    nc.bs.oa.oama.ecm.PersonInfo.initializeBase(this,[id, entity, json]);
    
}
function nc$bs$oa$oama$ecm$PersonInfo$get_flag(){
    return this.get('flag');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_flag(value){
    return this.set('flag',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_des(){
    return this.get('des');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_des(value){
    return this.set('des',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_name(){
    return this.get('name');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_name(value){
    return this.set('name',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_mobile(){
    return this.get('mobile');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_mobile(value){
    return this.set('mobile',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_work(){
    return this.get('work');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_work(value){
    return this.set('work',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_home(){
    return this.get('home');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_home(value){
    return this.set('home',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_email(){
    return this.get('email');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_email(value){
    return this.set('email',value);
}
function nc$bs$oa$oama$ecm$PersonInfo$get_type(){
    return this.get('type');
}
function nc$bs$oa$oama$ecm$PersonInfo$set_type(value){
    return this.set('type',value);
}
nc.bs.oa.oama.ecm.PersonInfo.prototype = {
    get_flag : nc$bs$oa$oama$ecm$PersonInfo$get_flag,
    set_flag : nc$bs$oa$oama$ecm$PersonInfo$get_flag,
    get_des : nc$bs$oa$oama$ecm$PersonInfo$get_des,
    set_des : nc$bs$oa$oama$ecm$PersonInfo$get_des,
    get_name : nc$bs$oa$oama$ecm$PersonInfo$get_name,
    set_name : nc$bs$oa$oama$ecm$PersonInfo$get_name,
    get_mobile : nc$bs$oa$oama$ecm$PersonInfo$get_mobile,
    set_mobile : nc$bs$oa$oama$ecm$PersonInfo$get_mobile,
    get_work : nc$bs$oa$oama$ecm$PersonInfo$get_work,
    set_work : nc$bs$oa$oama$ecm$PersonInfo$get_work,
    get_home : nc$bs$oa$oama$ecm$PersonInfo$get_home,
    set_home : nc$bs$oa$oama$ecm$PersonInfo$get_home,
    get_email : nc$bs$oa$oama$ecm$PersonInfo$get_email,
    set_email : nc$bs$oa$oama$ecm$PersonInfo$get_email,
    get_type : nc$bs$oa$oama$ecm$PersonInfo$get_type,
    set_type : nc$bs$oa$oama$ecm$PersonInfo$get_type
}
nc.bs.oa.oama.ecm.PersonInfo.registerClass('nc.bs.oa.oama.ecm.PersonInfo',UMP.UI.Mvc.Context);

