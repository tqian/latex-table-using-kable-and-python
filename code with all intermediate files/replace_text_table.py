#!/usr/bin/env python3
import fileinput

f = open("table_tmp.txt",'r')
filedata = f.read()
f.close()

newdata = filedata
newdata = newdata.replace("est","Estimator")
newdata = newdata.replace("eif","Eff")
newdata = newdata.replace("wcls","WCLS")
newdata = newdata.replace("gee","GEE")

newdata = newdata.replace("ss","Sample size")
newdata = newdata.replace("bias","Bias")
newdata = newdata.replace("sd","SD")
newdata = newdata.replace("rmse","RMSE")
newdata = newdata.replace("cp.unadj","CP (unadj)")
newdata = newdata.replace("cp.adj","CP (adj)")

newdata = newdata.replace("beta0\_","")
newdata = newdata.replace("beta1\_","")

newdata = newdata.replace("beta0","$\\beta_0$")
newdata = newdata.replace("beta1","$\\beta_1$")

f = open("table_final.txt",'w')
f.write(newdata)
f.close()