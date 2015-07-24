redfin_raw = read.csv("redfin_03feb14.csv", header = TRUE)
inflation = read.csv("inflation_cycle_adjust.csv", header = TRUE)

redfin_sub <- subset(redfin_raw, Saleyear > 1990 & YearBuilt > 0 & Sqft > 0, select = c(LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds))
infl <- subset(inflation, saleyear > 1990)
homes <- merge (x = redfin_sub, y = infl, by.x = "Saleyear", by.y = "saleyear") 

# add county var and then use below to do appropriate transform by county
if(client=='private'){
  tot.price <- net.price * 1.12
} else if(client=='public'){
  tot.price <- net.price * 1.06
} else {
  tot.price <- net.price
}


homes$price_cpi <- homes$LastSalePr * homes$adjcpi2010 /100000
homes$price_hpi <- homes$LastSalePr * homes$adjHPIsfrsmt /100000

homes$price <- homes$LastSalePr / 100000
homes$juriscat <- ifelse(homes$City == "San Francisco", c("SF"), c("Not SF")) 
#(tmp <- yes; tmp[!test] <- no[!test]; tmp) 

attach(homes)
homes$agecat[YearBuilt >= 1985] <- "Recent"
homes$agecat[YearBuilt < 1945] <- "Historic"
homes$agecat[YearBuilt >= 1945 & YearBuilt < 1985] <- "PostWar"
detach(homes)

#attach(homes)
#homes$juriscat[City = "San Francisco"] <- "SF"
#homes$juriscat[City != "San Francisco"] <- "Not SF"
#detach(homes)

hed1 <- lm(price ~ Sqft + agecat + juriscat, data=homes)
summary(hed1)

hed_cpi <- lm(price_api ~ Sqft + agecat + juriscat, data=homes)
summary(hed_cpi)

hed_hpi <- lm(price_hpi ~ Sqft + agecat + juriscat, data=homes, na.action="na.exclude")
summary(hed_hpi)


