Type.registerNamespace('nc.bs.oa.oama.ecm.ArchiveScanController');
nc.bs.oa.oama.freeflow.ArchiveScanController = function() {}

function nc$bs$oa$oama$ecm$ArchiveScanController$onDataLoad(ctx){
	var archiveset = stringToJSON(ctx.params()["archiveset"]);
	ctx.load({"archiveset" : archiveset});
}

function nc$bs$oa$oama$ecm$ArchiveScanController$initialize(ctx){}

nc.bs.oa.oama.freeflow.ArchiveScanController.prototype = {
    initialize : nc$bs$oa$oama$ecm$ArchiveScanController$initialize,
    onDataLoad : nc$bs$oa$oama$ecm$ArchiveScanController$onDataLoad
};
nc.bs.oa.oama.freeflow.ArchiveScanController.registerClass('nc.bs.oa.oama.freeflow.ArchiveScanController');
