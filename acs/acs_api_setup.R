install.packages("acs")
library(acs)
# install.packages("methods", "stringr", "plyr", "XML")
api.key.install(key="1b1cc9bdf4feba85a1f7d0167ae3c4f1b9b079fe")

# create a geo.set using the geo.make() function (no data)

ca <- geo.make(state=6)
ba <- geo.make(state=6, county=c(1,13,41,55,75,81,85,95,97))



# 3. optionally, use the acs.lookup() function to explore the vars

# 4. use the acs.fetch() function to download data for your new geography (see section 4.3.1 on page 16); and then

acs.fetch(geography=ba, table.number="B01003")



# 5. use the existing functions in the package to work with your data (see worked example in appendix A and the package documentation).
