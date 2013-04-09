function heidke_skill_score, tpn=intpn, fpn=infpn, tnn=intnn, fnn=infnn

a=float(intpn)
d=float(intnn)
b=float(infpn)
c=float(infnn)

n=a+b+c+d

;from http://www.swpc.noaa.gov/forecast_verification/Glossary.html#hit
e=((a+b)*(a+c)+(b+d)*(c+d))/n ;correct random true negatives + true positives
hss=(a+d-e)/(a+b+c+d-e)

;from Balch 2008 -> same as NOAA!
;e=((a+b)*(a+c)+(b+d)*(c+d))/n
;hss=(a+d-e)/(n-e)

;Omar 2011, same as NOAA!
;HSS= (2*((a*d)-(b*c))) / (((a+c)*(c+d)) + ((a+b)*(b+d)))
;HSS= (2*((TP*TN)-(FP*FN))) / (((TP+FN)*(FN+TN)) + ((TP+FP)*(FP+TN)))

;Leka & Barnes (2008) seem to use Wilks (1995) -> ALMOST the same as NOAA!!! WTF?!
;HSS=(a+d-(b+d))/(a+c)
;HSS=(TP+TN-(FP+TN))/(TP+FN)

;yu (2010) use jolliffe and stevenson 2003 ->SAME AS NOAA!!!
;pc=(a+d)/n
;e=(a+c)*(a+b)/(n^2.)+(d+b)*(d+c)/(n^2.)
;hss=(pc-e)/(1-e)
;n=tp+tn+fp+fn
;pc=(tp+tn)/n
;e=(tp+fn)*(tp+fp)/(n^2.)+(tn+fp)(tn+fn)/(n^2.)

return,hss

end