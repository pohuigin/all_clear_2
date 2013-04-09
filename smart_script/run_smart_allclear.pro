pro run_smart_allclear

fparam='smart_script/ar_param.txt'
fpath='/home/phiggins/projects/all_clear_2/'

ar_setup, ar_path=fpath, ar_param=fparam, $
	get=get, defvars=outvars, status=outstatus

params=ar_loadparam(fparam=fparamin, meta=outmeta, silent=insilent)

fhmi=!ar_path+'data/2011.03.08_06:00:00_TAI_401_new.fits'
mreadfits,fmdi,ind,dat
bdat=dat[*,*,0]
index2map,ind[0],bdat,bmap

;Run property modules
rotstr=ar_rotmagic(bdat, rsundeg=rsundeg, map=bmap, argstr=params, genparams=genparams, $
	docrop=docrop, noderot=noderot, $
	_extra=_extra,debug=debug, silent=insilent, error=err) 
	;arid=arid, plot=plot,outplot=outplot, outps=outps, ps=ps

stop





end
