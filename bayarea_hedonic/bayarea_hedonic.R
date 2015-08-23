redfin_raw = read.csv("redfin_03feb14.csv", header = TRUE)
inflation = read.csv("inflation_cycle_adjust.csv", header = TRUE)
ls10_mandatory = read.csv("./data/2010_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
ls10_nonmandatory = read.csv("./data/2010_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
ls05_mandatory = read.csv("./data/2005_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
ls05_nonmandatory = read.csv("./data/2005_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)
ls00_mandatory = read.csv("./data/2000_05_XXX/mandatoryAccessibilities.csv", header = TRUE)
ls00_nonmandatory = read.csv("./data/2000_05_XXX/nonMandatoryAccessibilities.csv", header = TRUE)


redfin_sub <- subset(redfin_raw, Saleyear > 2012 & YearBuilt > 0 & Sqft > 0, select = c(LastSalePr, Saleyear, City, Sqft, YearBuilt, Beds))
infl <- subset(inflation, saleyear > 1990)
homes <- merge (x = redfin_sub, y = infl, by.x = "Saleyear", by.y = "saleyear") 



# add county var and then use below to do appropriate transform by county
#if(client=='private'){
#  tot.price <- net.price * 1.12
#} else if(client=='public'){
#  tot.price <- net.price * 1.06
#} else {
#  tot.price <- net.price
#}


homes$price_cpi <- homes$LastSalePr * homes$adjcpi2010 /100000
homes$price_hpi <- homes$LastSalePr * homes$adjHPIsfrsmt /100000

homes$price <- homes$LastSalePr / 100000
homes$juriscat <- ifelse(homes$City == "San Francisco", c("SF"), c("Not SF")) 
#(tmp <- yes; tmp[!test] <- no[!test]; tmp) 

#dummies w 2010 ommitted
homes$dy2014 <- as.numeric(homes$Saleyear == 2014)
homes$dy2013 <- as.numeric(homes$Saleyear == 2013)
homes$dy2012 <- as.numeric(homes$Saleyear == 2012)
homes$dy2011 <- as.numeric(homes$Saleyear == 2011)
homes$dy2009 <- as.numeric(homes$Saleyear == 2009)
homes$dy2008 <- as.numeric(homes$Saleyear == 2008)
homes$dy2007 <- as.numeric(homes$Saleyear == 2007)
homes$dy2006 <- as.numeric(homes$Saleyear == 2006)
homes$dy2005 <- as.numeric(homes$Saleyear == 2005)
homes$dy2004 <- as.numeric(homes$Saleyear == 2004)
homes$dy2003 <- as.numeric(homes$Saleyear == 2003)
homes$dy2002 <- as.numeric(homes$Saleyear == 2002)
homes$dy2001 <- as.numeric(homes$Saleyear == 2001)
homes$dy2000 <- as.numeric(homes$Saleyear == 2000)
homes$dy1999 <- as.numeric(homes$Saleyear == 1999)
homes$dy1998 <- as.numeric(homes$Saleyear == 1998)
homes$dy1997 <- as.numeric(homes$Saleyear == 1997)
homes$dy1996 <- as.numeric(homes$Saleyear == 1996)
homes$dy1995 <- as.numeric(homes$Saleyear == 1995)
homes$dy1994 <- as.numeric(homes$Saleyear == 1994)
homes$dy1993 <- as.numeric(homes$Saleyear == 1993)
homes$dy1992 <- as.numeric(homes$Saleyear == 1992)
homes$dy1991 <- as.numeric(homes$Saleyear == 1991)


attach(homes)
homes$agecat[YearBuilt >= 2008] <- "Recent"
homes$agecat[YearBuilt < 1945] <- "Historic"
homes$agecat[YearBuilt >= 1945 & YearBuilt < 2008] <- "PostWar"
detach(homes)

#attach(homes)
#homes$juriscat[City = "San Francisco"] <- "SF"
#homes$juriscat[City != "San Francisco"] <- "Not SF"
#detach(homes)

hed1 <- lm(price ~ Sqft + agecat + juriscat 
           + dy2014 + dy2013 + dy2012 + dy2011
           + dy2009 + dy2008 + dy2007 + dy2006 + dy2005 + dy2004 + dy2003 + dy2002 + dy2001 + dy2000
           + dy1999 + dy1998 + dy1997 + dy1996 + dy1995 + dy1994 + dy1993 + dy1992 + dy1991          
           , data=homes)
summary(hed1)


hed1 <- lm(price ~ Sqft + agecat + juriscat, data=homes)
summary(hed1)

hed_cpi <- lm(price_api ~ Sqft + agecat + juriscat, data=homes)
summary(hed_cpi)

hed_hpi <- lm(price_hpi ~ Sqft + agecat + juriscat, data=homes, na.action="na.exclude")
summary(hed_hpi)


