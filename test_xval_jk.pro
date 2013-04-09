pro test_xval_jk

n=100

pred=randomu(seed,n)
occr=randomu(seed,n)

pred[where(pred gt 0.5)]=1
occr[where(occr gt 0.5)]=1
pred[where(pred le 0.5)]=0
occr[where(occr le 0.5)]=0

tp=n_elements(where(pred eq 1 and occr eq 1))
tn=n_elements(where(pred eq 0 and occr eq 0))
fp=n_elements(where(pred eq 1 and occr eq 0))
fn=n_elements(where(pred eq 0 and occr eq 1))

hss=heidke_skill_score(tpn=tp, fpn=fp, tnn=tn, fnn=fn)

print,'hss',hss
print,'tp,tn,fp,fn',[tp,tn,fp,fn]

;do jacknife, xval
;do jacknife
;do bootstrap
;do xval...


end
