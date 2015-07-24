redfin_raw = read.csv("redfin_03feb14.csv", header = TRUE)

redfin_sub <- subset(redfin_raw, Saleyear > 2011 & YearBuilt > 0 & Sqft > 0, select = c(LastSalePr, City, Sqft, YearBuilt, Beds))

redfin_sub$price <- redfin_sub$LastSalePr / 100000
redfin_sub$juriscat <- ifelse(redfin_sub$City == "San Francisco", c("SF"), c("Not SF")) 
#(tmp <- yes; tmp[!test] <- no[!test]; tmp) 

attach(redfin_sub)
redfin_sub$agecat[YearBuilt >= 1985] <- "Recent"
redfin_sub$agecat[YearBuilt < 1945] <- "Historic"
redfin_sub$agecat[YearBuilt >= 1945 & YearBuilt < 1985] <- "PostWar"
detach(redfin_sub)

#attach(redfin_sub)
#redfin_sub$juriscat[City = "San Francisco"] <- "SF"
#redfin_sub$juriscat[City != "San Francisco"] <- "Not SF"
#detach(redfin_sub)

hed1 <- lm(price ~ Sqft + agecat + juriscat, data=redfin_sub)
summary(hed1)
