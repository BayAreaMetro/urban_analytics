hh0812ca_ipums = read.csv("./ipums_csv/hh_apums0812_ca.csv", header = TRUE)
p0812ca_ipums = read.csv("./ipums_csv/p_apums0812_ca.csv", header = TRUE)

# PUMA in bay area
hh0812ba_ipums <- subset(hh0812ca_ipums, (PUMA >= 101 & PUMA <=110) | (PUMA >= 1301 & PUMA <=1309) | (PUMA >= 4101 & PUMA <=4102) | (PUMA >= 7501 & PUMA <=7507) | (PUMA >= 8101 & PUMA <=8106) | (PUMA >= 8501 & PUMA <=8514) | (PUMA >= 9501 & PUMA <=9503) | (PUMA >= 9701 & PUMA <=9703) | (PUMA >5400 & PUMA < 5600), select = c (HHINCOME, MORTAMT1, RENTGRS))


101-110
1301-1309
4101-4102
5500
7501-7507
8101-8106
8501-8514
9501-9503
9701-9703




# q12 lt 60k 1999 dollars
hh0812ba_ipums$q12 <- cut(hh0812ba_ipums$HHINCOME,
                    breaks=c(-Inf, 82686.91),
                    labels=c(1))
is.factor(hh0812ba_ipums$q12)


# annual housing cost
hh0812ba_ipums$cost <- (12 * hh0812ba_ipums$MORTAMT1) + (12 * hh0812ba_ipums$RENTGRS) 

hh0812a_ipums$PROPINSR + hh0812ca_ipums$PROPTX99 
+  hh0812ca_ipums$COSTELEC + hh0812ca_ipums$COSTGAS + hh0812ca_ipums$COSTFUEL 


hhq12 <- subset(hh0812ba_ipums, q12 == 1, select = c(q12, HHINCOME, cost))
hhq12$cost40 <- hhq12$cost  * 1.45 


hhq12_pos <- subset(hhq12, HHINCOME > 0, select = c (HHINCOME, cost, cost40))
hhq12_pos$burden <- hhq12_pos$cost  / hhq12_pos$HHINCOME 
hhq12_pos$burden40 <- hhq12_pos$cost40  / hhq12_pos$HHINCOME 
summary(hhq12_pos)

hh12_clean <- subset(hhq12_pos, burden <= 1, select = c (HHINCOME, cost, cost40, burden, burden40))
summary(hh12_clean)


# want around 70% cause that's the share in market 274018
hhq_priv <- subset(hh12_clean, hh12_clean$HHINCOME > 24499, select = c (HHINCOME, cost, cost40, burden, burden40))
summary(hhq_priv)

hhq_sub <- subset(hh12_clean, hh12_clean$HHINCOME <= 24499, select = c (HHINCOME, cost, cost40, burden, burden40))
summary(hhq_sub)

hhq_match <- subset(hh12_clean, hh12_clean$HHINCOME > 0, select = c (HHINCOME, cost, cost40, burden, burden40))
summary(hhq_match)


# 2005 q1 and q2 is less than 74,058 in 2005$

hh05ca_ipums = read.csv("./ipums_csv/hh_apums0812_ca.csv", header = TRUE)

hh0812ca_ipums$q12 <- cut(hh0812ca_ipums$HHINCOME,
                          breaks=c(-Inf, 82686.91),
                          labels=c(1))
is.factor(hh0812ca_ipums$q12)

hh0812ca_ipums$cost <- (12 * hh0812ca_ipums$MORTAMT1) + (12 * hh0812ca_ipums$RENTGRS)

hhq12_pos <- subset(hhq12, HHINCOME > 0, select = c (HHINCOME, cost, cost40))
hhq12_pos$burden <- hhq12_pos$cost  / hhq12_pos$HHINCOME 
hhq12_pos$burden40 <- hhq12_pos$cost40  / hhq12_pos$HHINCOME 
summary(hhq12_pos)

hh12_clean <- subset(hhq12_pos, burden < 2, select = c (HHINCOME, cost, cost40, burden, burden40))
summary(hh12_clean)
