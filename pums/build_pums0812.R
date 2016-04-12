hh0812ca_ipums = read.csv("./ipums_csv/hh_apums0812_ca.csv", header = TRUE)
p0812ca_ipums = read.csv("./ipums_csv/p_apums0812_ca.csv", header = TRUE)





# q1 lt 30k
hh0812ca_ipums$q1 <- cut(hh0812ca_ipums$HHINCOME,
                    breaks=c(-Inf, 30000),
                    labels=c(1))
is.factor(hh0812ca_ipums$q1)


# annual housing cost
hh0812ca_ipums$cost <- (12 * hh0812ca_ipums$MORTAMT1) + (12 * hh0812ca_ipums$RENTGRS) 

hh0812ca_ipums$PROPINSR + hh0812ca_ipums$PROPTX99 
+  hh0812ca_ipums$COSTELEC + hh0812ca_ipums$COSTGAS + hh0812ca_ipums$COSTFUEL 


hhq1 <- subset(hh0812ca_ipums, q1 == 1, select = c(q1, HHINCOME, cost))

hhq1_pos <- subset(hhq1, HHINCOME > 0, select = c (HHINCOME, cost))
hhq1_pos$burden <- hhq1_pos$cost  / hhq1_pos$HHINCOME 
summary(hhq1_pos)

hhq1_burdened <- subset(hhq1_pos, hhq1_pos$burden >= .3)
