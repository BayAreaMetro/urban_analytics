rf_raw = read.csv("./data/recent_housingsales_rf_1314_tazsubschool.csv", header = TRUE)
rstr_raw = read.csv("./data/raster_on_rf_recent.csv", header = TRUE)
market_segs = read.csv("./data/accessibility-market-segments.csv", header = TRUE)
crime = read.csv("./data/crimerates.csv", header = TRUE)
api10 = read.csv("./data/api10bdb_c.csv", header = TRUE)

#inflation = read.csv("inflation_cycle_adjust.csv", header = TRUE)

ls10_mandatory = read.csv("./data/2010_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
ls10_nonMandatory = read.csv("./data/2010_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
#ls05_mandatory = read.csv("./data/2005_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
#ls05_nonmandatory = read.csv("./data/2005_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
ls00_mandatory = read.csv("./data/2000_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
ls00_nonMandatory = read.csv("./data/2000_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)

# (logsum_value - thatColumnMinLogsumValue) / in-vehicle time coef
# 0.0134 mandatory in-vehicle time coef
# 0.0175 non-mandatory in-vehicle time coef

#market_segs$proportion <- market_segs$households / 2732722

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

# ls00

ls00_mandatory$lowInc_0_autos_t <- (ls00_mandatory$lowInc_0_autos - min(ls00_mandatory$lowInc_0_autos)) / 0.0134
ls00_mandatory$lowInc_autos_lt_workers_t <- (ls00_mandatory$lowInc_autos_lt_workers - min(ls00_mandatory$lowInc_autos_lt_workers)) / 0.0134
ls00_mandatory$lowInc_autos_ge_workers_t <- (ls00_mandatory$lowInc_autos_ge_workers - min(ls00_mandatory$lowInc_autos_ge_workers)) / 0.0134
ls00_mandatory$medInc_0_autos_t <- (ls00_mandatory$medInc_0_autos - min(ls00_mandatory$medInc_0_autos)) / 0.0134
ls00_mandatory$medInc_autos_lt_workers_t <- (ls00_mandatory$medInc_autos_lt_workers - min(ls00_mandatory$medInc_autos_lt_workers)) / 0.0134
ls00_mandatory$medInc_autos_ge_workers_t <- (ls00_mandatory$medInc_autos_ge_workers - min(ls00_mandatory$medInc_autos_ge_workers)) / 0.0134
ls00_mandatory$highInc_0_autos_t <- (ls00_mandatory$highInc_0_autos - min(ls00_mandatory$highInc_0_autos)) / 0.0134
ls00_mandatory$highInc_autos_lt_workers_t <- (ls00_mandatory$highInc_autos_lt_workers - min(ls00_mandatory$highInc_autos_lt_workers)) / 0.0134
ls00_mandatory$highInc_autos_ge_workers_t <- (ls00_mandatory$highInc_autos_ge_workers - min(ls00_mandatory$highInc_autos_ge_workers)) / 0.0134
ls00_mandatory$veryHighInc_0_autos_t <- (ls00_mandatory$veryHighInc_0_autos - min(ls00_mandatory$veryHighInc_0_autos)) / 0.0134
ls00_mandatory$veryHighInc_autos_lt_workers_t <- (ls00_mandatory$veryHighInc_autos_lt_workers - min(ls00_mandatory$veryHighInc_autos_lt_workers)) / 0.0134
ls00_mandatory$veryHighInc_autos_ge_workers_t <- (ls00_mandatory$veryHighInc_autos_ge_workers - min(ls00_mandatory$veryHighInc_autos_ge_workers)) / 0.0134

ls00_mandatory$mwt <- 0.061 * ls00_mandatory$lowInc_0_autos_t + 0.005 * ls00_mandatory$lowInc_autos_lt_workers_t + 0.211 * ls00_mandatory$lowInc_autos_ge_workers_t + 0.016 * ls00_mandatory$medInc_0_autos_t + 0.013 * ls00_mandatory$medInc_autos_lt_workers_t + 0.204 * ls00_mandatory$medInc_autos_ge_workers_t + 0.009 * ls00_mandatory$highInc_0_autos_t + 0.020 * ls00_mandatory$highInc_autos_lt_workers_t + 0.208 * ls00_mandatory$highInc_autos_ge_workers_t + 0.007 * ls00_mandatory$veryHighInc_0_autos_t + 0.026 * ls00_mandatory$veryHighInc_autos_lt_workers_t + 0.220 * ls00_mandatory$veryHighInc_autos_ge_workers_t 

ls00_nonMandatory$lowInc_0_autos_tn <- (ls00_nonMandatory$lowInc_0_autos - min(ls00_nonMandatory$lowInc_0_autos)) / 0.0134
ls00_nonMandatory$lowInc_autos_lt_workers_tn <- (ls00_nonMandatory$lowInc_autos_lt_workers - min(ls00_nonMandatory$lowInc_autos_lt_workers)) / 0.0134
ls00_nonMandatory$lowInc_autos_ge_workers_tn <- (ls00_nonMandatory$lowInc_autos_ge_workers - min(ls00_nonMandatory$lowInc_autos_ge_workers)) / 0.0134
ls00_nonMandatory$medInc_0_autos_tn <- (ls00_nonMandatory$medInc_0_autos - min(ls00_nonMandatory$medInc_0_autos)) / 0.0134
ls00_nonMandatory$medInc_autos_lt_workers_tn <- (ls00_nonMandatory$medInc_autos_lt_workers - min(ls00_nonMandatory$medInc_autos_lt_workers)) / 0.0134
ls00_nonMandatory$medInc_autos_ge_workers_tn <- (ls00_nonMandatory$medInc_autos_ge_workers - min(ls00_nonMandatory$medInc_autos_ge_workers)) / 0.0134
ls00_nonMandatory$highInc_0_autos_tn <- (ls00_nonMandatory$highInc_0_autos - min(ls00_nonMandatory$highInc_0_autos)) / 0.0134
ls00_nonMandatory$highInc_autos_lt_workers_tn <- (ls00_nonMandatory$highInc_autos_lt_workers - min(ls00_nonMandatory$highInc_autos_lt_workers)) / 0.0134
ls00_nonMandatory$highInc_autos_ge_workers_tn <- (ls00_nonMandatory$highInc_autos_ge_workers - min(ls00_nonMandatory$highInc_autos_ge_workers)) / 0.0134
ls00_nonMandatory$veryHighInc_0_autos_tn <- (ls00_nonMandatory$veryHighInc_0_autos - min(ls00_nonMandatory$veryHighInc_0_autos)) / 0.0134
ls00_nonMandatory$veryHighInc_autos_lt_workers_tn <- (ls00_nonMandatory$veryHighInc_autos_lt_workers - min(ls00_nonMandatory$veryHighInc_autos_lt_workers)) / 0.0134
ls00_nonMandatory$veryHighInc_autos_ge_workers_tn <- (ls00_nonMandatory$veryHighInc_autos_ge_workers - min(ls00_nonMandatory$veryHighInc_autos_ge_workers)) / 0.0134

ls00_nonMandatory$nwt <- 0.061 * ls00_nonMandatory$lowInc_0_autos_tn + 0.005 * ls00_nonMandatory$lowInc_autos_lt_workers_tn + 0.211 * ls00_nonMandatory$lowInc_autos_ge_workers_tn + 0.016 * ls00_nonMandatory$medInc_0_autos_tn + 0.013 * ls00_nonMandatory$medInc_autos_lt_workers_tn + 0.204 * ls00_nonMandatory$medInc_autos_ge_workers_tn + 0.009 * ls00_nonMandatory$highInc_0_autos_tn + 0.020 * ls00_nonMandatory$highInc_autos_lt_workers_tn + 0.208 * ls00_nonMandatory$highInc_autos_ge_workers_tn + 0.007 * ls00_nonMandatory$veryHighInc_0_autos_tn + 0.026 * ls00_nonMandatory$veryHighInc_autos_lt_workers_tn + 0.220 * ls00_nonMandatory$veryHighInc_autos_ge_workers_tn 


subzone_to_string <- function(x)
{
  y <- rep.int(NA, length(x))
  y[x == "0"] <- "c"
  y[x == "1"] <- "a"
  y[x == "2"] <- "b"
  y
}

ls10_mandatory$subzone_s <- subzone_to_string(ls10_mandatory$subzone)
ls10_mandatory$taz_sub <- paste(ls00_mandatory$taz, ls10_mandatory$subzone_s, sep="")

ls00_mandatory$subzone_s <- subzone_to_string(ls00_mandatory$subzone)
ls00_mandatory$taz_sub <- paste(ls00_mandatory$taz, ls00_mandatory$subzone_s, sep="")


ls1000_mandatory <- merge (x = ls10_mandatory, y = ls00_mandatory, by = "taz_sub") 

ls1000_mandatory$mdiff <- ls10_mandatory$mwt - ls00_mandatory$mwt


write.csv(ls1000_mandatory, file = "ls1000_mandatory.csv")


sum(ls1000_mandatory$mdiff)

summary(rf_raw)
rf_raw$lot <- rf_raw$LotSize / 1

levels(rf_raw$HomeType)

rf_s <- subset(rf_raw, LastSalePr > 50000 & LastSalePr < 10000000 & Baths > 0 &Saleyear > 2012 & YearBuilt > 0 & Sqft > 150 & taz_key > 0, select = c(Url, HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, name, Latitude, Longitude, OBJECTID))


#rf_c <- subset(rf_raw, HomeType = c("Condo/Coop") &Saleyear > 2012 & YearBuilt > 0 & Sqft > 0 & taz_key > 0, select = c(HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, Latitude, Longitude, OBJECTID))
rf_c <- subset(rf_s, HomeType == c("Condo/Coop", "Single Family Residential", "Townhouse") , select = c(Url, HomeType, LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds, Baths, LotSize, taz_sub, name, Latitude, Longitude, OBJECTID))
summary(rf_c)

rstr_c <- subset(rstr_raw, NC10_901 > 0, select = c(Url, HOUSING_SALES_RE, NC10_901, COASTDIS, HUD2K1, HUD2K_5KMISH, LYONSTEPSDIS, MAJRDDIS, KMTOPA, MEDINC2K_K1, OCEANVIEW, OPEN10KM, OPEN1KM, OPEN2POINT5KM, OPEN500M, OPEN5KM, STATIONDIS, BARTDIS, VIEW_WSW1))
#infl <- subset(inflation, saleyear > 1990)
api10_c <- subset(api10, RTYPE == "D")

# try out dplyr for joins

homes_raster <- merge (x = rf_c, y = rstr_c, by.x = "Url", by.y = "Url") 
homes_crime <- merge (x = homes_raster, y = crime, by.x = "City", by.y = "City") 
homes_ls <- merge (x = homes_crime, y = ls1000_mandatory, by.x = "taz_sub", by.y = "taz_sub")
homes <- merge (x = homes_ls, y = api10_c, by.x = "name", by.y = "DNAME")


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

homes$logprice <-  log(homes$LastSalePr)
homes$logprpersqft <-  log(homes$LastSalePr / homes$Sqft)
homes$price <- homes$LastSalePr / 100000
homes$juriscat <- ifelse(homes$City == "San Francisco", c("SF"), c("Not SF")) 
#(tmp <- yes; tmp[!test] <- no[!test]; tmp) 

#detach(homes)
#attach(homes)
#homes$agecat[YearBuilt >= 2008] <- "Recent"
#homes$agecat[YearBuilt < 1945] <- "Historic"
#homes$agecat[YearBuilt >= 1945 & YearBuilt < 2008] <- "PostWar"
#detach(homes)

homes$agecat <- cut(homes$YearBuilt,
                     breaks=c(-Inf, 1940, 2010, Inf),
                     labels=c("old","medium","new"))
is.factor(homes$agecat)

homes$lyon <- cut(homes$LYONSTEPSDIS, c(0,2500))
summary(homes)

#attach(homes)
#homes$juriscat[City = "San Francisco"] <- "SF"
#homes$juriscat[City != "San Francisco"] <- "Not SF"
#detach(homes)

homes_c <- subset(homes, logprpersqft > 0 , select = c(LastSalePr, logprice, agecat, Sqft, Beds, Baths, YearBuilt, mwt.x, HUD2K1, MEDINC2K_K1, OCEANVIEW, API, c_rate))

cor(na.omit(homes_c))

cor(homes_c$Sqft, homes_c$Beds)

summary(homes_c)

ivs <- c(homes_c$Sqft + homes_c$Beds + homes_c$Baths + homes_c$agecat + homes_c$mwt.x  + homes_c$HUD2K1 + homes_c$MEDINC2K_K1 + homes_c$OCEANVIEW + homes_c$API + homes_c$c_rate) 

hed1 <- lm(LastSalePr ~ Sqft + Baths + agecat  + HUD2K1 + MEDINC2K_K1 + OCEANVIEW + API + c_rate + mwt.x , data=homes_c)
summary(hed1)

hed2 <- lm(logprice ~ Sqft + Baths + agecat  + HUD2K1 + MEDINC2K_K1 + OCEANVIEW  + API + c_rate + mwt.x , data=homes_c)
summary(hed2)


attach(homes_c)
library(psych)
#sd(LastSalePr, Sqft, Beds, Baths, YearBuilt, HUD2K1, MEDINC2K_K1,  OCEANVIEW,  API , c_rate)
sd(logprice)

#hed1 <- lm(logprpersqft ~ Sqft + agecat + mwt + nwt  + HUD2K1 + MEDINC2K_K1 + OCEANVIEW , data=homes_c)
#summary(hed1)


# NC10_901, COASTDIS, HUD2K1, HUD2K_5KMISH, LYONSTEPSDIS, MAJRDDIS, KMTOPA, MEDINC2K_K1, OCEANVIEW, OPEN10KM, OPEN1KM, OPEN2POINT5KM, OPEN500M, OPEN5KM, STATIONDIS, BARTDIS, VIEW_WSW1

