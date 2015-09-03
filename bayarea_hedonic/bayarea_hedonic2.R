rf_raw = read.csv("./data/recent_housingsales_rf_1314_tazsub.csv", header = TRUE)
rstr_raw = read.csv("./data/rastersamp12.txt", header = TRUE)
market_segs = read.csv("./data/accessibility-market-segments.csv", header = TRUE)
crime = read.csv("./data/crimerates.csv", header = TRUE)


#inflation = read.csv("inflation_cycle_adjust.csv", header = TRUE)

ls10_mandatory = read.csv("./data/mandatoryAccessibilities10.txt", header = TRUE)
ls10_nonMandatory = read.csv("./data/nonMandatoryAccessibilities10.txt", header = TRUE)
#ls05_mandatory = read.csv("./data/2005_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
#ls05_nonmandatory = read.csv("./data/2005_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
#ls00_mandatory = read.csv("./data/2000_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
#ls00_nonmandatory = read.csv("./data/2000_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)

# (logsum_value - thatColumnMinLogsumValue) / in-vehicle time coef
# 0.0134 mandatory in-vehicle time coef
# 0.0175 non-mandatory in-vehicle time coef

market_segs$proportion <- market_segs$households / 2732722

ls10_mandatory$lowInc_0_autos_t <- (ls10_mandatory$lowInc_0_autos - min(ls10_mandatory$lowInc_0_autos)) / 0.0134
ls10_mandatory$lowInc_autos_lt_workers_t <- (ls10_mandatory$lowInc_autos_lt_workers - min(ls10_mandatory$lowInc_autos_lt_workers)) / 0.0134
ls10_mandatory$lowInc_autos_ge_workers_t <- (ls10_mandatory$lowInc_autos_ge_workers - min(ls10_mandatory$lowInc_autos_ge_workers)) / 0.0134
ls10_mandatory$medInc_0_autos_t <- (ls10_mandatory$medInc_0_autos - min(ls10_mandatory$medInc_0_autos)) / 0.0134
ls10_mandatory$medInc_autos_lt_workers_t <- (ls10_mandatory$medInc_autos_lt_workers - min(ls10_mandatory$medInc_autos_lt_workers)) / 0.0134
ls10_mandatory$medInc_autos_ge_workers_t <- (ls10_mandatory$medInc_autos_ge_workers - min(ls10_mandatory$medInc_autos_ge_workers)) / 0.0134
ls10_mandatory$highInc_0_autos_t <- (ls10_mandatory$highInc_0_autos - min(ls10_mandatory$highInc_0_autos)) / 0.0134
ls10_mandatory$highInc_autos_lt_workers_t <- (ls10_mandatory$highInc_autos_lt_workers - min(ls10_mandatory$highInc_autos_lt_workers)) / 0.0134
ls10_mandatory$highInc_autos_ge_workers_t <- (ls10_mandatory$highInc_autos_ge_workers - min(ls10_mandatory$highInc_autos_ge_workers)) / 0.0134
ls10_mandatory$veryHighInc_0_autos_t <- (ls10_mandatory$veryHighInc_0_autos - min(ls10_mandatory$veryHighInc_0_autos)) / 0.0134
ls10_mandatory$veryHighInc_autos_lt_workers_t <- (ls10_mandatory$veryHighInc_autos_lt_workers - min(ls10_mandatory$veryHighInc_autos_lt_workers)) / 0.0134
ls10_mandatory$veryHighInc_autos_ge_workers_t <- (ls10_mandatory$veryHighInc_autos_ge_workers - min(ls10_mandatory$veryHighInc_autos_ge_workers)) / 0.0134

ls10_mandatory$mwt <- 0.061 * ls10_mandatory$lowInc_0_autos_t + 0.005 * ls10_mandatory$lowInc_autos_lt_workers_t + 0.211 * ls10_mandatory$lowInc_autos_ge_workers_t + 0.016 * ls10_mandatory$medInc_0_autos_t + 0.013 * ls10_mandatory$medInc_autos_lt_workers_t + 0.204 * ls10_mandatory$medInc_autos_ge_workers_t + 0.009 * ls10_mandatory$highInc_0_autos_t + 0.020 * ls10_mandatory$highInc_autos_lt_workers_t + 0.208 * ls10_mandatory$highInc_autos_ge_workers_t + 0.007 * ls10_mandatory$veryHighInc_0_autos_t + 0.026 * ls10_mandatory$veryHighInc_autos_lt_workers_t + 0.220 * ls10_mandatory$veryHighInc_autos_ge_workers_t 

ls10_nonMandatory$lowInc_0_autos_tn <- (ls10_nonMandatory$lowInc_0_autos - min(ls10_nonMandatory$lowInc_0_autos)) / 0.0134
ls10_nonMandatory$lowInc_autos_lt_workers_tn <- (ls10_nonMandatory$lowInc_autos_lt_workers - min(ls10_nonMandatory$lowInc_autos_lt_workers)) / 0.0134
ls10_nonMandatory$lowInc_autos_ge_workers_tn <- (ls10_nonMandatory$lowInc_autos_ge_workers - min(ls10_nonMandatory$lowInc_autos_ge_workers)) / 0.0134
ls10_nonMandatory$medInc_0_autos_tn <- (ls10_nonMandatory$medInc_0_autos - min(ls10_nonMandatory$medInc_0_autos)) / 0.0134
ls10_nonMandatory$medInc_autos_lt_workers_tn <- (ls10_nonMandatory$medInc_autos_lt_workers - min(ls10_nonMandatory$medInc_autos_lt_workers)) / 0.0134
ls10_nonMandatory$medInc_autos_ge_workers_tn <- (ls10_nonMandatory$medInc_autos_ge_workers - min(ls10_nonMandatory$medInc_autos_ge_workers)) / 0.0134
ls10_nonMandatory$highInc_0_autos_tn <- (ls10_nonMandatory$highInc_0_autos - min(ls10_nonMandatory$highInc_0_autos)) / 0.0134
ls10_nonMandatory$highInc_autos_lt_workers_tn <- (ls10_nonMandatory$highInc_autos_lt_workers - min(ls10_nonMandatory$highInc_autos_lt_workers)) / 0.0134
ls10_nonMandatory$highInc_autos_ge_workers_tn <- (ls10_nonMandatory$highInc_autos_ge_workers - min(ls10_nonMandatory$highInc_autos_ge_workers)) / 0.0134
ls10_nonMandatory$veryHighInc_0_autos_tn <- (ls10_nonMandatory$veryHighInc_0_autos - min(ls10_nonMandatory$veryHighInc_0_autos)) / 0.0134
ls10_nonMandatory$veryHighInc_autos_lt_workers_tn <- (ls10_nonMandatory$veryHighInc_autos_lt_workers - min(ls10_nonMandatory$veryHighInc_autos_lt_workers)) / 0.0134
ls10_nonMandatory$veryHighInc_autos_ge_workers_tn <- (ls10_nonMandatory$veryHighInc_autos_ge_workers - min(ls10_nonMandatory$veryHighInc_autos_ge_workers)) / 0.0134

ls10_nonMandatory$nwt <- 0.061 * ls10_nonMandatory$lowInc_0_autos_tn + 0.005 * ls10_nonMandatory$lowInc_autos_lt_workers_tn + 0.211 * ls10_nonMandatory$lowInc_autos_ge_workers_tn + 0.016 * ls10_nonMandatory$medInc_0_autos_tn + 0.013 * ls10_nonMandatory$medInc_autos_lt_workers_tn + 0.204 * ls10_nonMandatory$medInc_autos_ge_workers_tn + 0.009 * ls10_nonMandatory$highInc_0_autos_tn + 0.020 * ls10_nonMandatory$highInc_autos_lt_workers_tn + 0.208 * ls10_nonMandatory$highInc_autos_ge_workers_tn + 0.007 * ls10_nonMandatory$veryHighInc_0_autos_tn + 0.026 * ls10_nonMandatory$veryHighInc_autos_lt_workers_tn + 0.220 * ls10_nonMandatory$veryHighInc_autos_ge_workers_tn 

summary(rf_raw)
rf_raw$lot <- rf_raw$LotSize / 1

levels(rf_raw$HomeType)

rf_c <- subset(rf_raw, Baths > 0 &Saleyear > 2012 & YearBuilt > 0 & Sqft > 0 & taz_key > 0, select = c(HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, Latitude, Longitude, OBJECTID))


#rf_c <- subset(rf_raw, HomeType = c("Condo/Coop") &Saleyear > 2012 & YearBuilt > 0 & Sqft > 0 & taz_key > 0, select = c(HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, Latitude, Longitude, OBJECTID))
rf_c <- subset(rf_raw, HomeType = c("Condo/Coop", "Single Family Residential", "Townhouse") & LotSize > 0 & Saleyear > 2012 & YearBuilt > 0 & Sqft > 0 & taz_key > 0 & LotSize > 0 , select = c(HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, Latitude, Longitude, OBJECTID))
rstr_c <- subset(rstr_raw, NC10_901 > 0, select = c(HOUSING_SALES_RE, NC10_901, COASTDIS, HUD2K1, HUD2K_5KMISH, LYONSTEPSDIS, MAJRDDIS, KMTOPA, MEDINC2K_K1, OCEANVIEW, OPEN10KM, OPEN1KM, OPEN2POINT5KM, OPEN500M, OPEN5KM, STATIONDIS, BARTDIS, VIEW_WSW1))
#infl <- subset(inflation, saleyear > 1990)

homes_raster <- merge (x = rf_c, y = rstr_c, by.x = "OBJECTID", by.y = "HOUSING_SALES_RE") 
homes_a <- merge (x = homes_raster, y = crime, by.x = "City", by.y = "City") 

homes_b <- merge (x = homes_a, y = ls10_mandatory, by.x = "taz_sub", by.y = "taz_sub", all.x = TRUE) 
homes <- merge (x = homes_b, y = ls10_nonMandatory, by.x = "taz_sub", by.y = "taz_sub", all.x = TRUE) 

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
homes$price <- homes$LastSalePr / 100000
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
homes_c$mwtnwt = homes_c$mwt * homes_c$nwt

summary(homes_c)

cor(homes_c$mwt, homes_c$nwt)


hed1 <- lm(LastSalePr ~ Sqft + Beds + Baths + agecat + mwt   + HUD2K1 + MEDINC2K_K1 + OCEANVIEW + v_rate + p_rate , data=homes_c)
summary(hed1)

#hed1 <- lm(logprpersqft ~ Sqft + agecat + mwt + nwt  + HUD2K1 + MEDINC2K_K1 + OCEANVIEW , data=homes_c)
#summary(hed1)


# NC10_901, COASTDIS, HUD2K1, HUD2K_5KMISH, LYONSTEPSDIS, MAJRDDIS, KMTOPA, MEDINC2K_K1, OCEANVIEW, OPEN10KM, OPEN1KM, OPEN2POINT5KM, OPEN500M, OPEN5KM, STATIONDIS, BARTDIS, VIEW_WSW1

