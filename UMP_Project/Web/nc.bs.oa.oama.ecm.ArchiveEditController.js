Type.registerNamespace('nc.bs.oa.oama.ecm.ArchiveEditController');
nc.bs.oa.oama.freeflow.ArchiveEditController = function() {}

function nc$bs$oa$oama$ecm$ArchiveEditController$onDataLoad(ctx){
	var archiveset = stringToJSON(ctx.params()["archiveset"]);
	ctx.load({"archiveset" : archiveset});
}

function nc$bs$oa$oama$freeflow$ArchiveEditController$initialize(ctx){}

nc.bs.oa.oama.freeflow.ArchiveEditController.prototype = {
    initialize : nc$bs$oa$oama$freeflow$ArchiveEditController$initialize,
    onDataLoad : nc$bs$oa$oama$freeflow$ArchiveEditController$onDataLoad
};
nc.bs.oa.oama.freeflow.ArchiveEditController.registerClass('nc.bs.oa.oama.freeflow.ArchiveEditController');
