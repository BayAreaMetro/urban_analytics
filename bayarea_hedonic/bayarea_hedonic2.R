rf_raw = read.csv("./data/recent_housingsales_rf_1314_tazsub.csv", header = TRUE)
rstr_raw = read.csv("./data/rastersamp10.txt", header = TRUE)
#inflation = read.csv("inflation_cycle_adjust.csv", header = TRUE)

ls10_mandatory = read.csv("./data/mandatoryAccessibilities10.txt", header = TRUE)
ls10_nonmandatory = read.csv("./data/mandatoryAccessibilities10.txt", header = TRUE)
#ls05_mandatory = read.csv("./data/2005_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
#ls05_nonmandatory = read.csv("./data/2005_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
#ls00_mandatory = read.csv("./data/2000_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
#ls00_nonmandatory = read.csv("./data/2000_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)


rf_c <- subset(rf_raw, Saleyear > 2012 & YearBuilt > 0 & Sqft > 0 & taz_key > 0, select = c(LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, taz_sub, OBJECTID))
rstr_c <- subset(rstr_raw, NC10_901 > 0, select = c(HOUSING_SALES_RE, NC10_901, CNICEVEG_1KM, COASTDIS, HUD2K1, LYONSTEPSDIS, MAJRDDIS, MEDINC2K_K1, OPEN10KM, OPEN1KM, OPEN2POINT5KM, OPEN500M, OPEN5KM, STATIONDIS, VIEW_WSW1))
#infl <- subset(inflation, saleyear > 1990)

#homes_a <- merge (x = rf_c, y = rstr_c, by.x = "OBJECTID", by.y = "HOUSING_SALES_RE") 
homes <- merge (x = rf_c, y = ls10_mandatory, by.x = "taz_sub", by.y = "taz_sub", all.x = TRUE) 
#homes <- merge (x = redfin_sub, y = infl, by.x = "Saleyear", by.y = "saleyear") 



# add county var and then use below to do appropriate transform by county
#if(client=='private'){
#  tot.price <- net.price * 1.12
#} else if(client=='public'){
#  tot.price <- net.price * 1.06
#} else {
#  tot.price <- net.price
#}


#homes$price_cpi <- homes$LastSalePr * homes$adjcpi2010 /100000
#homes$price_hpi <- homes$LastSalePr * homes$adjHPIsfrsmt /100000

homes$logprpersqft <-  log(homes$LastSalePr / homes$Sqft)
#homes$price <- homes$LastSalePr / 100000
homes$juriscat <- ifelse(homes$City == "San Francisco", c("SF"), c("Not SF")) 
#(tmp <- yes; tmp[!test] <- no[!test]; tmp) 


attach(homes)
homes$agecat[YearBuilt >= 2008] <- "Recent"
homes$agecat[YearBuilt < 1945] <- "Historic"
homes$agecat[YearBuilt >= 1945 & YearBuilt < 2008] <- "PostWar"
detach(homes)


#attach(homes)
#homes$juriscat[City = "San Francisco"] <- "SF"
#homes$juriscat[City != "San Francisco"] <- "Not SF"
#detach(homes)

homes_c <- subset(homes, logprpersqft > 0)

hed1 <- lm(logprpersqft ~ Sqft + agecat + highInc_autos_ge_workers , data=homes_c)
summary(hed1)



