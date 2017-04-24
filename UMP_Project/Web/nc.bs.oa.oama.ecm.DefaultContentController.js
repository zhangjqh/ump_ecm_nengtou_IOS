Type.registerNamespace('nc.bs.oa.oama.ecm.DefaultContentController');
nc.bs.oa.oama.ecm.DefaultContentController = function() {}

function nc$bs$oa$oama$ecm$DefaultContentController$onDataLoad(ctx){
	var defaultcontent = stringToJSON(ctx.params()["defaultcontent"]);
	var url = defaultcontent["url"];
	if (url){
		$controls.set("webView", "url", decodeURIComponent(url));
	}
	ctx.load(defaultcontent);
}

function nc$bs$oa$oama$ecm$DefaultContentController$initialize(ctx){}

nc.bs.oa.oama.ecm.DefaultContentController.prototype = {
    initialize : nc$bs$oa$oama$ecm$DefaultContentController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$DefaultContentController$onDataLoad
};
nc.bs.oa.oama.ecm.DefaultContentController.registerClass('nc.bs.oa.oama.ecm.DefaultContentController');
