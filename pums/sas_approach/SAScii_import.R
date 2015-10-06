install.packages("SAScii")
library(SAScii)


#Load an IPUMS - American Community Survey Extract into R
#DOES NOT RUN without downloading ACS ASCII files to
#your local drive from http://www.ipums.org/
#MINNESOTA POPULATION CENTER - IPUMS ASCII EXTRACTS & SAS import instructions
IPUMS.file.location <- "/Users/mkreilly/working/pums/IPUMS0812/usa_00005.dat"
IPUMS.SAS.read.in.instructions <- "/Users/mkreilly/working/pums/IPUMS0812/usa_00005.sas"
#store the IPUMS extract as an R data frame!
pums0812_hh.df <- read.SAScii (IPUMS.file.location, IPUMS.SAS.read.in.instructions , zipped = F )
#or store the IPUMS extract SAS import instructions for use in a
#read.fwf function call outside of the read.SAScii function
IPUMS.sas <- parse.SAScii( IPUMS.SAS.read.in.instructions )