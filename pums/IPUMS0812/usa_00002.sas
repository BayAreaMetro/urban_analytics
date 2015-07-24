/*
   NOTE: You need to edit the `libname` command to specify the path to the directory
   where the data file is located. For example: "C:\ipums_directory".
   Edit the `filename` command similarly to include the full path (the directory and the data file name).
*/

libname IPUMS ".";
filename ASCIIDAT "usa_00002.dat";

proc format cntlout = IPUMS.usa_00002_f;

value YEAR_f
  1850 = "1850"
  1860 = "1860"
  1870 = "1870"
  1880 = "1880"
  1900 = "1900"
  1910 = "1910"
  1920 = "1920"
  1930 = "1930"
  1940 = "1940"
  1950 = "1950"
  1960 = "1960"
  1970 = "1970"
  1980 = "1980"
  1990 = "1990"
  2000 = "2000"
  2001 = "2001"
  2002 = "2002"
  2003 = "2003"
  2004 = "2004"
  2005 = "2005"
  2006 = "2006"
  2007 = "2007"
  2008 = "2008"
  2009 = "2009"
  2010 = "2010"
  2011 = "2011"
  2012 = "2012"
  2013 = "2013"
;

value NUMPREC_f
  00 = "Vacant household"
  01 = "1 person record"
  02 = "2"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
  17 = "17"
  18 = "18"
  19 = "19"
  20 = "20"
  21 = "21"
  22 = "22"
  23 = "23"
  24 = "24"
  25 = "25"
  26 = "26"
  27 = "27"
  28 = "28"
  29 = "29"
  30 = "30"
;

value SUBSAMP_f
  00 = "First 1% subsample"
  01 = "2nd 1% subsample"
  02 = "2"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
  17 = "17"
  18 = "18"
  19 = "19"
  20 = "20"
  21 = "21"
  22 = "22"
  23 = "23"
  24 = "24"
  25 = "25"
  26 = "26"
  27 = "27"
  28 = "28"
  29 = "29"
  30 = "30"
  31 = "31"
  32 = "32"
  33 = "33"
  34 = "34"
  35 = "35"
  36 = "36"
  37 = "37"
  38 = "38"
  39 = "39"
  40 = "40"
  41 = "41"
  42 = "42"
  43 = "43"
  44 = "44"
  45 = "45"
  46 = "46"
  47 = "47"
  48 = "48"
  49 = "49"
  50 = "50"
  51 = "51"
  52 = "52"
  53 = "53"
  54 = "54"
  55 = "55"
  56 = "56"
  57 = "57"
  58 = "58"
  59 = "59"
  60 = "60"
  61 = "61"
  62 = "62"
  63 = "63"
  64 = "64"
  65 = "65"
  66 = "66"
  67 = "67"
  68 = "68"
  69 = "69"
  70 = "70"
  71 = "71"
  72 = "72"
  73 = "73"
  74 = "74"
  75 = "75"
  76 = "76"
  77 = "77"
  78 = "78"
  79 = "79"
  80 = "80"
  81 = "81"
  82 = "82"
  83 = "83"
  84 = "84"
  85 = "85"
  86 = "86"
  87 = "87"
  88 = "88"
  89 = "89"
  90 = "90"
  91 = "91"
  92 = "92"
  93 = "93"
  94 = "94"
  95 = "95"
  96 = "96"
  97 = "97"
  98 = "98"
  99 = "99"
;

value HHTYPE_f
  0 = "N/A"
  1 = "Married-couple family household"
  2 = "Male householder, no wife present"
  3 = "Female householder, no husband present"
  4 = "Male householder, living alone"
  5 = "Male householder, not living alone"
  6 = "Female householder, living alone"
  7 = "Female householder, not living alone"
  9 = "HHTYPE could not be determined"
;

value REPWT_f
  0 = "Repwt not available"
  1 = "Repwt available"
;

value REGION_f
  11 = "New England Division"
  12 = "Middle Atlantic Division"
  13 = "Mixed Northeast Divisions (1970 Metro)"
  21 = "East North Central Div."
  22 = "West North Central Div."
  23 = "Mixed Midwest Divisions (1970 Metro)"
  31 = "South Atlantic Division"
  32 = "East South Central Div."
  33 = "West South Central Div."
  34 = "Mixed Southern Divisions (1970 Metro)"
  41 = "Mountain Division"
  42 = "Pacific Division"
  43 = "Mixed Western Divisions (1970 Metro)"
  91 = "Military/Military reservations"
  92 = "PUMA boundaries cross state lines-1% sample"
  97 = "State not identified"
  99 = "Not identified"
;

value STATEICP_f
  01 = "Connecticut"
  02 = "Maine"
  03 = "Massachusetts"
  04 = "New Hampshire"
  05 = "Rhode Island"
  06 = "Vermont"
  11 = "Delaware"
  12 = "New Jersey"
  13 = "New York"
  14 = "Pennsylvania"
  21 = "Illinois"
  22 = "Indiana"
  23 = "Michigan"
  24 = "Ohio"
  25 = "Wisconsin"
  31 = "Iowa"
  32 = "Kansas"
  33 = "Minnesota"
  34 = "Missouri"
  35 = "Nebraska"
  36 = "North Dakota"
  37 = "South Dakota"
  40 = "Virginia"
  41 = "Alabama"
  42 = "Arkansas"
  43 = "Florida"
  44 = "Georgia"
  45 = "Louisiana"
  46 = "Mississippi"
  47 = "North Carolina"
  48 = "South Carolina"
  49 = "Texas"
  51 = "Kentucky"
  52 = "Maryland"
  53 = "Oklahoma"
  54 = "Tennessee"
  56 = "West Virginia"
  61 = "Arizona"
  62 = "Colorado"
  63 = "Idaho"
  64 = "Montana"
  65 = "Nevada"
  66 = "New Mexico"
  67 = "Utah"
  68 = "Wyoming"
  71 = "California"
  72 = "Oregon"
  73 = "Washington"
  81 = "Alaska"
  82 = "Hawaii"
  83 = "Puerto Rico"
  96 = "State groupings (1980 Urban/rural sample)"
  97 = "Military/Mil. Reservations"
  98 = "District of Columbia"
  99 = "State not identified"
;

value STATEFIP_f
  01 = "Alabama"
  02 = "Alaska"
  04 = "Arizona"
  05 = "Arkansas"
  06 = "California"
  08 = "Colorado"
  09 = "Connecticut"
  10 = "Delaware"
  11 = "District of Columbia"
  12 = "Florida"
  13 = "Georgia"
  15 = "Hawaii"
  16 = "Idaho"
  17 = "Illinois"
  18 = "Indiana"
  19 = "Iowa"
  20 = "Kansas"
  21 = "Kentucky"
  22 = "Louisiana"
  23 = "Maine"
  24 = "Maryland"
  25 = "Massachusetts"
  26 = "Michigan"
  27 = "Minnesota"
  28 = "Mississippi"
  29 = "Missouri"
  30 = "Montana"
  31 = "Nebraska"
  32 = "Nevada"
  33 = "New Hampshire"
  34 = "New Jersey"
  35 = "New Mexico"
  36 = "New York"
  37 = "North Carolina"
  38 = "North Dakota"
  39 = "Ohio"
  40 = "Oklahoma"
  41 = "Oregon"
  42 = "Pennsylvania"
  44 = "Rhode Island"
  45 = "South Carolina"
  46 = "South Dakota"
  47 = "Tennessee"
  48 = "Texas"
  49 = "Utah"
  50 = "Vermont"
  51 = "Virginia"
  53 = "Washington"
  54 = "West Virginia"
  55 = "Wisconsin"
  56 = "Wyoming"
  61 = "Maine-New Hampshire-Vermont"
  62 = "Massachusetts-Rhode Island"
  63 = "Minnesota-Iowa-Missouri-Kansas-Nebraska-S.Dakota-N.Dakota"
  64 = "Maryland-Delaware"
  65 = "Montana-Idaho-Wyoming"
  66 = "Utah-Nevada"
  67 = "Arizona-New Mexico"
  68 = "Alaska-Hawaii"
  72 = "Puerto Rico"
  97 = "Military/Mil. Reservation"
  99 = "State not identified"
;

value CNTRY_f
  630 = "Puerto Rico"
  840 = "United States"
;

value GQ_f
  0 = "Vacant unit"
  1 = "Households under 1970 definition"
  2 = "Additional households under 1990 definition"
  3 = "Group quarters--Institutions"
  4 = "Other group quarters"
  5 = "Additional households under 2000 definition"
  6 = "Fragment"
;

value GQTYPE_f
  0 = "NA (non-group quarters households)"
  1 = "Institution (1990, 2000, ACS/PRCS)"
  2 = "Correctional institutions"
  3 = "Mental institutions"
  4 = "Institutions for the elderly, handicapped, and poor"
  5 = "Non-institutional GQ"
  6 = "Military"
  7 = "College dormitory"
  8 = "Rooming house"
  9 = "Other non-institutional GQ and unknown"
;

value GQTYPED_f
  000 = "NA (non-group quarters households)"
  010 = "Family group, someone related to head"
  020 = "Unrelated individuals, no one related to head"
  100 = "Institution (1990, 2000, ACS/PRCS)"
  200 = "Correctional institution"
  210 = "Federal/state correctional"
  211 = "Prison"
  212 = "Penitentiary"
  213 = "Military prison"
  220 = "Local correctional"
  221 = "Jail"
  230 = "School juvenile delinquents"
  240 = "Reformatory"
  250 = "Camp or chaingang"
  260 = "House of correction"
  300 = "Mental institutions"
  400 = "Institutions for the elderly, handicapped, and poor"
  410 = "Homes for elderly"
  411 = "Aged, dependent home"
  412 = "Nursing/convalescent home"
  413 = "Old soldiers home"
  420 = "Other Instits (Not Aged)"
  421 = "Other Institution nec"
  430 = "Homes neglected/depend children"
  431 = "Orphan school"
  432 = "Orphans home, asylum"
  440 = "Other instits for children"
  441 = "Childrens home, asylum"
  450 = "Homes physically handicapped"
  451 = "Deaf, blind school"
  452 = "Deaf, blind, epilepsy"
  460 = "Mentally handicapped home"
  461 = "School for feeblemind"
  470 = "TB and chronic disease hospital"
  471 = "Chronic hospitals"
  472 = "Sanataria"
  480 = "Poor houses and farms"
  481 = "Poor house, almshouse"
  482 = "Poor farm, workhouse"
  491 = "Maternity homes for unmarried mothers"
  492 = "Homes for widows, single, fallen women"
  493 = "Detention homes"
  494 = "Misc asylums"
  495 = "Home, other dependent"
  496 = "Instit combo or unknown"
  499 = "499"
  500 = "Non-institutional group quarters"
  501 = "Family formerly in institutional group quarters"
  502 = "Unrelated individual residing with family formerly in institutional group quarters"
  600 = "Military"
  601 = "U.S. army installation"
  602 = "Navy, marine intallation"
  603 = "Navy ships"
  604 = "Air service"
  700 = "College dormitory"
  701 = "Military service academies"
  800 = "Rooming house"
  801 = "Hotel"
  802 = "House, lodging apartments"
  803 = "YMCA, YWCA"
  804 = "Club"
  810 = "810"
  900 = "Other Non-Instit GQ"
  901 = "Other Non-Instit GQ"
  910 = "Schools"
  911 = "Boarding schools"
  912 = "Academy, institute"
  913 = "Industrial training"
  914 = "Indian school"
  920 = "Hospitals"
  921 = "Hospital, charity"
  922 = "Infirmary"
  923 = "Maternity hospital"
  924 = "Childrens hospital"
  931 = "Church, Abbey"
  932 = "Convent"
  933 = "Monastery"
  934 = "Mission"
  935 = "Seminary"
  936 = "Religious commune"
  937 = "Other religious"
  940 = "Work sites"
  941 = "Construction, except rr"
  942 = "Lumber"
  943 = "Mining"
  944 = "Railroad"
  945 = "Farms, ranches"
  946 = "Ships, boats"
  947 = "Other industrial"
  948 = "Other worksites"
  950 = "Nurses home, dorm"
  955 = "Passenger ships"
  960 = "Other group quarters"
  999 = "Fragment (boarders and lodgers, 1900)"
;

value FARM_f
  0 = "N/A"
  1 = "Non-Farm"
  2 = "Farm"
;

value OWNERSHP_f
  0 = "N/A"
  1 = "Owned or being bought (loan)"
  2 = "Rented"
;

value OWNERSHPD_f
  00 = "N/A"
  10 = "Owned or being bought"
  11 = "Check mark (owns?)"
  12 = "Owned free and clear"
  13 = "Owned with mortgage or loan"
  20 = "Rented"
  21 = "No cash rent"
  22 = "With cash rent"
;

value MORTGAGE_f
  0 = "N/A"
  1 = "No, owned free and clear"
  2 = "Check mark on manuscript (probably yes)"
  3 = "Yes, mortgaged/ deed of trust or similar debt"
  4 = "Yes, contract to purchase"
;

value MORTGAG2_f
  0 = "N/A "
  1 = "No"
  2 = "Yes"
  3 = "Yes, 2nd mortgage"
  4 = "Yes, home equity loan"
  5 = "Yes, 2nd mortgage and home equity loan"
;

value COMMUSE_f
  0 = "N/A"
  1 = "No commerical use"
  2 = "Yes, used commercially"
  3 = "Unknown, unit on 10+ acres"
  4 = "Unknown, unit on 3+ cuerdas"
;

value FARMPROD_f
  0 = "N/A"
  1 = "Less than $50"
  2 = "$50 - $249"
  3 = "$250 - $2,499 ($250 or more 1960s)"
  4 = "$2,500 - $4,999"
  5 = "$5,000 - $9,999"
  6 = "$10,000 or more"
;

value ACREHOUS_f
  0 = "N/A"
  1 = "House on less than 10 acres"
  2 = "House on 10 acres or more"
  3 = "House on less than 3 cuerdas (1980-1990)"
  4 = "House on 3+ cuerdas (1980-1990)"
  5 = "House on less than 10 cuerdas (2000 and PRCS)"
  6 = "House on 10 or more cuerdas (2000 and PRCS)"
;

value MORTAMT1_f
  00000 = "00000"
  00001 = "00001"
;

value MORTAMT2_f
  0000 = "N/A"
  0001 = "No regular payment (1990, 2000, ACS, PRCS)"
;

value TAXINCL_f
  0 = "N/A"
  1 = "No"
  2 = "Yes"
;

value INSINCL_f
  0 = "N/A"
  1 = "No"
  2 = "Yes, payment includes insurance premiums"
;

value PROPINSR_f
  0000 = "0000"
  0001 = "0001"
  9999 = "9999"
;

value PROPTX99_f
  00 = "N/A (GQ/vacant/not owned  or being bought/not a one-family h"
  01 = "None"
  02 = "$1-49  ($2-49 in 1990 PR Samples)"
  03 = "$ 50 - 99"
  04 = "$ 100 - 149"
  05 = "$ 150 - 199"
  06 = "$ 200 - 249"
  07 = "$ 250 - 299"
  08 = "$ 300 - 349"
  09 = "$ 350 - 399"
  10 = "$ 400 - 449"
  11 = "$ 450 - 499"
  12 = "$ 500 - 549"
  13 = "$ 550 - 599"
  14 = "$ 600 - 649"
  15 = "$ 650 - 699"
  16 = "$ 700 - 749"
  17 = "$ 750 - 799"
  18 = "$ 800 - 849"
  19 = "$ 850 - 899"
  20 = "$ 900 - 949"
  21 = "$ 950 - 999"
  22 = "$ 1,000 - 1,099"
  23 = "$ 1,100 - 1,199"
  24 = "$ 1,200 - 1,299"
  25 = "$ 1,300 - 1,399"
  26 = "$ 1,400 - 1,499"
  27 = "$ 1,500 - 1,599"
  28 = "$ 1,600 - 1,699"
  29 = "$ 1,700 - 1,799"
  30 = "$ 1,800 - 1,899"
  31 = "$ 1,900 - 1,999"
  32 = "$ 2,000 - 2,099"
  33 = "$2100-2199  ($2199+ 1990 PR Samples)"
  34 = "$ 2,200 - 2,299"
  35 = "$ 2,300 - 2,399"
  36 = "$ 2,400 - 2,499"
  37 = "$ 2,500 - 2,599"
  38 = "$ 2,600 - 2,699"
  39 = "$ 2,700 - 2,799"
  40 = "$ 2,800 - 2,899"
  41 = "$ 2,900 - 2,999"
  42 = "$ 3,000 - 3,099"
  43 = "$ 3,100 - 3,199"
  44 = "$ 3,200 - 3,299"
  45 = "$ 3,300 - 3,399"
  46 = "$ 3,400 - 3,499"
  47 = "$ 3,500 - 3,599"
  48 = "$ 3,600 - 3,699"
  49 = "$ 3,700 - 3,799"
  50 = "$ 3,800 - 3,899"
  51 = "$ 3,900 - 3,999"
  52 = "$ 4,000 - 4,099"
  53 = "$ 4,100 - 4,199"
  54 = "$ 4,200 - 4,299"
  55 = "$ 4,300 - 4,399"
  56 = "$ 4,400 - 4,499"
  57 = "$4500 (1990 U.S. Samples)"
  58 = "$4500-4599 ($4501+ 1990 U.S. Samples)"
  59 = "$4600 - 4699"
  60 = "$4700 - 4799"
  61 = "$4800 - 4899"
  62 = "$4900 - 4999"
  63 = "$5000 - 5499"
  64 = "$5500 - 5999"
  65 = "$6000 - 6999"
  66 = "$7000 - 7999"
  67 = "$8000-8999 ($8000-9099 in 2000)"
  68 = "$9000-9999 ($9100+ in 2000)"
  69 = "$10,000+"
;

value OWNCOST_f
  99999 = "99999"
;

value RENTGRS_f
  0000 = "N/A"
  0010 = "$1-19"
  0025 = "$20-29"
  0035 = "$30-39"
  0045 = "$40-49"
  0055 = "$50-59"
  0065 = "$60-69"
  0075 = "$70-79"
  0090 = "$80-99"
  0110 = "$100-119"
  0135 = "$120-149"
  0175 = "$150-199"
  0200 = "$200+"
;

value RENTMEAL_f
  0 = "N/A"
  1 = "No, meals not included"
  2 = "Yes"
;

value CONDOFEE_f
  0000 = "0000"
;

value MOBLHOME_f
  00000 = "00000"
;

value COSTELEC_f
  0000 = "0000"
  9995 = "9995"
  0001 = "0001"
  0002 = "0002"
  0003 = "0003"
  0004 = "0004"
  0005 = "0005"
  0006 = "0006"
  0007 = "0007"
  0008 = "0008"
  0009 = "0009"
  0010 = "0010"
;

value COSTGAS_f
  0000 = "0000"
  9995 = "9995"
  0001 = "0001"
  0002 = "0002"
  0003 = "0003"
  0004 = "0004"
  0005 = "0005"
  0006 = "0006"
  0007 = "0007"
  0008 = "0008"
  0009 = "0009"
  0010 = "0010"
  0020 = "0020"
;

value COSTWATR_f
  0000 = "0000"
  9995 = "9995"
  0001 = "0001"
  0002 = "0002"
  0003 = "0003"
  0004 = "0004"
  0005 = "0005"
  0006 = "0006"
  0007 = "0007"
  0008 = "0008"
  0009 = "0009"
  0010 = "0010"
;

value COSTFUEL_f
  0000 = "0000"
  9995 = "9995"
  0001 = "0001"
  0002 = "0002"
  0003 = "0003"
  0004 = "0004"
  0005 = "0005"
  0006 = "0006"
  0007 = "0007"
  0008 = "0008"
  0009 = "0009"
  0010 = "0010"
  0011 = "0011"
  0012 = "0012"
  0013 = "0013"
  0014 = "0014"
  0015 = "0015"
  0016 = "0016"
  0017 = "0017"
  0018 = "0018"
  0019 = "0019"
  0020 = "0020"
  0021 = "0021"
  0022 = "0022"
  0023 = "0023"
  0024 = "0024"
  0025 = "0025"
  0026 = "0026"
  0027 = "0027"
  0028 = "0028"
  0029 = "0029"
  0030 = "0030"
  0031 = "0031"
  0032 = "0032"
  0033 = "0033"
  0034 = "0034"
  0035 = "0035"
  0036 = "0036"
  0037 = "0037"
  0038 = "0038"
  0039 = "0039"
  0040 = "0040"
  0041 = "0041"
  0042 = "0042"
  0043 = "0043"
  0044 = "0044"
  0045 = "0045"
  0046 = "0046"
  0047 = "0047"
  0048 = "0048"
  0049 = "0049"
  0050 = "0050"
  0051 = "0051"
  0052 = "0052"
  0053 = "0053"
  0054 = "0054"
  0055 = "0055"
  0056 = "0056"
  0057 = "0057"
  0058 = "0058"
  0059 = "0059"
  0060 = "0060"
  0061 = "0061"
  0062 = "0062"
  0063 = "0063"
  0064 = "0064"
  0065 = "0065"
  0066 = "0066"
  0067 = "0067"
  0068 = "0068"
  0069 = "0069"
  0070 = "0070"
  0071 = "0071"
  0072 = "0072"
  0073 = "0073"
  0074 = "0074"
  0075 = "0075"
  0076 = "0076"
  0077 = "0077"
  0078 = "0078"
  0079 = "0079"
  0080 = "0080"
  0081 = "0081"
  0082 = "0082"
  0083 = "0083"
  0084 = "0084"
  0085 = "0085"
  0086 = "0086"
  0087 = "0087"
  0088 = "0088"
  0089 = "0089"
  0090 = "0090"
  0091 = "0091"
  0092 = "0092"
  0093 = "0093"
  0094 = "0094"
  0095 = "0095"
  0096 = "0096"
  0097 = "0097"
  0098 = "0098"
  0099 = "0099"
  0100 = "0100"
  0101 = "0101"
  0102 = "0102"
  0103 = "0103"
  0104 = "0104"
  0105 = "0105"
  0106 = "0106"
  0107 = "0107"
  0108 = "0108"
  0109 = "0109"
  0200 = "0200"
  0201 = "0201"
  0202 = "0202"
  0203 = "0203"
  0204 = "0204"
  0205 = "0205"
  0206 = "0206"
  0207 = "0207"
  0208 = "0208"
  0209 = "0209"
  0300 = "0300"
  0301 = "0301"
  0302 = "0302"
  0303 = "0303"
  0304 = "0304"
  0305 = "0305"
  0306 = "0306"
  0307 = "0307"
  0308 = "0308"
  0309 = "0309"
  0400 = "0400"
  0401 = "0401"
  0402 = "0402"
  0403 = "0403"
  0404 = "0404"
  0405 = "0405"
  0406 = "0406"
  0407 = "0407"
  0408 = "0408"
  0409 = "0409"
  0110 = "0110"
  0120 = "0120"
  0130 = "0130"
  0140 = "0140"
  0150 = "0150"
  0160 = "0160"
  0170 = "0170"
  0180 = "0180"
  0190 = "0190"
  0210 = "0210"
  0220 = "0220"
  0230 = "0230"
  0240 = "0240"
  0250 = "0250"
  0260 = "0260"
  0270 = "0270"
  0280 = "0280"
  0290 = "0290"
  0310 = "0310"
  0320 = "0320"
  0330 = "0330"
  0340 = "0340"
  0350 = "0350"
  0360 = "0360"
  0370 = "0370"
  0380 = "0380"
  0390 = "0390"
  0410 = "0410"
  0420 = "0420"
  0430 = "0430"
  0440 = "0440"
  0450 = "0450"
  0460 = "0460"
  0470 = "0470"
  0480 = "0480"
  0490 = "0490"
  8887 = "1960s cases to be allocated (no flag for NIU or 9995)"
  8888 = "1960s cases to be allocated"
;

value HHINCOME_f
  9999999 = "9999999"
;

value FOODSTMP_f
  0 = "N/A"
  1 = "No"
  2 = "Yes"
;

value LINGISOL_f
  0 = "N/A (group quarters/vacant)"
  1 = "Not linguistically isolated"
  2 = "Linguistically isolated"
;

value VACANCY_f
  0 = "N/A"
  1 = "For rent or sale"
  2 = "For sale only"
  3 = "Rented or sold but not (yet) occupied"
  4 = "For seasonal, recreational or other occasional use"
  5 = "For occasional use"
  6 = "For seasonal use"
  7 = "For migrant farm workers"
  8 = "For seasonal use or migratory"
  9 = "Other vacant"
;

value KITCHEN_f
  0 = "N/A"
  1 = "No"
  2 = "No, or shared use"
  3 = "Yes, shared use"
  4 = "Yes (shared or exclusive use)"
  5 = "Yes, exclusive use"
;

value FRIDGE_f
  0 = "N/A"
  1 = "No, no refrigerator"
  2 = "Yes"
;

value SINK_f
  0 = "N/A"
  1 = "No, no bathtub or shower"
  2 = "Yes"
;

value STOVE_f
  0 = "N/A"
  1 = "No, no stove or range"
  2 = "Yes"
;

value ROOMS_f
  00 = "N/A"
  01 = "1 room"
  02 = "2"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9 (9+, 1960-2007)"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
  17 = "17"
  18 = "18"
  19 = "19"
  20 = "20"
  21 = "21"
  22 = "22"
  23 = "23"
  24 = "24"
  25 = "25"
  26 = "26"
  27 = "27"
;

value PLUMBING_f
  00 = "N/A"
  10 = "Without complete plumbing"
  11 = "Lacking only hot water"
  12 = "Lacking other or all plumbing facilities"
  13 = "Has some facilities"
  14 = "Has no facilities"
  20 = "With complete plumbing"
  21 = "Used only by household"
  22 = "Shared with others"
;

value HOTWATER_f
  0 = "N/A"
  1 = "No piped water"
  2 = "Cold piped water only"
  3 = "No piped water or cold piped water only (running water outside structure 1960s)"
  4 = "Hot and cold piped water"
;

value SHOWER_f
  0 = "N/A"
  1 = "No, no bathtub or shower"
  2 = "Yes, exclusive use"
  3 = "Yes, shared use"
  4 = "Yes (exclusive or shared use)"
;

value TOILET_f
  0 = "N/A"
  1 = "No indoor flush toilet"
  2 = "Yes, exclusive use"
  3 = "Yes, shared use"
  4 = "Yes (Puerto Rico)"
;

value BUILTYR2_f
  00 = "N/A"
  01 = "1939 or earlier"
  02 = "1940-1949"
  03 = "1950-1959"
  04 = "1960-1969"
  05 = "1970-1979"
  06 = "1980-1989"
  07 = "1990-1994 (1990-1999 in the 2005-2013 ACS and the PRCS)"
  08 = "1995-1999 (1995-1998 in the 2000-2002 ACS)"
  09 = "2000-2004 (1999-2002 in the 2000-2002 ACS)"
  10 = "2005 (2005 or later in the 2005-2007 and 2006-2013 ACS/PRCS)"
  11 = "2006"
  12 = "2007"
  13 = "2008"
  14 = "2009"
  15 = "2010"
  16 = "2011"
  17 = "2012"
  18 = "2013"
;

value UNITSSTR_f
  00 = "N/A"
  01 = "Mobile home or trailer"
  02 = "Boat, tent, van, other"
  03 = "1-family house, detached"
  04 = "1-family house, attached"
  05 = "2-family building"
  06 = "3-4 family building"
  07 = "5-9 family building"
  08 = "10-19 family building"
  09 = "20-49 family building"
  10 = "50+ family building"
;

value BEDROOMS_f
  00 = "N/A"
  01 = "No bedrooms"
  02 = "1"
  03 = "2"
  04 = "3"
  05 = "4 (4+ in 1960)"
  06 = "5+ (1970-2000, ACS, PRCS)"
  07 = "6"
  08 = "7"
  09 = "8"
  10 = "9"
  11 = "10"
  12 = "11"
  13 = "12"
  14 = "13"
  15 = "14"
  16 = "15"
  17 = "16"
  18 = "17"
  19 = "18"
  20 = "19"
  21 = "20"
  22 = "21"
;

value PHONE_f
  0 = "N/A"
  1 = "No, no phone available"
  2 = "Yes, phone available"
  8 = "Suppressed (2012 ACS)"
;

value FUELHEAT_f
  0 = "N/A"
  1 = "No fuel used"
  2 = "Utility gas from  underground pipes serving neighborhood"
  3 = "Bottled, tank, or LP gas"
  4 = "Electricity"
  5 = "Fuel oil, kerosene, other liquid fuels"
  6 = "Coal or coke"
  7 = "Wood"
  8 = "Solar energy"
  9 = "Other"
;

value VEHICLES_f
  0 = "N/A"
  1 = "1 available"
  2 = "2"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6 (6+, 2000, ACS and PRCS)"
  7 = "7+"
  9 = "No vehicles available"
;

value NFAMS_f
  00 = "0 families (vacant unit)"
  01 = "1 family or N/A"
  02 = "2 families"
  03 = "3"
  04 = "4"
  05 = "5"
  06 = "6"
  07 = "7"
  08 = "8"
  09 = "9"
  10 = "10"
  11 = "11"
  12 = "12"
  13 = "13"
  14 = "14"
  15 = "15"
  16 = "16"
  17 = "17"
  18 = "18"
  19 = "19"
  20 = "20"
  21 = "21"
  22 = "22"
  23 = "23"
  24 = "24"
  25 = "25"
  26 = "26"
  27 = "27"
  28 = "28"
  29 = "29"
  30 = "30"
;

value NSUBFAM_f
  0 = "No subfamilies or N/A (GQ/vacant unit)"
  1 = "1 subfamily"
  2 = "2 subfamilies"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6"
  7 = "7"
  8 = "8"
  9 = "9"
;

value NCOUPLES_f
  0 = "0 couples or N/A"
  1 = "1"
  2 = "2"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6"
  7 = "7"
  8 = "8"
  9 = "9"
;

value NMOTHERS_f
  0 = "0 mothers or N/A"
  1 = "1"
  2 = "2"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6"
  7 = "7"
  8 = "8"
;

value NFATHERS_f
  0 = "0 fathers or N/A"
  1 = "1"
  2 = "2"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6"
;

value MULTGEN_f
  0 = "N/A"
  1 = "1 generation"
  2 = "2 generations"
  3 = "3+ generations"
;

value MULTGEND_f
  00 = "N/A"
  10 = "1 generation"
  21 = "2 adjacent generations, adult-children"
  22 = "2 adjacent generations, adult-adult"
  23 = "2 nonadjacent generations"
  31 = "3+ generations (Census 2008 definition)"
  32 = "3+ generations (Additional IPUMS definition)"
;

value CBNSUBFAM_f
  0 = "No subfamilies or N/A (GQ/vacant unit)"
  1 = "1 subfamily"
  2 = "2 subfamilies"
  3 = "3"
  4 = "4"
  5 = "5"
  6 = "6"
  7 = "7"
  8 = "8"
  9 = "9"
;

value RESPMODE_f
  0 = "N/A"
  1 = "Mail"
  2 = "CATI/CAPI"
  3 = "Internet"
;

run;

data IPUMS.usa_00002;
infile ASCIIDAT pad missover lrecl=697;

input
  YEAR        1-4
  MULTYEAR    5-8
  DATANUM     9-10
  SERIAL      11-18
  NUMPREC     19-20
  SUBSAMP     21-22
  HHWT        23-32 .2
  HHTYPE      33-33
  REPWT       34-34
  CLUSTER     35-47
  ADJUST      48-54 .6
  CPI99       55-59 .3
  REGION      60-61
  STATEICP    62-63
  STATEFIP    64-65
  PUMA        66-70
  STRATA      71-82
  CNTRY       83-85
  GQ          86-86
  GQTYPE      87-87
  GQTYPED     88-90
  FARM        91-91
  OWNERSHP    92-92
  OWNERSHPD   93-94
  MORTGAGE    95-95
  MORTGAG2    96-96
  COMMUSE     97-97
  FARMPROD    98-98
  ACREHOUS    99-99
  MORTAMT1    100-104
  MORTAMT2    105-108
  TAXINCL     109-109
  INSINCL     110-110
  PROPINSR    111-114
  PROPTX99    115-116
  OWNCOST     117-121
  RENT        122-125
  RENTGRS     126-129
  RENTMEAL    130-130
  CONDOFEE    131-134
  MOBLHOME    135-139
  COSTELEC    140-143
  COSTGAS     144-147
  COSTWATR    148-151
  COSTFUEL    152-155
  HHINCOME    156-162
  FOODSTMP    163-163
  VALUEH      164-170
  LINGISOL    171-171
  VACANCY     172-172
  KITCHEN     173-173
  FRIDGE      174-174
  SINK        175-175
  STOVE       176-176
  ROOMS       177-178
  PLUMBING    179-180
  HOTWATER    181-181
  SHOWER      182-182
  TOILET      183-183
  BUILTYR2    184-185
  UNITSSTR    186-187
  BEDROOMS    188-189
  PHONE       190-190
  FUELHEAT    191-191
  VEHICLES    192-192
  NFAMS       193-194
  NSUBFAM     195-195
  NCOUPLES    196-196
  NMOTHERS    197-197
  NFATHERS    198-198
  MULTGEN     199-199
  MULTGEND    200-201
  CBNSUBFAM   202-202
  REPWT1      203-208
  REPWT2      209-214
  REPWT3      215-220
  REPWT4      221-226
  REPWT5      227-232
  REPWT6      233-238
  REPWT7      239-244
  REPWT8      245-250
  REPWT9      251-256
  REPWT10     257-262
  REPWT11     263-268
  REPWT12     269-274
  REPWT13     275-280
  REPWT14     281-286
  REPWT15     287-292
  REPWT16     293-298
  REPWT17     299-304
  REPWT18     305-310
  REPWT19     311-316
  REPWT20     317-322
  REPWT21     323-328
  REPWT22     329-334
  REPWT23     335-340
  REPWT24     341-346
  REPWT25     347-352
  REPWT26     353-358
  REPWT27     359-364
  REPWT28     365-370
  REPWT29     371-376
  REPWT30     377-382
  REPWT31     383-388
  REPWT32     389-394
  REPWT33     395-400
  REPWT34     401-406
  REPWT35     407-412
  REPWT36     413-418
  REPWT37     419-424
  REPWT38     425-430
  REPWT39     431-436
  REPWT40     437-442
  REPWT41     443-448
  REPWT42     449-454
  REPWT43     455-460
  REPWT44     461-466
  REPWT45     467-472
  REPWT46     473-478
  REPWT47     479-484
  REPWT48     485-490
  REPWT49     491-496
  REPWT50     497-502
  REPWT51     503-508
  REPWT52     509-514
  REPWT53     515-520
  REPWT54     521-526
  REPWT55     527-532
  REPWT56     533-538
  REPWT57     539-544
  REPWT58     545-550
  REPWT59     551-556
  REPWT60     557-562
  REPWT61     563-568
  REPWT62     569-574
  REPWT63     575-580
  REPWT64     581-586
  REPWT65     587-592
  REPWT66     593-598
  REPWT67     599-604
  REPWT68     605-610
  REPWT69     611-616
  REPWT70     617-622
  REPWT71     623-628
  REPWT72     629-634
  REPWT73     635-640
  REPWT74     641-646
  REPWT75     647-652
  REPWT76     653-658
  REPWT77     659-664
  REPWT78     665-670
  REPWT79     671-676
  REPWT80     677-682
  RESPMODE    683-683
  PERNUM      684-687
  PERWT       688-697 .2
;

label
  YEAR      = "Census year"
  MULTYEAR  = "Actual year of survey, multi-year ACS/PRCS"
  DATANUM   = "Data set number"
  SERIAL    = "Household serial number"
  NUMPREC   = "Number of person records following"
  SUBSAMP   = "Subsample number"
  HHWT      = "Household weight"
  HHTYPE    = "Household Type"
  REPWT     = "Household replicate weights"
  CLUSTER   = "Household cluster for variance estimation"
  ADJUST    = "Adjustment factor, ACS/PRCS"
  CPI99     = "CPI-U adjustment factor to 1999 dollars"
  REGION    = "Census region and division"
  STATEICP  = "State (ICPSR code)"
  STATEFIP  = "State (FIPS code)"
  PUMA      = "Public Use Microdata Area"
  STRATA    = "Household strata for variance estimation"
  CNTRY     = "Country"
  GQ        = "Group quarters status"
  GQTYPE    = "Group quarters type [general version]"
  GQTYPED   = "Group quarters type [detailed version]"
  FARM      = "Farm status"
  OWNERSHP  = "Ownership of dwelling (tenure) [general version]"
  OWNERSHPD = "Ownership of dwelling (tenure) [detailed version]"
  MORTGAGE  = "Mortgage status"
  MORTGAG2  = "Second mortgage status"
  COMMUSE   = "Commercial use"
  FARMPROD  = "Sales of farm products"
  ACREHOUS  = "House acreage"
  MORTAMT1  = "First mortgage monthly payment"
  MORTAMT2  = "Second mortgage monthly payment"
  TAXINCL   = "Mortgage payment includes property taxes"
  INSINCL   = "Mortgage payment includes property insurance"
  PROPINSR  = "Annual property insurance cost"
  PROPTX99  = "Annual property taxes, 1990"
  OWNCOST   = "Selected monthly owner costs"
  RENT      = "Monthly contract rent"
  RENTGRS   = "Monthly gross rent"
  RENTMEAL  = "Meals included in rent"
  CONDOFEE  = "Monthly condominium fee"
  MOBLHOME  = "Annual mobile home costs"
  COSTELEC  = "Annual electricity cost"
  COSTGAS   = "Annual gas cost"
  COSTWATR  = "Annual water cost"
  COSTFUEL  = "Annual home heating fuel cost"
  HHINCOME  = "Total household income"
  FOODSTMP  = "Food stamp recipiency"
  VALUEH    = "House value"
  LINGISOL  = "Linguistic isolation"
  VACANCY   = "Vacancy status"
  KITCHEN   = "Kitchen or cooking facilities"
  FRIDGE    = "Refrigerator"
  SINK      = "Sink with faucet"
  STOVE     = "Stove or range"
  ROOMS     = "Number of rooms"
  PLUMBING  = "Plumbing facilities"
  HOTWATER  = "Hot and cold piped water"
  SHOWER    = "Bathtub or shower"
  TOILET    = "Flush toilet"
  BUILTYR2  = "Age of structure, decade"
  UNITSSTR  = "Units in structure"
  BEDROOMS  = "Number of bedrooms"
  PHONE     = "Telephone availability"
  FUELHEAT  = "Home heating fuel"
  VEHICLES  = "Vehicles available"
  NFAMS     = "Number of families in household"
  NSUBFAM   = "Number of subfamilies in household"
  NCOUPLES  = "Number of married couples in household"
  NMOTHERS  = "Number of mothers in household"
  NFATHERS  = "Number of fathers in household"
  MULTGEN   = "Multigenerational household [general version]"
  MULTGEND  = "Multigenerational household [detailed version]"
  CBNSUBFAM = "Number of subfamilies in household (original Census Bureau classification)"
  REPWT1    = "Household replicate weight 1"
  REPWT2    = "Household replicate weight 2"
  REPWT3    = "Household replicate weight 3"
  REPWT4    = "Household replicate weight 4"
  REPWT5    = "Household replicate weight 5"
  REPWT6    = "Household replicate weight 6"
  REPWT7    = "Household replicate weight 7"
  REPWT8    = "Household replicate weight 8"
  REPWT9    = "Household replicate weight 9"
  REPWT10   = "Household replicate weight 10"
  REPWT11   = "Household replicate weight 11"
  REPWT12   = "Household replicate weight 12"
  REPWT13   = "Household replicate weight 13"
  REPWT14   = "Household replicate weight 14"
  REPWT15   = "Household replicate weight 15"
  REPWT16   = "Household replicate weight 16"
  REPWT17   = "Household replicate weight 17"
  REPWT18   = "Household replicate weight 18"
  REPWT19   = "Household replicate weight 19"
  REPWT20   = "Household replicate weight 20"
  REPWT21   = "Household replicate weight 21"
  REPWT22   = "Household replicate weight 22"
  REPWT23   = "Household replicate weight 23"
  REPWT24   = "Household replicate weight 24"
  REPWT25   = "Household replicate weight 25"
  REPWT26   = "Household replicate weight 26"
  REPWT27   = "Household replicate weight 27"
  REPWT28   = "Household replicate weight 28"
  REPWT29   = "Household replicate weight 29"
  REPWT30   = "Household replicate weight 30"
  REPWT31   = "Household replicate weight 31"
  REPWT32   = "Household replicate weight 32"
  REPWT33   = "Household replicate weight 33"
  REPWT34   = "Household replicate weight 34"
  REPWT35   = "Household replicate weight 35"
  REPWT36   = "Household replicate weight 36"
  REPWT37   = "Household replicate weight 37"
  REPWT38   = "Household replicate weight 38"
  REPWT39   = "Household replicate weight 39"
  REPWT40   = "Household replicate weight 40"
  REPWT41   = "Household replicate weight 41"
  REPWT42   = "Household replicate weight 42"
  REPWT43   = "Household replicate weight 43"
  REPWT44   = "Household replicate weight 44"
  REPWT45   = "Household replicate weight 45"
  REPWT46   = "Household replicate weight 46"
  REPWT47   = "Household replicate weight 47"
  REPWT48   = "Household replicate weight 48"
  REPWT49   = "Household replicate weight 49"
  REPWT50   = "Household replicate weight 50"
  REPWT51   = "Household replicate weight 51"
  REPWT52   = "Household replicate weight 52"
  REPWT53   = "Household replicate weight 53"
  REPWT54   = "Household replicate weight 54"
  REPWT55   = "Household replicate weight 55"
  REPWT56   = "Household replicate weight 56"
  REPWT57   = "Household replicate weight 57"
  REPWT58   = "Household replicate weight 58"
  REPWT59   = "Household replicate weight 59"
  REPWT60   = "Household replicate weight 60"
  REPWT61   = "Household replicate weight 61"
  REPWT62   = "Household replicate weight 62"
  REPWT63   = "Household replicate weight 63"
  REPWT64   = "Household replicate weight 64"
  REPWT65   = "Household replicate weight 65"
  REPWT66   = "Household replicate weight 66"
  REPWT67   = "Household replicate weight 67"
  REPWT68   = "Household replicate weight 68"
  REPWT69   = "Household replicate weight 69"
  REPWT70   = "Household replicate weight 70"
  REPWT71   = "Household replicate weight 71"
  REPWT72   = "Household replicate weight 72"
  REPWT73   = "Household replicate weight 73"
  REPWT74   = "Household replicate weight 74"
  REPWT75   = "Household replicate weight 75"
  REPWT76   = "Household replicate weight 76"
  REPWT77   = "Household replicate weight 77"
  REPWT78   = "Household replicate weight 78"
  REPWT79   = "Household replicate weight 79"
  REPWT80   = "Household replicate weight 80"
  RESPMODE  = "Response mode"
  PERNUM    = "Person number in sample unit"
  PERWT     = "Person weight"
;

format
  YEAR       YEAR_f.
  NUMPREC    NUMPREC_f.
  SUBSAMP    SUBSAMP_f.
  HHTYPE     HHTYPE_f.
  REPWT      REPWT_f.
  REGION     REGION_f.
  STATEICP   STATEICP_f.
  STATEFIP   STATEFIP_f.
  CNTRY      CNTRY_f.
  GQ         GQ_f.
  GQTYPE     GQTYPE_f.
  GQTYPED    GQTYPED_f.
  FARM       FARM_f.
  OWNERSHP   OWNERSHP_f.
  OWNERSHPD  OWNERSHPD_f.
  MORTGAGE   MORTGAGE_f.
  MORTGAG2   MORTGAG2_f.
  COMMUSE    COMMUSE_f.
  FARMPROD   FARMPROD_f.
  ACREHOUS   ACREHOUS_f.
  MORTAMT1   MORTAMT1_f.
  MORTAMT2   MORTAMT2_f.
  TAXINCL    TAXINCL_f.
  INSINCL    INSINCL_f.
  PROPINSR   PROPINSR_f.
  PROPTX99   PROPTX99_f.
  OWNCOST    OWNCOST_f.
  RENTGRS    RENTGRS_f.
  RENTMEAL   RENTMEAL_f.
  CONDOFEE   CONDOFEE_f.
  MOBLHOME   MOBLHOME_f.
  COSTELEC   COSTELEC_f.
  COSTGAS    COSTGAS_f.
  COSTWATR   COSTWATR_f.
  COSTFUEL   COSTFUEL_f.
  HHINCOME   HHINCOME_f.
  FOODSTMP   FOODSTMP_f.
  LINGISOL   LINGISOL_f.
  VACANCY    VACANCY_f.
  KITCHEN    KITCHEN_f.
  FRIDGE     FRIDGE_f.
  SINK       SINK_f.
  STOVE      STOVE_f.
  ROOMS      ROOMS_f.
  PLUMBING   PLUMBING_f.
  HOTWATER   HOTWATER_f.
  SHOWER     SHOWER_f.
  TOILET     TOILET_f.
  BUILTYR2   BUILTYR2_f.
  UNITSSTR   UNITSSTR_f.
  BEDROOMS   BEDROOMS_f.
  PHONE      PHONE_f.
  FUELHEAT   FUELHEAT_f.
  VEHICLES   VEHICLES_f.
  NFAMS      NFAMS_f.
  NSUBFAM    NSUBFAM_f.
  NCOUPLES   NCOUPLES_f.
  NMOTHERS   NMOTHERS_f.
  NFATHERS   NFATHERS_f.
  MULTGEN    MULTGEN_f.
  MULTGEND   MULTGEND_f.
  CBNSUBFAM  CBNSUBFAM_f.
  RESPMODE   RESPMODE_f.
;

format
  HHWT       11.2
  CLUSTER    13.
  STRATA     12.
  PERWT      11.2
;

run;
