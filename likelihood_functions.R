func0 = function(pars) {
p0 =  pars[1]
p1 = 1-p0
a1 = pars[2]
b1 = pars[2]
a2 = pars[3]
b2 = pars[3]
	if(a1 < 0 | b1 < 0 | a2 < 0 | b2 < 0 | p0 < 0 | p1 < 0) {
	return(NA)
	}
return(sum(log(p0 * dbetabinom.ab(x0,n0,a1,b1) + p1 * dbetabinom.ab(x0,n0,a2,b2))) + sum(log(p0 * dbetabinom.ab(x1,n1,a1,b1) + p1 * dbetabinom.ab(x1,n1,a2,b2))))
}

func1 = function(pars) {
p0 =  pars[1]
p1 = 1-p0
a1 = pars[2]
b1 = pars[2]
a2 = pars[3]
b2 = pars[3]
p2 = pars[4]
p3 = 1-p2
	if(a1 < 0 | b1 < 0 | a2 < 0 | b2 < 0 | p0 < 0 | p1 < 0 | p2 < 0 | p3 < 0) {
	return(NA)
	}
return(sum(log(p0 * dbetabinom.ab(x0,n0,a1,b1) + p1 * dbetabinom.ab(x0,n0,a2,b2))) + sum(log(p2 * dbetabinom.ab(x1,n1,a1,b1) + p3 * dbetabinom.ab(x1,n1,a2,b2))))
}
