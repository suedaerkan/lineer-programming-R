# "IpSolve" package yükle
library (lpSolve)

# maliyet matrixi kur
maliyet <- matrix(c(32,60,200,40,68,80,120,104,60), ncol = 3, byrow = TRUE)
maliyet

#kısıtları gir
site.signs <- rep("<=",3)
sitekapasitesi <- c(20,30,45)
sawmill.signs <- rep(">=", 3)
sawmilldemand <- c(30,35,30)

#modeli çözümle
lptrans <- lp.transport(maliyet, "min", site.signs, sitekapasitesi,
                        sawmill.signs, sawmilldemand )
lptrans$status
lptrans$solution
lptrans$objval
