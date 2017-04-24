Type.registerNamespace('nc.bs.oa.oama.ecm.psnDetailController');
var TSCACHEKEY = "OAADDRTSCACHE";
var PHOTOCACHEKEY = "OAADDRPHOTOCACHE";
var RECENTCACHEKEY = "OAADDRRECENTCACHE";
nc.bs.oa.oama.ecm.psnDetailController = function() {}

function nc$bs$oa$oama$ecm$psnDetailController$initialize(ctx){
    //your logic code below...
    //demo code : var companyEnity = ctx.entity();
    //demo code : var departmentEntity = companyEnity.field("depts");
    //demo code : var employeeEntity = departmentEntity.get("empls");
    //demo code : companyEnity.attachEvent("onchange", "name", onchange_handler1);
    //demo code : departmentEntity.attachEvent("onchange", "dname", onchange_handler2);
    //demo code : employeeEntity.attachEvent("onchange", "ename", onchange_handler3);
    //yon can attach event on the entity object...
    
}
function nc$bs$oa$oama$ecm$psnDetailController$UMonInit(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnDetailController$UMonLoad(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnDetailController$UMonUnload(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnDetailController$UMonComplete(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnDetailController$UMonDataBinding(ctx){
    //your logic code below...
    //you can get the current context by $context or the parameter[ctx]
    //demo code : $context.get("a")
    //demo code : $context.get("cust").get("ca")
    //demo code : $context.get("lines").get(0,"la")
    //demo code : $context.get("lines").get(0,"details").get(0,"da")

}
function nc$bs$oa$oama$ecm$psnDetailController$detailOnload(ctx){
	var param = ctx.params();
	var row=stringToJSON(param["row"]);
	var type = param["type"];
	var psnid = "";
	if(type=='nav'){
		psnid = row["navid"];
	}else{
		psnid = row["psnid"];
	}
	var psnjobid = row["psnjobid"];
	var args = {
		"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
		"action":"getPsnByid",
		"callback":"cacheDetail", 
		"psnid":psnid,
		"psnjobid":psnjobid
	};
	UM_NativeCall.callService("UMService.callAction",jsonToString(args));
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$psnDetailController$cacheDetail(ctx){
    var param = ctx.params();
    var row = stringToJSON(param["row"]);
	var userid = param["userid"];
	//头像缓存以及TS判断
	var psnid = ctx.get("psnid");
	if(psnid){
		if(param["groupid"] != ctx.get("pk_group")){
			var params = {
				"id" : "roundimgdiv1",
				"display" : "none"
			};
			UM_NativeCall.callService("UMJS.setProperty",jsonToString(params));
		}
		var ts = ctx.get("ts");
		var psnTs = stringToJSON($cache.readFile(TSCACHEKEY)) || {};
        if((psnTs && psnTs[psnid] && (ts == psnTs[psnid]))){
            var psnPhotos = stringToJSON($cache.readFile(PHOTOCACHEKEY)) || {};
            if(psnPhotos[psnid]){
                ctx.set("photo", psnPhotos[psnid]);
            } else {
                var sex = row.sex;
                if(sex=="2"){
                    ctx.set("photo", "oaadl_female_def_photo.png");
                }else{
                    ctx.set("photo", "oaadl_male_def_photo.png");
                }
            }
	    }else{
			var params = {
				"viewid":"nc.bs.oa.oama.addresslist.PsnListExtendController",
				"action":"getPhotoByPsnid",
				"callback":"noCache", 
				"psnid":psnid,
				"index":"0",
				"contextmapping":"tmpImg",
				"sync":"false"
			};
	    	UM_NativeCall.callService("UMService.callAction",jsonToString(params), false);
	    	ctx.dispose();
	    }
    		
		// 处理最近查看
		row["tmpImg"]="";
		row["content"]="";
		row["parameter"]="";
		var recentList = stringToJSON($cache.readFile(RECENTCACHEKEY + userid)) || [];
		for(var i=0;i<recentList.length;i++){
			if(recentList[i]["psnid"]==row["psnid"] && recentList[i]["psnjobid"]==row["psnjobid"]){
				recentList.splice(i, 1); // 重复的删除
				break;
			}
		}
		recentList.unshift(row); // 当前人置顶
		$cache.writeFile(RECENTCACHEKEY + userid, jsonToString(recentList));
	}else{
		alert($res.getResString("addr_oaadl_0028"));
		var oldrow=stringToJSON(param["oldrow"]);
		var oldpsnid = "nav" == param["oldtype"] ? oldrow["navid"] : oldrow["psnid"];
		var oldpsnjobid = oldrow["psnjobid"];
		var recentList = stringToJSON($cache.readFile(RECENTCACHEKEY + userid)) || [];
		if(recentList&&recentList!=null&&recentList!=""){
			for(var i=0;i<recentList.length;i++){
				if(recentList[i]["psnid"]==oldpsnid && recentList[i]["psnjobid"]==oldpsnjobid){
					recentList.splice(i, 1); // 删除最近查看记录
					$cache.writeFile(RECENTCACHEKEY + userid, jsonToString(recentList));
					break;
				}
			}
		}
		_$sys.callAction('onBack')
	}
}
//缓存头像(启用之前弃用方法，名称就不要纠结了)
function nc$bs$oa$oama$ecm$psnDetailController$noCache(ctx){
	var psnid = ctx.get("psnid");
   
    // 处理头像
    var photo = ctx.get("tmpImg")["photo"];
    if(photo){
    	var psnPhotos = stringToJSON($cache.readFile(PHOTOCACHEKEY)) || {};
	    psnPhotos[psnid] = photo; // 有则覆盖，无则添加 
	    $cache.writeFile(PHOTOCACHEKEY, jsonToString(psnPhotos));
		ctx.set("photo", photo);
    } else {
    	var sex = ctx.get("sex");
		if(sex=="2"){
			ctx.set("photo", "oaadl_female_def_photo.png");
		}else{
			ctx.set("photo", "oaadl_male_def_photo.png");
		}
    }
    
    // 处理时间戳
    var ts = ctx.get("ts");
    if(ts){
    	var psnTs = stringToJSON($cache.readFile(TSCACHEKEY)) || {};
		psnTs[psnid] = ts; // 有则覆盖，无则添加 
	    $cache.writeFile(TSCACHEKEY, jsonToString(psnTs));
    }
}
function nc$bs$oa$oama$ecm$psnDetailController$saveContacts(ctx){
    
	var tel = $context.get("mobileno");
	var officetel = $context.get("officephone");
	var employeename = $context.get("name");
	var jobname = $context.get("job");
	var orgname = $context.get("dept");
	var email = $context.get("email");
	var address = "";
	var args = {
		"tel":tel,
		"officetel":officetel,
		"employeename":employeename,
		"jobname":jobname,
		"orgname":orgname,
		"email":email,
		"address":address
	};
	UM_NativeCall.callService("UMDevice.saveContact",jsonToString(args));
	//UM_NativeCall.callService("UMDevice.saveContact","{tel:'"+tel+"',officetel:'"+officetel+"',employeename:'"+employeename+"',jobname:'"+jobname+"',orgname:'"+orgname+"',email:'"+email+"',adress:'"+adress+"'}");
	ctx.dispose();
}
function nc$bs$oa$oama$ecm$psnDetailController$forwardCard(ctx){
	//var name = $context.get("persons").get("name");
	//var mobileNo = $context.get("persons").get("mobileno");
	//var officePhone = $context.get("persons").get("officephone");
	//var email = $context.get("persons").get("email");
	var name = $context.get("name");
	var mobileNo = $context.get("mobileno");
	var officePhone = $context.get("officephone");
	var email = $context.get("email");
	var card = ""+$res.getResString("addr_oaadl_0020")+""+name+"\n"+$res.getResString("addr_oaadl_0021")+""+mobileNo+"\n"+$res.getResString("addr_oaadl_0022")+""+officePhone+"\n"+$res.getResString("addr_oaadl_0023")+""+email;
	var args = {
		"tel":"",
		"body":card
	};
	UM_NativeCall.callService("UMDevice.sendMessage",jsonToString(args));
	//UM_NativeCall.callService("UMDevice.sendMessage","{receive:'"+mobileNo+"',message:'"+card+"'}");
	ctx.dispose();
}
nc.bs.oa.oama.ecm.psnDetailController.prototype = {
    initialize : nc$bs$oa$oama$ecm$psnDetailController$initialize,
    UMonInit : nc$bs$oa$oama$ecm$psnDetailController$UMonInit,
    UMonLoad : nc$bs$oa$oama$ecm$psnDetailController$UMonLoad,
    UMonUnload : nc$bs$oa$oama$ecm$psnDetailController$UMonUnload,
    UMonComplete : nc$bs$oa$oama$ecm$psnDetailController$UMonComplete,
    UMonDataBinding : nc$bs$oa$oama$ecm$psnDetailController$UMonDataBinding,
    detailOnload : nc$bs$oa$oama$ecm$psnDetailController$detailOnload,
    saveContacts : nc$bs$oa$oama$ecm$psnDetailController$saveContacts,
    forwardCard : nc$bs$oa$oama$ecm$psnDetailController$forwardCard,
    noCache : nc$bs$oa$oama$ecm$psnDetailController$noCache,
    cacheDetail : nc$bs$oa$oama$ecm$psnDetailController$cacheDetail
};
nc.bs.oa.oama.ecm.psnDetailController.registerClass('nc.bs.oa.oama.ecm.psnDetailController');
