Type.registerNamespace('nc.bs.oa.oama.ecm');
nc.bs.oa.oama.ecm.PersonInfoEntity = function(tag) {
    //Step 1：call base method and initialize the define of context
    nc.bs.oa.oama.ecm.PersonInfoEntity.initializeBase(this,[tag]);
    $um$initEntity(this, "PersonInfo", {"tag":"context","attributes":{"id":"PersonInfo","iscascade":"false","from-type":"context","filter":""},"fields":{"work":{"tag":"field","attributes":{"id":"work","type":"string"}},"home":{"tag":"field","attributes":{"id":"home","type":"string"}},"des":{"tag":"field","attributes":{"id":"des","type":"string"}},"flag":{"tag":"field","attributes":{"id":"flag","type":"string"}},"email":{"tag":"field","attributes":{"id":"email","type":"string"}},"name":{"tag":"field","attributes":{"id":"name","type":"string"}},"type":{"tag":"field","attributes":{"id":"type","type":"string"}},"mobile":{"tag":"field","attributes":{"id":"mobile","type":"string"}}},"namespace":"nc.bs.oa.oama.ecm"});
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_flag(){
    return this.field('flag');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_flag(value){
    return this.field('flag',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_des(){
    return this.field('des');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_des(value){
    return this.field('des',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_name(){
    return this.field('name');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_name(value){
    return this.field('name',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_mobile(){
    return this.field('mobile');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_mobile(value){
    return this.field('mobile',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_work(){
    return this.field('work');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_work(value){
    return this.field('work',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_home(){
    return this.field('home');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_home(value){
    return this.field('home',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_email(){
    return this.field('email');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_email(value){
    return this.field('email',value);
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$get_type(){
    return this.field('type');
}
function nc$bs$oa$oama$ecm$PersonInfoEntity$set_type(value){
    return this.field('type',value);
}
nc.bs.oa.oama.ecm.PersonInfoEntity.prototype = {
    get_flag : nc$bs$oa$oama$ecm$PersonInfoEntity$get_flag,
    set_flag : nc$bs$oa$oama$ecm$PersonInfoEntity$get_flag,
    get_des : nc$bs$oa$oama$ecm$PersonInfoEntity$get_des,
    set_des : nc$bs$oa$oama$ecm$PersonInfoEntity$get_des,
    get_name : nc$bs$oa$oama$ecm$PersonInfoEntity$get_name,
    set_name : nc$bs$oa$oama$ecm$PersonInfoEntity$get_name,
    get_mobile : nc$bs$oa$oama$ecm$PersonInfoEntity$get_mobile,
    set_mobile : nc$bs$oa$oama$ecm$PersonInfoEntity$get_mobile,
    get_work : nc$bs$oa$oama$ecm$PersonInfoEntity$get_work,
    set_work : nc$bs$oa$oama$ecm$PersonInfoEntity$get_work,
    get_home : nc$bs$oa$oama$ecm$PersonInfoEntity$get_home,
    set_home : nc$bs$oa$oama$ecm$PersonInfoEntity$get_home,
    get_email : nc$bs$oa$oama$ecm$PersonInfoEntity$get_email,
    set_email : nc$bs$oa$oama$ecm$PersonInfoEntity$get_email,
    get_type : nc$bs$oa$oama$ecm$PersonInfoEntity$get_type,
    set_type : nc$bs$oa$oama$ecm$PersonInfoEntity$get_type
}
nc.bs.oa.oama.ecm.PersonInfoEntity.registerClass('nc.bs.oa.oama.ecm.PersonInfoEntity',UMP.UI.Mvc.Entity);
