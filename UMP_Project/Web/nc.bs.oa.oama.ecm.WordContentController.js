Type.registerNamespace('nc.bs.oa.oama.ecm.WordContentController');
nc.bs.oa.oama.ecm.WordContentController = function() {}

function nc$bs$oa$oama$ecm$WordContentController$onDataLoad(ctx){
	var wordcontent = stringToJSON(ctx.params()["wordcontent"]);
	var url = wordcontent["url"];
	if (url) {
		$controls.set("webView", "url", decodeURIComponent(url));
	}
	ctx.load(wordcontent);
}

function nc$bs$oa$oama$ecm$WordContentController$initialize(ctx){}

nc.bs.oa.oama.ecm.WordContentController.prototype = {
    initialize : nc$bs$oa$oama$ecm$WordContentController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$WordContentController$onDataLoad
};
nc.bs.oa.oama.ecm.WordContentController.registerClass('nc.bs.oa.oama.ecm.WordContentController');
