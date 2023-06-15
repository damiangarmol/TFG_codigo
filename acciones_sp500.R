#SP500 ACCIONES - DAMIÁN GARCÍA  HEMOS ESTADO UTLIZANDO INVUS500 en vez de SP500

# Carga de Librerías & Datos ----------------------------------------------

library(tidyverse)
library(tidyquery)
library(dplyr)
library(fuzzyjoin)

#Carga de datos

mmm <- read_csv("Data/Companies - SP500/MMM Historical Data.csv")
abbot_labs <-  read_csv("Data/Companies - SP500/ABT Historical Data.csv")
abbvie <- read_csv("Data/Companies - SP500/ABBV Historical Data.csv")
accenture <-  read_csv("Data/Companies - SP500/ACN Historical Data.csv")
activision_blizard <-  read_csv("Data/Companies - SP500/ATVI Historical Data.csv")
adobe <-  read_csv("Data/Companies - SP500/ADBE Historical Data.csv")
adp <-  read_csv("Data/Companies - SP500/ADP Historical Data.csv")
advance_auto_parts <-  read_csv("Data/Companies - SP500/AAP Historical Data.csv")
aflac <-  read_csv("Data/Companies - SP500/AFL Historical Data.csv")
agilient_tech <-  read_csv("Data/Companies - SP500/A Historical Data.csv")
aig <-  read_csv("Data/Companies - SP500/AIG Historical Data.csv")
air_products <-  read_csv("Data/Companies - SP500/APD Historical Data.csv")
akamai <-  read_csv("Data/Companies - SP500/AKAM Historical Data.csv")
alaska_air <-  read_csv("Data/Companies - SP500/ALK Historical Data.csv")
albemarle <-  read_csv("Data/Companies - SP500/ALB Historical Data.csv")
alexandria_re <-  read_csv("Data/Companies - SP500/ARE Historical Data.csv")
align <-  read_csv("Data/Companies - SP500/ALGN Historical Data.csv")
allegion_plc<-  read_csv("Data/Companies - SP500/ALLE Historical Data.csv")
alliant_energy<-  read_csv("Data/Companies - SP500/LNT Historical Data.csv")
allstate <-  read_csv("Data/Companies - SP500/ALL Historical Data.csv")
alphabet_a <-  read_csv("Data/Companies - SP500/GOOGL Historical Data.csv")
alphabet_c <-  read_csv("Data/Companies - SP500/GOOG Historical Data.csv")
altria <-  read_csv("Data/Companies - SP500/MO Historical Data.csv")
amazon <-  read_csv("Data/Companies - SP500/AMZN Historical Data.csv")
amd <-  read_csv("Data/Companies - SP500/AMD Historical Data.csv")
ameren<-  read_csv("Data/Companies - SP500/AEE Historical Data.csv")
american_airlines<-  read_csv("Data/Companies - SP500/AAL Historical Data.csv")
american_electrics <-  read_csv("Data/Companies - SP500/AEP Historical Data.csv")
american_express <-  read_csv("Data/Companies - SP500/AXP Historical Data.csv")
american_tower <-  read_csv("Data/Companies - SP500/AMT Historical Data.csv")
american_water_works <-  read_csv("Data/Companies - SP500/AWK Historical Data.csv")
ameriprise_financial <-  read_csv("Data/Companies - SP500/AMP Historical Data.csv")
amerisource_bergen <-  read_csv("Data/Companies - SP500/ABC Historical Data.csv")
ametek <-  read_csv("Data/Companies - SP500/AME Historical Data.csv")
amgen <-  read_csv("Data/Companies - SP500/AMGN Historical Data.csv")
amphenol <-  read_csv("Data/Companies - SP500/APH Historical Data.csv")
analog_devices <-  read_csv("Data/Companies - SP500/ADI Historical Data.csv")
ansys <-  read_csv("Data/Companies - SP500/ANSS Historical Data.csv")
ao_smith <-  read_csv("Data/Companies - SP500/AOS Historical Data.csv")
aon <-  read_csv("Data/Companies - SP500/AON Historical Data.csv")
apa_corp <-  read_csv("Data/Companies - SP500/APA Historical Data.csv")
apple <-  read_csv("Data/Companies - SP500/AAPL Historical Data.csv")
applied_materials <-  read_csv("Data/Companies - SP500/AMAT Historical Data.csv")
aptiv <-  read_csv("Data/Companies - SP500/APTV Historical Data.csv")
archer_daniel_midland <-  read_csv("Data/Companies - SP500/ADM Historical Data.csv")
arista_networks <-  read_csv("Data/Companies - SP500/ANET Historical Data.csv")
arthur_j_gallagher <-  read_csv("Data/Companies - SP500/AJG Historical Data.csv")
assurant <-  read_csv("Data/Companies - SP500/AIZ Historical Data.csv")
at_and_t <-  read_csv("Data/Companies - SP500/T Historical Data.csv")
atmos_energy <-  read_csv("Data/Companies - SP500/ATO Historical Data.csv")
autodesk <-  read_csv("Data/Companies - SP500/ADSK Historical Data.csv")
autozone <-  read_csv("Data/Companies - SP500/AZO Historical Data.csv")
avalonbay <-  read_csv("Data/Companies - SP500/AVB Historical Data.csv")
avery_dennison <-  read_csv("Data/Companies - SP500/AVY Historical Data.csv")
baker_hugues <-  read_csv("Data/Companies - SP500/BKR Historical Data.csv")
ball <-  read_csv("Data/Companies - SP500/BALL Historical Data.csv")
bank_of_america <-  read_csv("Data/Companies - SP500/BAC Historical Data.csv ")
bank_of_ny_mellon <-  read_csv("Data/Companies - SP500/BK Historical Data.csv")
bath_body_works <-  read_csv("Data/Companies - SP500/BBWI Historical Data.csv")
baxter <-  read_csv("Data/Companies - SP500/BAX Historical Data.csv")
becton_dickinson <- read_csv("Data/Companies - SP500/BDX Historical Data.csv")
berkshire_hathaway_b <- read_csv("Data/Companies - SP500/BRKb Historical Data.csv")
best_buy <- read_csv("Data/Companies - SP500/BBY Historical Data.csv")
bio_rad_labs <- read_csv("Data/Companies - SP500/BIO Historical Data.csv")
bio_techne  <- read_csv("Data/Companies - SP500/TECH Historical Data.csv")
biogen  <- read_csv("Data/Companies - SP500/BIIB Historical Data.csv")
blackrock <- read_csv("Data/Companies - SP500/BLK Historical Data.csv")
boeing <- read_csv("Data/Companies - SP500/BA Historical Data.csv")
booking  <- read_csv("Data/Companies - SP500/BKNG Historical Data.csv")
borgwarner <- read_csv("Data/Companies - SP500/BWA Historical Data.csv")
boston_properties <- read_csv("Data/Companies - SP500/BXP Historical Data.csv")
boston_scientific <- read_csv("Data/Companies - SP500/BSX Historical Data.csv")
briston_myers_squibb <- read_csv("Data/Companies - SP500/BMY Historical Data.csv")
broadcom <- read_csv("Data/Companies - SP500/AVGO Historical Data.csv")
broadridge <- read_csv("Data/Companies - SP500/BR Historical Data.csv")
brown_forman <- read_csv("Data/Companies - SP500/BFb Historical Data.csv")
brown_brown <- read_csv("Data/Companies - SP500/BRO Historical Data.csv")
candence_design <- read_csv("Data/Companies - SP500/CDNS Historical Data.csv")
caesars <- read_csv("Data/Companies - SP500/CZR Historical Data.csv")
camden_property <- read_csv("Data/Companies - SP500/CPT Historical Data.csv")
campbell_soup <- read_csv("Data/Companies - SP500/CPB Historical Data.csv")
capital_one_financial <- read_csv("Data/Companies - SP500/COF Historical Data.csv")
cardinal_health <- read_csv("Data/Companies - SP500/CAH Historical Data.csv")
carmax <- read_csv("Data/Companies - SP500/KMX Historical Data.csv")
carnival_corp <- read_csv("Data/Companies - SP500/CCL Historical Data.csv")
carrier_global <- read_csv("Data/Companies - SP500/CARR Historical Data.csv")
catalent_inc <- read_csv("Data/Companies - SP500/CTLT Historical Data.csv")
caterpillar <- read_csv("Data/Companies - SP500/CAT Historical Data.csv")
cboe_global <- read_csv("Data/Companies - SP500/CBOE Historical Data.csv")
cbre_a <- read_csv("Data/Companies - SP500/CBRE Historical Data.csv")
cdw_corp <- read_csv("Data/Companies - SP500/CDW Historical Data.csv")
celanese <- read_csv("Data/Companies - SP500/CE Historical Data.csv")
centene <- read_csv("Data/Companies - SP500/CNC Historical Data.csv")
centerpoint_energy <- read_csv("Data/Companies - SP500/CNP Historical Data.csv")
ceridian_hcm <- read_csv("Data/Companies - SP500/CDAY Historical Data.csv")
cf_industries <- read_csv("Data/Companies - SP500/CF Historical Data.csv")
ch_robinson <- read_csv("Data/Companies - SP500/CHRW Historical Data.csv")
charles_river_laboratories <- read_csv("Data/Companies - SP500/CRL Historical Data.csv")
charles_schwab <- read_csv("Data/Companies - SP500/SCHW Historical Data.csv") 
charter_communication <- read_csv("Data/Companies - SP500/CHTR Historical Data.csv")
chevron <- read_csv("Data/Companies - SP500/SCHW Historical Data.csv")
chipotle_mexican_grill <- read_csv("Data/Companies - SP500/CMG Historical Data.csv")
chubb <- read_csv("Data/Companies - SP500/CB Historical Data.csv")
church_dwight <- read_csv("Data/Companies - SP500/CHD Historical Data.csv")
cigna <- read_csv("Data/Companies - SP500/CI Historical Data.csv")
cincinnati_financial <- read_csv("Data/Companies - SP500/CINF Historical Data.csv")
cintas <- read_csv("Data/Companies - SP500/CTAS Historical Data.csv")
cisco <- read_csv("Data/Companies - SP500/CSCO Historical Data.csv")
citigroup <- read_csv("Data/Companies - SP500/C Historical Data.csv")
citizens_financial_group <- read_csv("Data/Companies - SP500/CFG Historical Data.csv")
clorox <- read_csv("Data/Companies - SP500/CLX Historical Data.csv")
cme_group <- read_csv("Data/Companies - SP500/CME Historical Data.csv")
cms_energy <- read_csv("Data/Companies - SP500/CMS Historical Data.csv")
coca_cola <- read_csv("Data/Companies - SP500/KO Historical Data.csv")
cognizant_a <- read_csv("Data/Companies - SP500/CTSH Historical Data.csv")
colgate_palmolive <- read_csv("Data/Companies - SP500/CL Historical Data.csv")
comcast <- read_csv("Data/Companies - SP500/CMCSA Historical Data.csv")
comerica <- read_csv("Data/Companies - SP500/CMA Historical Data.csv")
conagra_foods <- read_csv("Data/Companies - SP500/CAG Historical Data.csv")
conocophilips <- read_csv("Data/Companies - SP500/COP Historical Data.csv")
consolidated_edison <- read_csv("Data/Companies - SP500/ED Historical Data.csv")
constellation_brands_a <- read_csv("Data/Companies - SP500/STZ Historical Data.csv")
gy <- read_csv("Data/Companies - SP500/CEG Historical Data.csv")
cooper <- read_csv("Data/Companies - SP500/COO Historical Data.csv")
copart <- read_csv("Data/Companies - SP500/CPRT Historical Data.csv")
corning <- read_csv("Data/Companies - SP500/GLW Historical Data.csv")
corteva <- read_csv("Data/Companies - SP500/CTVA Historical Data.csv")
costco <- read_csv("Data/Companies - SP500/COST Historical Data.csv")
coterra_energy <- read_csv("Data/Companies - SP500/CTRA Historical Data.csv")
crown_castle <- read_csv("Data/Companies - SP500/CCI Historical Data.csv")
csx <- read_csv("Data/Companies - SP500/CSX Historical Data.csv")
cummins <- read_csv("Data/Companies - SP500/CMI Historical Data.csv")
cvs_health_corp <- read_csv("Data/Companies - SP500/CVS Historical Data.csv")
danaher <- read_csv("Data/Companies - SP500/DHR Historical Data.csv")
darden_restaurants <- read_csv("Data/Companies - SP500/DRI Historical Data.csv")
davita <- read_csv("Data/Companies - SP500/DVA Historical Data.csv")
deere_company <- read_csv("Data/Companies - SP500/DE Historical Data.csv")
delta_airlines <- read_csv("Data/Companies - SP500/DAL Historical Data.csv")
dentsply <- read_csv("Data/Companies - SP500/XRAY Historical Data.csv")
devon_energy <- read_csv("Data/Companies - SP500/DVN Historical Data.csv")
dexcom <- read_csv("Data/Companies - SP500/DXCM Historical Data.csv")
diamondback <- read_csv("Data/Companies - SP500/FANG Historical Data.csv")
digital <- read_csv("Data/Companies - SP500/DLR Historical Data.csv")
discover <- read_csv("Data/Companies - SP500/DFS Historical Data.csv")
dish_network <- read_csv("Data/Companies - SP500/DISH Historical Data.csv")
dollar_general <- read_csv("Data/Companies - SP500/DG Historical Data.csv")
dollar_tree <- read_csv("Data/Companies - SP500/DLTR Historical Data.csv")
dominion_energy <- read_csv("Data/Companies - SP500/D Historical Data.csv")
dominos_pizza <- read_csv("Data/Companies - SP500/DPZ Historical Data.csv")
dover <- read_csv("Data/Companies - SP500/DOV Historical Data.csv")
dow <- read_csv("Data/Companies - SP500/DOW Historical Data.csv")
dr_norton <- read_csv("Data/Companies - SP500/DHI Historical Data.csv")
dte_energy <- read_csv("Data/Companies - SP500/DTE Historical Data.csv")
duke_energy <- read_csv("Data/Companies - SP500/DUK Historical Data.csv")
dupont_de_nemours <- read_csv("Data/Companies - SP500/DD Historical Data.csv")
dxc_technology <- read_csv("Data/Companies - SP500/DXC Historical Data.csv")
eastman_chemical <- read_csv("Data/Companies - SP500/EMN Historical Data.csv")
eaton <- read_csv("Data/Companies - SP500/ETN Historical Data.csv")
ebay <- read_csv("Data/Companies - SP500/EBAY Historical Data.csv")
ecolab <- read_csv("Data/Companies - SP500/ECL Historical Data.csv")
edison <- read_csv("Data/Companies - SP500/EIX Historical Data.csv")
edwards_lifesciences <- read_csv("Data/Companies - SP500/EW Historical Data.csv")
electronic_arts <- read_csv("Data/Companies - SP500/EA Historical Data.csv")
elevance_health <- read_csv("Data/Companies - SP500/ELV Historical Data.csv")
eli_lilly <- read_csv("Data/Companies - SP500/LLY Historical Data.csv")
emerson <- read_csv("Data/Companies - SP500/EMR Historical Data.csv")
enphase <- read_csv("Data/Companies - SP500/ENPH Historical Data.csv")
entergy <- read_csv("Data/Companies - SP500/ETR Historical Data.csv")
eog_resources <- read_csv("Data/Companies - SP500/EOG Historical Data.csv")
epam_system <- read_csv("Data/Companies - SP500/EPAM Historical Data.csv")
equifax <- read_csv("Data/Companies - SP500/EFX Historical Data.csv")
equinix <- read_csv("Data/Companies - SP500/EQIX Historical Data.csv")
equity_residential <- read_csv("Data/Companies - SP500/EQR Historical Data.csv")
essex_property <- read_csv("Data/Companies - SP500/ESS Historical Data.csv")
estee_lauder <- read_csv("Data/Companies - SP500/EL Historical Data.csv")
etsy_inc <- read_csv("Data/Companies - SP500/ETSY Historical Data.csv")
everest <- read_csv("Data/Companies - SP500/RE Historical Data.csv")
evergy <- read_csv("Data/Companies - SP500/EVRG Historical Data.csv")
eversource_energy <- read_csv("Data/Companies - SP500/ES Historical Data.csv")
exelon <- read_csv("Data/Companies - SP500/EXC Historical Data.csv")
expedia <- read_csv("Data/Companies - SP500/EXPE Historical Data.csv")
expeditors_washington <- read_csv("Data/Companies - SP500/EXPD Historical Data.csv")
extra_space_storage <- read_csv("Data/Companies - SP500/EXR Historical Data.csv")
exxon_mobil <- read_csv("Data/Companies - SP500/XOM Historical Data.csv")
f5_networks <- read_csv("Data/Companies - SP500/FFIV Historical Data.csv")
factset_research <- read_csv("Data/Companies - SP500/FDS Historical Data.csv")
fastenal <- read_csv("Data/Companies - SP500/FAST Historical Data.csv")
federal_realty <- read_csv("Data/Companies - SP500/FRT Historical Data.csv")
fedex <- read_csv("Data/Companies - SP500/FDX Historical Data.csv")
fidelity_national_info <- read_csv("Data/Companies - SP500/FIS Historical Data.csv")
fifth_third <- read_csv("Data/Companies - SP500/FITB Historical Data.csv")
first_republic_bank <- read_csv("Data/Companies - SP500/FRC Historical Data.csv")
firstenergy <- read_csv("Data/Companies - SP500/FE Historical Data.csv")
fiserv <- read_csv("Data/Companies - SP500/FISV Historical Data.csv")
fleetcor <- read_csv("Data/Companies - SP500/FLT Historical Data.csv")
fmc <- read_csv("Data/Companies - SP500/FMC Historical Data.csv")
ford_motor <- read_csv("Data/Companies - SP500/F Historical Data.csv")
fortinet <- read_csv("Data/Companies - SP500/FTNT Historical Data.csv")
fortive <- read_csv("Data/Companies - SP500/FTV Historical Data.csv")
fortune_brands <- read_csv("Data/Companies - SP500/FBIN Historical Data.csv")
fox_corp_a <- read_csv("Data/Companies - SP500/FOXA Historical Data.csv")
fox_corp_b <- read_csv("Data/Companies - SP500/FOX Historical Data.csv")
franklin_resources <- read_csv("Data/Companies - SP500/BEN Historical Data.csv")
freeport_mcmoran <- read_csv("Data/Companies - SP500/FCX Historical Data.csv")
garmin <- read_csv("Data/Companies - SP500/GRMN Historical Data.csv")
gartner <- read_csv("Data/Companies - SP500/IT Historical Data.csv")
gen_digital <- read_csv("Data/Companies - SP500/GEN Historical Data.csv")
generac <- read_csv("Data/Companies - SP500/GNRC Historical Data.csv")
general_dynamics <- read_csv("Data/Companies - SP500/GD Historical Data.csv")
general_electric <- read_csv("Data/Companies - SP500/GE Historical Data.csv")
general_mills <- read_csv("Data/Companies - SP500/GIS Historical Data.csv")
general_motors <- read_csv("Data/Companies - SP500/GM Historical Data.csv")
genuine_parts <- read_csv("Data/Companies - SP500/GPC Historical Data.csv")
gilead <- read_csv("Data/Companies - SP500/GILD Historical Data.csv")
global_payments <- read_csv("Data/Companies - SP500/GPN Historical Data.csv")
globe_life <- read_csv("Data/Companies - SP500/GL Historical Data.csv")
goldman_sachs <- read_csv("Data/Companies - SP500/GS Historical Data.csv")
halliburton <- read_csv("Data/Companies - SP500/HAL Historical Data.csv")
hartford <- read_csv("Data/Companies - SP500/HIG Historical Data.csv")
hasbro <- read_csv("Data/Companies - SP500/HAS Historical Data.csv")
hca <- read_csv("Data/Companies - SP500/HCA Historical Data.csv")
healthpeak_properties <- read_csv("Data/Companies - SP500/PEAK Historical Data.csv")
henry_schein <- read_csv("Data/Companies - SP500/HSIC Historical Data.csv")
hershey_co <- read_csv("Data/Companies - SP500/HSY Historical Data.csv")
hess <- read_csv("Data/Companies - SP500/HES Historical Data.csv")
hewlett_packard <- read_csv("Data/Companies - SP500/HPE Historical Data.csv")
hilton_worldwide <- read_csv("Data/Companies - SP500/HLT Historical Data.csv")
hologic <- read_csv("Data/Companies - SP500/HOLX Historical Data.csv")
home_depot <- read_csv("Data/Companies - SP500/HD Historical Data.csv")
honeywell <- read_csv("Data/Companies - SP500/HON Historical Data.csv")
hormel_foods <- read_csv("Data/Companies - SP500/HRL Historical Data.csv")
host_hotels_resorts <- read_csv("Data/Companies - SP500/HST Historical Data.csv")
hownet <- read_csv("Data/Companies - SP500/HWM Historical Data.csv")
hp_inc <- read_csv("Data/Companies - SP500/HPQ Historical Data.csv")
humana <- read_csv("Data/Companies - SP500/HUM Historical Data.csv")
huntingon_bancshares <- read_csv("Data/Companies - SP500/HBAN Historical Data.csv")
huntingon_ingalls_industries <- read_csv("Data/Companies - SP500/HII Historical Data.csv")
ibm <- read_csv("Data/Companies - SP500/IBM Historical Data.csv")
ice <- read_csv("Data/Companies - SP500/ICE Historical Data.csv")
idex <- read_csv("Data/Companies - SP500/IEX Historical Data.csv")
idexx_labels <- read_csv("Data/Companies - SP500/IDXX Historical Data.csv")
iff <- read_csv("Data/Companies - SP500/IFF Historical Data.csv")
illinois_tool_works <- read_csv("Data/Companies - SP500/ITW Historical Data.csv")
illumina <- read_csv("Data/Companies - SP500/ILMN Historical Data.csv")
incyte <- read_csv("Data/Companies - SP500/INCY Historical Data.csv")
ingersoll_rand <- read_csv("Data/Companies - SP500/IR Historical Data.csv")
intel <- read_csv("Data/Companies - SP500/INTC Historical Data.csv")
internation_paper <- read_csv("Data/Companies - SP500/IP Historical Data.csv")
intuit <- read_csv("Data/Companies - SP500/INTU Historical Data.csv")
intuitive_surgical <- read_csv("Data/Companies - SP500/ISRG Historical Data.csv")
invesco <- read_csv("Data/Companies - SP500/IVZ Historical Data.csv")
ipg <- read_csv("Data/Companies - SP500/IPG Historical Data.csv")
ipg_photonics <- read_csv("Data/Companies - SP500/IPGP Historical Data.csv")
iqvia_holdings <- read_csv("Data/Companies - SP500/IQV Historical Data.csv")
iron_mountain <- read_csv("Data/Companies - SP500/IRM Historical Data.csv")
j_j <- read_csv("Data/Companies - SP500/JNJ Historical Data.csv")
jack_henry_associates <- read_csv("Data/Companies - SP500/JKHY Historical Data.csv")
jacobs_engineering <- read_csv("Data/Companies - SP500/J Historical Data.csv")
jb_hunt <- read_csv("Data/Companies - SP500/JBHT Historical Data.csv")
jm_smucker <- read_csv("Data/Companies - SP500/SJM Historical Data.csv")
joshnson_controls <- read_csv("Data/Companies - SP500/JCI Historical Data.csv")
jpmorgan <- read_csv("Data/Companies - SP500/JPM Historical Data.csv")
juniper <- read_csv("Data/Companies - SP500/JNPR Historical Data.csv")
kellogg <- read_csv("Data/Companies - SP500/K Historical Data.csv")
keycorp <- read_csv("Data/Companies - SP500/KEY Historical Data.csv")
keysight_technologies <- read_csv("Data/Companies - SP500/KEYS Historical Data.csv")
kimberley_clark <- read_csv("Data/Companies - SP500/KMB Historical Data.csv")
kimco_reality <- read_csv("Data/Companies - SP500/KIM Historical Data.csv")
kinder_morgan <- read_csv("Data/Companies - SP500/KMI Historical Data.csv")
kla_corp <- read_csv("Data/Companies - SP500/KLAC Historical Data.csv")
kraft_heinz <- read_csv("Data/Companies - SP500/KHC Historical Data.csv")
kroger <- read_csv("Data/Companies - SP500/KR Historical Data.csv")
l3harris_technologies <- read_csv("Data/Companies - SP500/LHX Historical Data.csv")
laboratory_america <- read_csv("Data/Companies - SP500/LH Historical Data.csv")
lam_research <- read_csv("Data/Companies - SP500/LRCX Historical Data.csv")
lamb_weston_holdings <- read_csv("Data/Companies - SP500/LW Historical Data.csv")
las_vegas_sands <- read_csv("Data/Companies - SP500/LVS Historical Data.csv")
leidos <- read_csv("Data/Companies - SP500/LDOS Historical Data.csv")
lennar <- read_csv("Data/Companies - SP500/LEN Historical Data.csv")
lincoln_national <- read_csv("Data/Companies - SP500/LNC Historical Data.csv")
linde_plc <- read_csv("Data/Companies - SP500/LIN Historical Data.csv")
live_nation_entertainment <- read_csv("Data/Companies - SP500/LYV Historical Data.csv")
lkq <- read_csv("Data/Companies - SP500/LKQ Historical Data.csv")
lockheed_martin <- read_csv("Data/Companies - SP500/LMT Historical Data.csv")
loews <- read_csv("Data/Companies - SP500/L Historical Data.csv")
lowes <- read_csv("Data/Companies - SP500/LOW Historical Data.csv")
lumen_technologies <- read_csv("Data/Companies - SP500/LUMN Historical Data.csv")
lyondellbasell_industries <- read_csv("Data/Companies - SP500/LYB Historical Data.csv")
m_t_bank <- read_csv("Data/Companies - SP500/MTB Historical Data.csv")
marathon_oil <- read_csv("Data/Companies - SP500/MRO Historical Data.csv")
marathon_petroleum <- read_csv("Data/Companies - SP500/MPC Historical Data.csv")
marketaxesss <- read_csv("Data/Companies - SP500/MKTX Historical Data.csv")
marriott_ink <- read_csv("Data/Companies - SP500/MAR Historical Data.csv")
marsh_mclennan <- read_csv("Data/Companies - SP500/MMC Historical Data.csv")
martin_marietta_materials <- read_csv("Data/Companies - SP500/MLM Historical Data.csv")
masco <- read_csv("Data/Companies - SP500/MAS Historical Data.csv")
mastercard <- read_csv("Data/Companies - SP500/MA Historical Data.csv")
match_group <- read_csv("Data/Companies - SP500/MTCH Historical Data.csv")
mccormick_co <- read_csv("Data/Companies - SP500/MKC Historical Data.csv")
mcdonald <- read_csv("Data/Companies - SP500/MCD Historical Data.csv")
mckesson <- read_csv("Data/Companies - SP500/MCK Historical Data.csv")
medtronic <- read_csv("Data/Companies - SP500/MDT Historical Data.csv")
merck_co <- read_csv("Data/Companies - SP500/MRK Historical Data.csv")
meta_platforms <- read_csv("Data/Companies - SP500/META Historical Data.csv")
metlife <- read_csv("Data/Companies - SP500/MET Historical Data.csv")
mettler_toledo <- read_csv("Data/Companies - SP500/MTD Historical Data.csv")
mgm <- read_csv("Data/Companies - SP500/MGM Historical Data.csv")
microchip <- read_csv("Data/Companies - SP500/MCHP Historical Data.csv")
micron <- read_csv("Data/Companies - SP500/MU Historical Data.csv")
microsoft <- read_csv("Data/Companies - SP500/MSFT Historical Data.csv")
mid_america_apartment <- read_csv("Data/Companies - SP500/MAA Historical Data.csv")
moderna <- read_csv("Data/Companies - SP500/MRNA Historical Data.csv")
mohawk_industries <- read_csv("Data/Companies - SP500/MHK Historical Data.csv")
molina_healthcare <- read_csv("Data/Companies - SP500/MOH Historical Data.csv")
molson_coors_brewin <- read_csv("Data/Companies - SP500/TAP Historical Data.csv")
mondelez <- read_csv("Data/Companies - SP500/MDLZ Historical Data.csv")
monolithic <- read_csv("Data/Companies - SP500/MPWR Historical Data.csv")
monster_beverage <- read_csv("Data/Companies - SP500/MNST Historical Data.csv")
moodys <- read_csv("Data/Companies - SP500/MCO Historical Data.csv")
morgan_stanley <- read_csv("Data/Companies - SP500/MS Historical Data.csv")
mosaic <- read_csv("Data/Companies - SP500/MOS Historical Data.csv")
motorola <- read_csv("Data/Companies - SP500/MSI Historical Data.csv")
msci <- read_csv("Data/Companies - SP500/MSCI Historical Data.csv")
nasdaq_inc <- read_csv("Data/Companies - SP500/NDAQ Historical Data.csv")
netapp <- read_csv("Data/Companies - SP500/NTAP Historical Data.csv")
netflix <- read_csv("Data/Companies - SP500/NFLX Historical Data.csv")
newell_brands <- read_csv("Data/Companies - SP500/NWL Historical Data.csv")
newmont_goldcorp <- read_csv("Data/Companies - SP500/NEM Historical Data.csv")
news_corp <- read_csv("Data/Companies - SP500/NWS Historical Data.csv")
news_corp_a <- read_csv("Data/Companies - SP500/NWSA Historical Data.csv")
nextera_energy <- read_csv("Data/Companies - SP500/NEE Historical Data.csv")
nike <- read_csv("Data/Companies - SP500/NKE Historical Data.csv")
ni_source <- read_csv("Data/Companies - SP500/NI Historical Data.csv")
nordson <- read_csv("Data/Companies - SP500/NDSN Historical Data.csv")
norfolk_southern <- read_csv("Data/Companies - SP500/NSC Historical Data.csv")
northern_trust <- read_csv("Data/Companies - SP500/NTRS Historical Data.csv")
northdrop_grumman <- read_csv("Data/Companies - SP500/NOC Historical Data.csv")
norwegian_cruise_line <- read_csv("Data/Companies - SP500/NCLH Historical Data.csv")
nrg <- read_csv("Data/Companies - SP500/NRG Historical Data.csv")
nucor <- read_csv("Data/Companies - SP500/NUE Historical Data.csv")
nvidia <- read_csv("Data/Companies - SP500/NVDA Historical Data.csv")
nvr <- read_csv("Data/Companies - SP500/NVR Historical Data.csv")
nxp <- read_csv("Data/Companies - SP500/NXPI Historical Data.csv")
occidental <- read_csv("Data/Companies - SP500/OXY Historical Data.csv")
old_dominion_freight <- read_csv("Data/Companies - SP500/ODFL Historical Data.csv")
omnicom <- read_csv("Data/Companies - SP500/OMC Historical Data.csv")
oneok <- read_csv("Data/Companies - SP500/OKE Historical Data.csv")
oracle <- read_csv("Data/Companies - SP500/ORCL Historical Data.csv")
organon_co <- read_csv("Data/Companies - SP500/OGN Historical Data.csv")
otis_worldwide <- read_csv("Data/Companies - SP500/OTIS Historical Data.csv")
oreilly_automotive <- read_csv("Data/Companies - SP500/ORLY Historical Data.csv")
paccar <- read_csv("Data/Companies - SP500/PCAR Historical Data.csv")
packaging_america <- read_csv("Data/Companies - SP500/PKG Historical Data.csv")
paramount_global_b <- read_csv("Data/Companies - SP500/PARA Historical Data.csv")
parker_hannifin <- read_csv("Data/Companies - SP500/PH Historical Data.csv")
paychex <- read_csv("Data/Companies - SP500/PAYX Historical Data.csv")
paycom_soft <- read_csv("Data/Companies - SP500/PAYC Historical Data.csv")
paypal_holdings_inc <- read_csv("Data/Companies - SP500/PYPL Historical Data.csv")
penn_entertainment <- read_csv("Data/Companies - SP500/PENN Historical Data.csv")
pentair <- read_csv("Data/Companies - SP500/PNR Historical Data.csv")
pepsi_co <- read_csv("Data/Companies - SP500/PEP Historical Data.csv")
perkin_elmer <- read_csv("Data/Companies - SP500/PKI Historical Data.csv")
pfizer <- read_csv("Data/Companies - SP500/PFE Historical Data.csv")
philip_morris <- read_csv("Data/Companies - SP500/PM Historical Data.csv")
phillips_66 <- read_csv("Data/Companies - SP500/PSX Historical Data.csv")
pinnacle_west <- read_csv("Data/Companies - SP500/PNW Historical Data.csv")
pioneer_natural <- read_csv("Data/Companies - SP500/PXD Historical Data.csv")
pnc_financial <- read_csv("Data/Companies - SP500/PNC Historical Data.csv")
pool <- read_csv("Data/Companies - SP500/POOL Historical Data.csv")
ppg_industries <- read_csv("Data/Companies - SP500/PPG Historical Data.csv")
ppl <- read_csv("Data/Companies - SP500/PPL Historical Data.csv")
principal_financial <- read_csv("Data/Companies - SP500/PFG Historical Data.csv")
procter_gamble <- read_csv("Data/Companies - SP500/PG Historical Data.csv")
progressive <- read_csv("Data/Companies - SP500/PGR Historical Data.csv")
prologis <- read_csv("Data/Companies - SP500/PLD Historical Data.csv")
prudential_financial <- read_csv("Data/Companies - SP500/PRU Historical Data.csv")
ptc <- read_csv("Data/Companies - SP500/PTC Historical Data.csv")
public_service_enterprise <- read_csv("Data/Companies - SP500/PEG Historical Data.csv")
public_storage <- read_csv("Data/Companies - SP500/PSA Historical Data.csv")
pulte_group <- read_csv("Data/Companies - SP500/PHM Historical Data.csv")
pvh <- read_csv("Data/Companies - SP500/PVH Historical Data.csv")
qorvo_inc <- read_csv("Data/Companies - SP500/QRVO Historical Data.csv")
qualcomm <- read_csv("Data/Companies - SP500/QCOM Historical Data.csv")
quanta_services <- read_csv("Data/Companies - SP500/PWR Historical Data.csv")
quest_diagonistcs <- read_csv("Data/Companies - SP500/DGX Historical Data.csv")
ralph_lauren <- read_csv("Data/Companies - SP500/RL Historical Data.csv")
raymond_james_financial <- read_csv("Data/Companies - SP500/RJF Historical Data.csv")
raytheon_technologies <- read_csv("Data/Companies - SP500/RTX Historical Data.csv")
realty_income <- read_csv("Data/Companies - SP500/O Historical Data.csv")
regency_centers <- read_csv("Data/Companies - SP500/REG Historical Data.csv")
regeneron_pharma <- read_csv("Data/Companies - SP500/REGN Historical Data.csv")
regions_financial <- read_csv("Data/Companies - SP500/RF Historical Data.csv")
republic_services <- read_csv("Data/Companies - SP500/RSG Historical Data.csv")
resmed <- read_csv("Data/Companies - SP500/RMD Historical Data.csv")
robert_half <- read_csv("Data/Companies - SP500/RHI Historical Data.csv")
rockwell_automotion <- read_csv("Data/Companies - SP500/ROK Historical Data.csv")
rollins <- read_csv("Data/Companies - SP500/ROL Historical Data.csv")
roper_technlogies <- read_csv("Data/Companies - SP500/ROP Historical Data.csv")
ross_stores <- read_csv("Data/Companies - SP500/ROST Historical Data.csv")
royal_caribbean_cruises <- read_csv("Data/Companies - SP500/RCL Historical Data.csv")
sp_global <- read_csv("Data/Companies - SP500/SPGI Historical Data.csv")
salesforce <- read_csv("Data/Companies - SP500/CRM Historical Data.csv")
sba_communications <- read_csv("Data/Companies - SP500/SBAC Historical Data.csv")
schlumberger <- read_csv("Data/Companies - SP500/SLB Historical Data.csv")
seagate <- read_csv("Data/Companies - SP500/STX Historical Data.csv")
sealer_air <- read_csv("Data/Companies - SP500/SEE Historical Data.csv")
sempra_energy <- read_csv("Data/Companies - SP500/SRE Historical Data.csv")
servicenow_inc <- read_csv("Data/Companies - SP500/NOW Historical Data.csv")
sherwin_williams <- read_csv("Data/Companies - SP500/SHW Historical Data.csv")
signature_bank <- read_csv("Data/Companies - SP500/SBNY Historical Data.csv")
simon_property <- read_csv("Data/Companies - SP500/SPG Historical Data.csv")
skyworks <- read_csv("Data/Companies - SP500/SWKS Historical Data.csv")
snap_on <- read_csv("Data/Companies - SP500/SNA Historical Data.csv")
solaredge_technologies <- read_csv("Data/Companies - SP500/SEDG Historical Data.csv")
southern <- read_csv("Data/Companies - SP500/SO Historical Data.csv")
southwest_airlines <- read_csv("Data/Companies - SP500/LUV Historical Data.csv")
stanley_black_decker <- read_csv("Data/Companies - SP500/SWK Historical Data.csv")
starbucks <- read_csv("Data/Companies - SP500/SBUX Historical Data.csv")
state_street <- read_csv("Data/Companies - SP500/STT Historical Data.csv")
steris <- read_csv("Data/Companies - SP500/STE Historical Data.csv")
stryker <- read_csv("Data/Companies - SP500/SYK Historical Data.csv")
svb <- read_csv("Data/Companies - SP500/SIVB Historical Data.csv")
synchrony_financial <- read_csv("Data/Companies - SP500/SYF Historical Data.csv")
synopsys <- read_csv("Data/Companies - SP500/SNPS Historical Data.csv")
sysco <- read_csv("Data/Companies - SP500/SYY Historical Data.csv")
t_rowe <- read_csv("Data/Companies - SP500/TROW Historical Data.csv")
t_mobile_us <- read_csv("Data/Companies - SP500/TMUS Historical Data.csv")
take_two <- read_csv("Data/Companies - SP500/TTWO Historical Data.csv")
tapestry <- read_csv("Data/Companies - SP500/TPR Historical Data.csv")
target <- read_csv("Data/Companies - SP500/TGT Historical Data.csv")
te_connectivity <- read_csv("Data/Companies - SP500/TEL Historical Data.csv")
teledyne_technologies <- read_csv("Data/Companies - SP500/TDY Historical Data.csv")
teleflex <- read_csv("Data/Companies - SP500/TFX Historical Data.csv")
teradyne <- read_csv("Data/Companies - SP500/TER Historical Data.csv")
tesla <- read_csv("Data/Companies - SP500/TSLA Historical Data.csv")
texas_instruments <- read_csv("Data/Companies - SP500/TXN Historical Data.csv")
textron <- read_csv("Data/Companies - SP500/TXT Historical Data.csv")
the_aes <- read_csv("Data/Companies - SP500/AES Historical Data.csv")
thermo_fisher_scientific <- read_csv("Data/Companies - SP500/TMO Historical Data.csv")
tjx <- read_csv("Data/Companies - SP500/TJX Historical Data.csv")
tractor_supply <- read_csv("Data/Companies - SP500/TSCO Historical Data.csv")
trane_technologies <- read_csv("Data/Companies - SP500/TT Historical Data.csv")
tansdigm <- read_csv("Data/Companies - SP500/TDG Historical Data.csv")
travelers <- read_csv("Data/Companies - SP500/TRV Historical Data.csv")
trimble <- read_csv("Data/Companies - SP500/TRMB Historical Data.csv")
truist_financial_corp <- read_csv("Data/Companies - SP500/TFC Historical Data.csv")
tyler_technologies <- read_csv("Data/Companies - SP500/TYL Historical Data.csv")
tyson_foods <- read_csv("Data/Companies - SP500/TSN Historical Data.csv")
us_bancorp <- read_csv("Data/Companies - SP500/USB Historical Data.csv")
udr <- read_csv("Data/Companies - SP500/UDR Historical Data.csv")
ulta_beauty <- read_csv("Data/Companies - SP500/ULTA Historical Data.csv")
under_armour_a <- read_csv("Data/Companies - SP500/UAA Historical Data.csv")
under_armour_c <- read_csv("Data/Companies - SP500/UA Historical Data.csv")
union_pacific <- read_csv("Data/Companies - SP500/UNP Historical Data.csv")
united_airlines_holdings <- read_csv("Data/Companies - SP500/UAL Historical Data.csv")
united_parcel_service <- read_csv("Data/Companies - SP500/UPS Historical Data.csv")
united_rentals <- read_csv("Data/Companies - SP500/URI Historical Data.csv")
united_health <- read_csv("Data/Companies - SP500/UNH Historical Data.csv")
universal_health_service <- read_csv("Data/Companies - SP500/UHS Historical Data.csv")
valero_energy <- read_csv("Data/Companies - SP500/VLO Historical Data.csv")
ventas <- read_csv("Data/Companies - SP500/VTR Historical Data.csv")
verisign <- read_csv("Data/Companies - SP500/VRSN Historical Data.csv")
verisk <- read_csv("Data/Companies - SP500/VRSK Historical Data.csv")
verizon <- read_csv("Data/Companies - SP500/VZ Historical Data.csv")
vertex <- read_csv("Data/Companies - SP500/VRTX Historical Data.csv")
vf <- read_csv("Data/Companies - SP500/VFC Historical Data.csv")
viatris <- read_csv("Data/Companies - SP500/VTRS Historical Data.csv")
visa_a <- read_csv("Data/Companies - SP500/V Historical Data.csv")
vornado <- read_csv("Data/Companies - SP500/VNO Historical Data.csv")
vulcan_materials <- read_csv("Data/Companies - SP500/VMC Historical Data.csv")
walgreens_boots <- read_csv("Data/Companies - SP500/WBA Historical Data.csv")
walmart <- read_csv("Data/Companies - SP500/WMT Historical Data.csv")
walt_disney <- read_csv("Data/Companies - SP500/DIS Historical Data.csv")
warner_bros_discovery <- read_csv("Data/Companies - SP500/WBD Historical Data.csv")
waste_management <- read_csv("Data/Companies - SP500/WM Historical Data.csv")
waters <- read_csv("Data/Companies - SP500/WAT Historical Data.csv")
wec_energy <- read_csv("Data/Companies - SP500/WEC Historical Data.csv")
wells_fargo <- read_csv("Data/Companies - SP500/WFC Historical Data.csv")
welltower <- read_csv("Data/Companies - SP500/WELL Historical Data.csv")
west_pharmaceutical <- read_csv("Data/Companies - SP500/WST Historical Data.csv")
western_digital <- read_csv("Data/Companies - SP500/WDC Historical Data.csv")
westinghouse_air_brake <- read_csv("Data/Companies - SP500/WAB Historical Data.csv")
westrock_co <- read_csv("Data/Companies - SP500/WRK Historical Data.csv")
weyerhaeuser <- read_csv("Data/Companies - SP500/WY Historical Data.csv")
whirlpool <- read_csv("Data/Companies - SP500/WHR Historical Data.csv")
williams <- read_csv("Data/Companies - SP500/WMB Historical Data.csv")
willis_tower_watson <- read_csv("Data/Companies - SP500/WTW Historical Data.csv")
wr_berkley <- read_csv("Data/Companies - SP500/WRB Historical Data.csv")
ww_grainger <- read_csv("Data/Companies - SP500/GWW Historical Data.csv")
wynn_resorts <- read_csv("Data/Companies - SP500/WYNN Historical Data.csv")
xcel_energy <- read_csv("Data/Companies - SP500/XEL Historical Data.csv")
xylem <- read_csv("Data/Companies - SP500/XYL Historical Data.csv")
yum_brands <- read_csv("Data/Companies - SP500/YUM Historical Data.csv")
zebra <- read_csv("Data/Companies - SP500/ZBRA Historical Data.csv")
zimmer_biomet <- read_csv("Data/Companies - SP500/ZBH Historical Data.csv")
zions <- read_csv("Data/Companies - SP500/ZION Historical Data.csv")
zoetis_inc <- read_csv("Data/Companies - SP500/ZTS Historical Data.csv")



# Eliminar Variables ------------------------------------------------------


mmm$Open <- NULL
mmm$High <- NULL
mmm$Low <- NULL
mmm$`Change %` <- NULL
mmm$Vol. <- NULL
print(mmm)

abbot_labs$Open <- NULL
abbot_labs$High <- NULL
abbot_labs$Low <- NULL
abbot_labs$`Change %` <- NULL
abbot_labs$Vol. <- NULL

abbvie$Open <- NULL
abbvie$High <- NULL
abbvie$Low <- NULL
abbvie$`Change %` <- NULL
abbvie$Vol. <- NULL

accenture$Open <- NULL
accenture$High <- NULL
accenture$Low <- NULL
accenture$`Change %` <- NULL
accenture$Vol. <- NULL

activision_blizard$Open <- NULL
activision_blizard$High <- NULL
activision_blizard$Low <- NULL
activision_blizard$`Change %` <- NULL
activision_blizard$Vol. <- NULL

adobe$Open <- NULL
adobe$High <- NULL
adobe$Low <- NULL
adobe$`Change %` <- NULL
adobe$Vol. <- NULL

adp$Open <- NULL
adp$High <- NULL
adp$Low <- NULL
adp$`Change %` <- NULL
adp$Vol. <- NULL

advance_auto_parts$Open <- NULL
advance_auto_parts$High <- NULL
advance_auto_parts$Low <- NULL
advance_auto_parts$`Change %` <- NULL
advance_auto_parts$Vol. <- NULL

aflac$Open <- NULL
aflac$High <- NULL
aflac$Low <- NULL
aflac$`Change %` <- NULL
aflac$Vol. <- NULL

agilient_tech$Open <- NULL
agilient_tech$High <- NULL
agilient_tech$Low <- NULL
agilient_tech$`Change %` <- NULL
agilient_tech$Vol. <- NULL

aig$Open <- NULL
aig$High <- NULL
aig$Low <- NULL
aig$`Change %` <- NULL
aig$Vol. <- NULL

air_products$Open <- NULL
air_products$High <- NULL
air_products$Low <- NULL
air_products$`Change %` <- NULL
air_products$Vol. <- NULL

akamai$Open <- NULL
akamai$High <- NULL
akamai$Low <- NULL
akamai$`Change %` <- NULL
akamai$Vol. <- NULL

alaska_air$Open <- NULL
alaska_air$High <- NULL
alaska_air$Low <- NULL
alaska_air$`Change %` <- NULL
alaska_air$Vol. <- NULL

albemarle$Open <- NULL
albemarle$High <- NULL
albemarle$Low <- NULL
albemarle$`Change %` <- NULL
albemarle$Vol. <- NULL

alexandria_re$Open <- NULL
alexandria_re$High <- NULL
alexandria_re$Low <- NULL
alexandria_re$`Change %` <- NULL
alexandria_re$Vol. <- NULL

align$Open <- NULL
align$High <- NULL
align$Low <- NULL
align$`Change %` <- NULL
align$Vol. <- NULL

allegion_plc$Open <- NULL
allegion_plc$High <- NULL
allegion_plc$Low <- NULL
allegion_plc$`Change %` <- NULL
allegion_plc$Vol. <- NULL


alliant_energy$Open <- NULL
alliant_energy$High <- NULL
alliant_energy$Low <- NULL
alliant_energy$`Change %` <- NULL
alliant_energy$Vol. <- NULL

allstate$Open <- NULL
allstate$High <- NULL
allstate$Low <- NULL
allstate$`Change %` <- NULL
allstate$Vol. <- NULL

alphabet_a$Open <- NULL
alphabet_a$High <- NULL
alphabet_a$Low <- NULL
alphabet_a$`Change %` <- NULL
alphabet_a$Vol. <- NULL

alphabet_c$Open <- NULL
alphabet_c$High <- NULL
alphabet_c$Low <- NULL
alphabet_c$`Change %` <- NULL
alphabet_c$Vol. <- NULL

altria$Open <- NULL  
altria$High <- NULL
altria$Low <- NULL
altria$`Change %` <- NULL
altria$Vol. <- NULL

amazon$Open <- NULL
amazon$High <- NULL
amazon$Low <- NULL
amazon$`Change %` <- NULL
amazon$Vol. <- NULL

amd$Open <- NULL
amd$High <- NULL
amd$Low <- NULL
amd$`Change %` <- NULL
amd$Vol. <- NULL

ameren$Open <- NULL
ameren$High <- NULL
ameren$Low <- NULL
ameren$`Change %` <- NULL
ameren$Vol. <- NULL


american_airlines$Open <- NULL
american_airlines$High <- NULL
american_airlines$Low <- NULL
american_airlines$`Change %` <- NULL
american_airlines$Vol. <- NULL

american_electrics$Open <- NULL
american_electrics$High <- NULL
american_electrics$Low <- NULL
american_electrics$`Change %` <- NULL
american_electrics$Vol. <- NULL

american_express$Open <- NULL
american_express$High <- NULL
american_express$Low <- NULL
american_express$`Change %` <- NULL
american_express$Vol. <- NULL

american_tower$Open <- NULL
american_tower$High <- NULL
american_tower$Low <- NULL
american_tower$`Change %` <- NULL
american_tower$Vol. <- NULL

american_water_works$Open <- NULL
american_water_works$High <- NULL
american_water_works$Low <- NULL
american_water_works$`Change %` <- NULL
american_water_works$Vol. <- NULL

ameriprise_financial$Open <- NULL
ameriprise_financial$High <- NULL
ameriprise_financial$Low <- NULL
ameriprise_financial$`Change %` <- NULL
ameriprise_financial$Vol. <- NULL

amerisource_bergen$Open <- NULL
amerisource_bergen$High <- NULL
amerisource_bergen$Low <- NULL
amerisource_bergen$`Change %` <- NULL
amerisource_bergen$Vol. <- NULL

amgen$Open <- NULL
amgen$High <- NULL
amgen$Low <- NULL
amgen$`Change %` <- NULL
amgen$Vol. <- NULL

ametek$Open <- NULL
ametek$High <- NULL
ametek$Low <- NULL
ametek$`Change %` <- NULL
ametek$Vol. <- NULL

amphenol$Open <- NULL
amphenol$High <- NULL
amphenol$Low <- NULL
amphenol$`Change %` <- NULL
amphenol$Vol. <- NULL

analog_devices$Open <- NULL
analog_devices$High <- NULL
analog_devices$Low <- NULL
analog_devices$`Change %` <- NULL
analog_devices$Vol. <- NULL

ansys$Open <- NULL
ansys$High <- NULL
ansys$Low <- NULL
ansys$`Change %` <- NULL
ansys$Vol. <- NULL

ao_smith$Open <- NULL
ao_smith$High <- NULL
ao_smith$Low <- NULL
ao_smith$`Change %` <- NULL
ao_smith$Vol. <- NULL

aon$Open <- NULL
aon$High <- NULL
aon$Low <- NULL
aon$`Change %` <- NULL
aon$Vol. <- NULL

apa_corp$Open <- NULL
apa_corp$High <- NULL
apa_corp$Low <- NULL
apa_corp$`Change %` <- NULL
apa_corp$Vol. <- NULL

apple$Open <- NULL
apple$High <- NULL
apple$Low <- NULL
apple$`Change %` <- NULL
apple$Vol. <- NULL

applied_materials$Open <- NULL
applied_materials$High <- NULL
applied_materials$Low <- NULL
applied_materials$`Change %` <- NULL
applied_materials$Vol. <- NULL

aptiv$Open <- NULL
aptiv$High <- NULL
aptiv$Low <- NULL
aptiv$`Change %` <- NULL
aptiv$Vol. <- NULL

archer_daniel_midland$Open <- NULL
archer_daniel_midland$High <- NULL
archer_daniel_midland$Low <- NULL
archer_daniel_midland$`Change %` <- NULL
archer_daniel_midland$Vol. <- NULL

arista_networks$Open <- NULL
arista_networks$High <- NULL
arista_networks$Low <- NULL
arista_networks$`Change %` <- NULL
arista_networks$Vol. <- NULL

arthur_j_gallagher$Open <- NULL
arthur_j_gallagher$High <- NULL
arthur_j_gallagher$Low <- NULL
arthur_j_gallagher$`Change %` <- NULL
arthur_j_gallagher$Vol. <- NULL

assurant$Open <- NULL
assurant$High <- NULL
assurant$Low <- NULL
assurant$`Change %` <- NULL
assurant$Vol. <- NULL

at_and_t$Open <- NULL
at_and_t$High <- NULL
at_and_t$Low <- NULL
at_and_t$`Change %` <- NULL
at_and_t$Vol. <- NULL

atmos_energy$Open <- NULL
atmos_energy$High <- NULL
atmos_energy$Low <- NULL
atmos_energy$`Change %` <- NULL
atmos_energy$Vol. <- NULL

autodesk$Open <- NULL
autodesk$High <- NULL
autodesk$Low <- NULL
autodesk$`Change %` <- NULL
autodesk$Vol. <- NULL

autozone$Open <- NULL
autozone$High <- NULL
autozone$Low <- NULL
autozone$`Change %` <- NULL
autozone$Vol. <- NULL

avalonbay$Open <- NULL
avalonbay$High <- NULL
avalonbay$Low <- NULL
avalonbay$`Change %` <- NULL
avalonbay$Vol. <- NULL

avery_dennison$Open <- NULL
avery_dennison$High <- NULL
avery_dennison$Low <- NULL
avery_dennison$`Change %` <- NULL
avery_dennison$Vol. <- NULL

baker_hugues$Open <- NULL
baker_hugues$High <- NULL
baker_hugues$Vol. <- NULL
baker_hugues$Low <- NULL
baker_hugues$`Change %` <- NULL

ball$Open <- NULL
ball$High <- NULL
ball$Low <- NULL
ball$`Change %` <- NULL
ball$Vol. <- NULL

bank_of_america$Open <- NULL
bank_of_america$High <- NULL
bank_of_america$Low <- NULL
bank_of_america$`Change %` <- NULL
bank_of_america$Vol. <- NULL

bank_of_ny_mellon$Open <- NULL
bank_of_ny_mellon$High <- NULL
bank_of_ny_mellon$Low <- NULL
bank_of_ny_mellon$`Change %` <- NULL
bank_of_ny_mellon$Vol. <- NULL

bath_body_works$Open <- NULL
bath_body_works$High <- NULL
bath_body_works$Low <- NULL
bath_body_works$`Change %` <- NULL
bath_body_works$Vol. <- NULL

baxter$Open <- NULL
baxter$High <- NULL
baxter$Low <- NULL
baxter$`Change %` <- NULL
baxter$Vol. <- NULL

becton_dickinson$Open <- NULL
becton_dickinson$High <- NULL
becton_dickinson$Low <- NULL
becton_dickinson$`Change %` <- NULL
becton_dickinson$Vol. <- NULL

berkshire_hathaway_b$Open <- NULL
berkshire_hathaway_b$High <- NULL
berkshire_hathaway_b$Low <- NULL
berkshire_hathaway_b$`Change %` <- NULL
berkshire_hathaway_b$Vol. <- NULL

best_buy$Open <- NULL
best_buy$High <- NULL
best_buy$Low <- NULL
best_buy$`Change %` <- NULL
best_buy$Vol. <- NULL

bio_rad_labs$Open <- NULL
bio_rad_labs$High <- NULL
bio_rad_labs$Low <- NULL
bio_rad_labs$`Change %` <- NULL
bio_rad_labs$Vol. <- NULL

bio_techne$Open <- NULL
bio_techne$High <- NULL
bio_techne$Low <- NULL
bio_techne$`Change %` <- NULL
bio_techne$Vol. <- NULL

biogen$Open <- NULL
biogen$High <- NULL
biogen$Low <- NULL
biogen$`Change %` <- NULL
biogen$Vol. <- NULL

blackrock$Open <- NULL
blackrock$High <- NULL
blackrock$Low <- NULL
blackrock$`Change %` <- NULL
blackrock$Vol. <- NULL

boeing$Open <- NULL
boeing$High <- NULL
boeing$Low <- NULL
boeing$`Change %` <- NULL
boeing$Vol. <- NULL

booking$Open <- NULL
booking$High <- NULL
booking$Low <- NULL
booking$`Change %` <- NULL
booking$Vol. <- NULL

borgwarner$Open <- NULL
borgwarner$High <- NULL
borgwarner$Low <- NULL
borgwarner$`Change %` <- NULL
borgwarner$Vol. <- NULL

boston_properties$Open <- NULL
boston_properties$High <- NULL
boston_properties$Low <- NULL
boston_properties$`Change %` <- NULL
boston_properties$Vol. <- NULL

boston_scientific$Open <- NULL
boston_scientific$High <- NULL
boston_scientific$Low <- NULL
boston_scientific$`Change %` <- NULL
boston_scientific$Vol. <- NULL

briston_myers_squibb$Open <- NULL
briston_myers_squibb$High <- NULL
briston_myers_squibb$Low <- NULL
briston_myers_squibb$`Change %` <- NULL
briston_myers_squibb$Vol. <- NULL

broadcom$Open <- NULL
broadcom$High <- NULL
broadcom$Low <- NULL
broadcom$`Change %` <- NULL
broadcom$Vol. <- NULL

broadridge$Open <- NULL
broadridge$High <- NULL
broadridge$Low <- NULL
broadridge$`Change %` <- NULL
broadridge$Vol. <- NULL

brown_forman$Open <- NULL
brown_forman$High <- NULL
brown_forman$Low <- NULL
brown_forman$`Change %` <- NULL
brown_forman$Vol. <- NULL

brown_brown$Open <- NULL
brown_brown$High <- NULL
brown_brown$Low <- NULL
brown_brown$`Change %` <- NULL
brown_brown$Vol. <- NULL

candence_design$Open <- NULL
candence_design$High <- NULL
candence_design$Low <- NULL
candence_design$`Change %` <- NULL
candence_design$Vol. <- NULL

caesars$Open <- NULL
caesars$High <- NULL
caesars$Low <- NULL
caesars$`Change %` <- NULL
caesars$Vol. <- NULL

camden_property$Open <- NULL
camden_property$High <- NULL
camden_property$Low <- NULL
camden_property$`Change %` <- NULL
camden_property$Vol. <- NULL

campbell_soup$Open <- NULL
campbell_soup$High <- NULL
campbell_soup$Low <- NULL
campbell_soup$`Change %` <- NULL
campbell_soup$Vol. <- NULL

capital_one_financial$Open <- NULL
capital_one_financial$High <- NULL
capital_one_financial$Low <- NULL
capital_one_financial$`Change %` <- NULL
capital_one_financial$Vol. <- NULL

cardinal_health$Open <- NULL
cardinal_health$High <- NULL
cardinal_health$Low <- NULL
cardinal_health$`Change %` <- NULL
cardinal_health$Vol. <- NULL

carmax$Open <- NULL
carmax$High <- NULL
carmax$Low <- NULL
carmax$`Change %` <- NULL
carmax$Vol. <- NULL

carnival_corp$Open <- NULL
carnival_corp$High <- NULL
carnival_corp$Low <- NULL
carnival_corp$`Change %` <- NULL
carnival_corp$Vol. <- NULL

carrier_global$Open <- NULL
carrier_global$High <- NULL
carrier_global$Low <- NULL
carrier_global$`Change %` <- NULL
carrier_global$Vol. <- NULL

catalent_inc$Open <- NULL
catalent_inc$High <- NULL
catalent_inc$Low <- NULL
catalent_inc$`Change %` <- NULL
catalent_inc$Vol. <- NULL

caterpillar$Open <- NULL
caterpillar$High <- NULL
caterpillar$Low <- NULL
caterpillar$`Change %` <- NULL
caterpillar$Vol. <- NULL

cboe_global$Open <- NULL
cboe_global$High <- NULL
cboe_global$Low <- NULL
cboe_global$`Change %` <- NULL
cboe_global$Vol. <- NULL

cbre_a$Open <- NULL
cbre_a$High <- NULL
cbre_a$Low <- NULL
cbre_a$`Change %` <- NULL
cbre_a$Vol. <- NULL

cdw_corp$Open <- NULL
cdw_corp$High <- NULL
cdw_corp$Low <- NULL
cdw_corp$`Change %` <- NULL
cdw_corp$Vol. <- NULL

celanese$Open <- NULL
celanese$High <- NULL
celanese$Low <- NULL
celanese$`Change %` <- NULL
celanese$Vol. <- NULL

centene$Open <- NULL
centene$High <- NULL
centene$Low <- NULL
centene$`Change %` <- NULL
centene$Vol. <- NULL

centerpoint_energy$Open <- NULL
centerpoint_energy$High <- NULL
centerpoint_energy$Low <- NULL
centerpoint_energy$`Change %` <- NULL
centerpoint_energy$Vol. <- NULL

ceridian_hcm$Open <- NULL
ceridian_hcm$High <- NULL
ceridian_hcm$Low <- NULL
ceridian_hcm$`Change %` <- NULL
ceridian_hcm$Vol. <- NULL

cf_industries$Open <- NULL
cf_industries$High <- NULL
cf_industries$Low <- NULL
cf_industries$`Change %` <- NULL
cf_industries$Vol. <- NULL

ch_robinson$Open <- NULL
ch_robinson$High <- NULL
ch_robinson$Low <- NULL
ch_robinson$`Change %` <- NULL
ch_robinson$Vol. <- NULL

charles_river_laboratories$Open <- NULL
charles_river_laboratories$High <- NULL
charles_river_laboratories$Low <- NULL
charles_river_laboratories$`Change %` <- NULL
charles_river_laboratories$Vol. <- NULL

charles_schwab$Open <- NULL
charles_schwab$High <- NULL
charles_schwab$Low <- NULL
charles_schwab$`Change %` <- NULL
charles_schwab$Vol. <- NULL

charter_communication$Open <- NULL
charter_communication$High <- NULL
charter_communication$Low <- NULL
charter_communication$`Change %` <- NULL
charter_communication$Vol. <- NULL

chevron$Open <- NULL
chevron$High <- NULL
chevron$Low <- NULL
chevron$`Change %` <- NULL
chevron$Vol. <- NULL

chipotle_mexican_grill$Open <- NULL
chipotle_mexican_grill$High <- NULL
chipotle_mexican_grill$Low <- NULL
chipotle_mexican_grill$`Change %` <- NULL
chipotle_mexican_grill$Vol. <- NULL

chubb$Open <- NULL
chubb$High <- NULL
chubb$Low <- NULL
chubb$`Change %` <- NULL
chubb$Vol. <- NULL

church_dwight$Open <- NULL
church_dwight$High <- NULL
church_dwight$Low <- NULL
church_dwight$`Change %` <- NULL
church_dwight$Vol. <- NULL

cigna$Open <- NULL
cigna$High <- NULL
cigna$Low <- NULL
cigna$`Change %` <- NULL
cigna$Vol. <- NULL

cincinnati_financial$Open <- NULL
cincinnati_financial$High <- NULL
cincinnati_financial$Low <- NULL
cincinnati_financial$`Change %` <- NULL
cincinnati_financial$Vol. <- NULL

cintas$Open <- NULL
cintas$High <- NULL
cintas$Low <- NULL
cintas$`Change %` <- NULL
cintas$Vol. <- NULL

cisco$Open <- NULL
cisco$High <- NULL
cisco$Low <- NULL
cisco$`Change %` <- NULL
cisco$Vol. <- NULL

citigroup$Open <- NULL
citigroup$High <- NULL
citigroup$Low <- NULL
citigroup$`Change %` <- NULL
citigroup$Vol. <- NULL

citizens_financial_group$Open <- NULL
citizens_financial_group$High <- NULL
citizens_financial_group$Low <- NULL
citizens_financial_group$`Change %` <- NULL
citizens_financial_group$Vol. <- NULL

clorox$Open <- NULL
clorox$High <- NULL
clorox$Low <- NULL
clorox$`Change %` <- NULL
clorox$Vol. <- NULL

cme_group$Open <- NULL
cme_group$High <- NULL
cme_group$Low <- NULL
cme_group$`Change %` <- NULL
cme_group$Vol. <- NULL

cms_energy$Open <- NULL
cms_energy$High <- NULL
cms_energy$Low <- NULL
cms_energy$`Change %` <- NULL
cms_energy$Vol. <- NULL

coca_cola$Open <- NULL
coca_cola$High <- NULL
coca_cola$Low <- NULL
coca_cola$`Change %` <- NULL
coca_cola$Vol. <- NULL

cognizant_a$Open <- NULL
cognizant_a$High <- NULL
cognizant_a$Low <- NULL
cognizant_a$`Change %` <- NULL
cognizant_a$Vol. <- NULL

colgate_palmolive$Open <- NULL
colgate_palmolive$High <- NULL
colgate_palmolive$Low <- NULL
colgate_palmolive$`Change %` <- NULL
colgate_palmolive$Vol. <- NULL

comcast$Open <- NULL
comcast$High <- NULL
comcast$Low <- NULL
comcast$`Change %` <- NULL
comcast$Vol. <- NULL

comerica$Open <- NULL
comerica$High <- NULL
comerica$Low <- NULL
comerica$`Change %` <- NULL
comerica$Vol. <- NULL

conagra_foods$Open <- NULL
conagra_foods$High <- NULL
conagra_foods$Low <- NULL
conagra_foods$`Change %` <- NULL
conagra_foods$Vol. <- NULL

conocophilips$Open <- NULL
conocophilips$High <- NULL
conocophilips$Low <- NULL
conocophilips$`Change %` <- NULL
conocophilips$Vol. <- NULL

consolidated_edison$Open <- NULL
consolidated_edison$High <- NULL
consolidated_edison$Low <- NULL
consolidated_edison$`Change %` <- NULL
consolidated_edison$Vol. <- NULL

constellation_brands_a$Open <- NULL
constellation_brands_a$High <- NULL
constellation_brands_a$Low <- NULL
constellation_brands_a$`Change %` <- NULL
constellation_brands_a$Vol. <- NULL

cooper$Open <- NULL
cooper$High <- NULL
cooper$Low <- NULL
cooper$`Change %` <- NULL
cooper$Vol. <- NULL

copart$Open <- NULL
copart$High <- NULL
copart$Low <- NULL
copart$`Change %` <- NULL
copart$Vol. <- NULL

corning$Open <- NULL
corning$High <- NULL
corning$Low <- NULL
corning$`Change %` <- NULL
corning$Vol. <- NULL

corteva$Open <- NULL
corteva$High <- NULL
corteva$Low <- NULL
corteva$`Change %` <- NULL
corteva$Vol. <- NULL

costco$Open <- NULL
costco$High <- NULL
costco$Low <- NULL
costco$`Change %` <- NULL
costco$Vol. <- NULL

coterra_energy$Open <- NULL
coterra_energy$High <- NULL
coterra_energy$Low <- NULL
coterra_energy$`Change %` <- NULL
coterra_energy$Vol. <- NULL

crown_castle$Open <- NULL
crown_castle$High <- NULL
crown_castle$Low <- NULL
crown_castle$`Change %` <- NULL
crown_castle$Vol. <- NULL

csx$Open <- NULL
csx$High <- NULL
csx$Low <- NULL
csx$`Change %` <- NULL
csx$Vol. <- NULL

cummins$Open <- NULL
cummins$High <- NULL
cummins$Low <- NULL
cummins$`Change %` <- NULL
cummins$Vol. <- NULL

cvs_health_corp$Open <- NULL
cvs_health_corp$High <- NULL
cvs_health_corp$Low <- NULL
cvs_health_corp$`Change %` <- NULL
cvs_health_corp$Vol. <- NULL

danaher$Open <- NULL
danaher$High <- NULL
danaher$Low <- NULL
danaher$`Change %` <- NULL
danaher$Vol. <- NULL

darden_restaurants$Open <- NULL
darden_restaurants$High <- NULL
darden_restaurants$Low <- NULL
darden_restaurants$`Change %` <- NULL
darden_restaurants$Vol. <- NULL

davita$Open <- NULL
davita$High <- NULL
davita$Low <- NULL
davita$`Change %` <- NULL
davita$Vol. <- NULL

deere_company$Open <- NULL
deere_company$High <- NULL
deere_company$Low <- NULL
deere_company$`Change %` <- NULL
deere_company$Vol. <- NULL

delta_airlines$Open <- NULL
delta_airlines$High <- NULL
delta_airlines$Low <- NULL
delta_airlines$`Change %` <- NULL
delta_airlines$Vol. <- NULL

dentsply$Open <- NULL
dentsply$High <- NULL
dentsply$Low <- NULL
dentsply$`Change %` <- NULL
dentsply$Vol. <- NULL

devon_energy$Open <- NULL
devon_energy$High <- NULL
devon_energy$Low <- NULL
devon_energy$`Change %` <- NULL
devon_energy$Vol. <- NULL

dexcom$Open <- NULL
dexcom$High <- NULL
dexcom$Low <- NULL
dexcom$`Change %` <- NULL
dexcom$Vol. <- NULL

diamondback$Open <- NULL
diamondback$High <- NULL
diamondback$Low <- NULL
diamondback$`Change %` <- NULL
diamondback$Vol. <- NULL

digital$Open <- NULL
digital$High <- NULL
digital$Low <- NULL
digital$`Change %` <- NULL
digital$Vol. <- NULL

discover$Open <- NULL
discover$High <- NULL
discover$Low <- NULL
discover$`Change %` <- NULL
discover$Vol. <- NULL

dish_network$Open <- NULL
dish_network$High <- NULL
dish_network$Low <- NULL
dish_network$`Change %` <- NULL
dish_network$Vol. <- NULL

dollar_general$Open <- NULL
dollar_general$High <- NULL
dollar_general$Low <- NULL
dollar_general$`Change %` <- NULL
dollar_general$Vol. <- NULL

dollar_tree$Open <- NULL
dollar_tree$High <- NULL
dollar_tree$Low <- NULL
dollar_tree$`Change %` <- NULL
dollar_tree$Vol. <- NULL

dominion_energy$Open <- NULL
dominion_energy$High <- NULL
dominion_energy$Low <- NULL
dominion_energy$`Change %` <- NULL
dominion_energy$Vol. <- NULL

dominos_pizza$Open <- NULL
dominos_pizza$High <- NULL
dominos_pizza$Low <- NULL
dominos_pizza$`Change %` <- NULL
dominos_pizza$Vol. <- NULL

dover$Open <- NULL
dover$High <- NULL
dover$Low <- NULL
dover$`Change %` <- NULL
dover$Vol. <- NULL

dow$Open <- NULL
dow$High <- NULL
dow$Low <- NULL
dow$`Change %` <- NULL
dow$Vol. <- NULL

dr_norton$Open <- NULL
dr_norton$High <- NULL
dr_norton$Low <- NULL
dr_norton$`Change %` <- NULL
dr_norton$Vol. <- NULL

dte_energy$Open <- NULL
dte_energy$High <- NULL
dte_energy$Low <- NULL
dte_energy$`Change %` <- NULL
dte_energy$Vol. <- NULL

duke_energy$Open <- NULL
duke_energy$High <- NULL
duke_energy$Low <- NULL
duke_energy$`Change %` <- NULL
duke_energy$Vol. <- NULL

dupont_de_nemours$Open <- NULL
dupont_de_nemours$High <- NULL
dupont_de_nemours$Low <- NULL
dupont_de_nemours$`Change %` <- NULL
dupont_de_nemours$Vol. <- NULL

dxc_technology$Open <- NULL
dxc_technology$High <- NULL
dxc_technology$Low <- NULL
dxc_technology$`Change %` <- NULL
dxc_technology$Vol. <- NULL

eastman_chemical$Open <- NULL
eastman_chemical$High <- NULL
eastman_chemical$Low <- NULL
eastman_chemical$`Change %` <- NULL
eastman_chemical$Vol. <- NULL

eaton$Open <- NULL
eaton$High <- NULL
eaton$Low <- NULL
eaton$`Change %` <- NULL
eaton$Vol. <- NULL

ebay$Open <- NULL
ebay$High <- NULL
ebay$Low <- NULL
ebay$`Change %` <- NULL
ebay$Vol. <- NULL

ecolab$Open <- NULL
ecolab$High <- NULL
ecolab$Low <- NULL
ecolab$`Change %` <- NULL
ecolab$Vol. <- NULL

edison$Open <- NULL
edison$High <- NULL
edison$Low <- NULL
edison$`Change %` <- NULL
edison$Vol. <- NULL

edwards_lifesciences$Open <- NULL
edwards_lifesciences$High <- NULL
edwards_lifesciences$Low <- NULL
edwards_lifesciences$`Change %` <- NULL
edwards_lifesciences$Vol. <- NULL

electronic_arts$Open <- NULL
electronic_arts$High <- NULL
electronic_arts$Low <- NULL
electronic_arts$`Change %` <- NULL
electronic_arts$Vol. <- NULL

elevance_health$Open <- NULL
elevance_health$High <- NULL
elevance_health$Low <- NULL
elevance_health$`Change %` <- NULL
elevance_health$Vol. <- NULL

eli_lilly$Open <- NULL
eli_lilly$High <- NULL
eli_lilly$Low <- NULL
eli_lilly$`Change %` <- NULL
eli_lilly$Vol.  <- NULL

emerson$Open <- NULL
emerson$High <- NULL
emerson$Low <- NULL
emerson$`Change %` <- NULL
emerson$Vol. <- NULL

enphase$Open <- NULL
enphase$High <- NULL
enphase$Low <- NULL
enphase$`Change %` <- NULL
enphase$Vol. <- NULL

entergy$Open <- NULL
entergy$High <- NULL
entergy$Low <- NULL
entergy$`Change %` <- NULL
entergy$Vol. <- NULL

eog_resources$Open <- NULL
eog_resources$High <- NULL
eog_resources$Low <- NULL
eog_resources$`Change %` <- NULL
eog_resources$Vol. <- NULL

epam_system$Open <- NULL
epam_system$High <- NULL
epam_system$Low <- NULL
epam_system$`Change %` <- NULL
epam_system$Vol. <- NULL

equifax$Open <- NULL
equifax$High <- NULL
equifax$Low <- NULL
equifax$`Change %` <- NULL
equifax$Vol. <- NULL

equinix$Open <- NULL
equinix$High <- NULL
equinix$Low <- NULL
equinix$`Change %` <- NULL
equinix$Vol. <- NULL

equity_residential$Open <- NULL
equity_residential$High <- NULL
equity_residential$Low <- NULL
equity_residential$`Change %` <- NULL
equity_residential$Vol. <- NULL

essex_property$Open <- NULL
essex_property$High <- NULL
essex_property$Low <- NULL
essex_property$`Change %` <- NULL
essex_property$Vol. <- NULL

estee_lauder$Open <- NULL
estee_lauder$High <- NULL
estee_lauder$Low <- NULL
estee_lauder$`Change %` <- NULL
estee_lauder$Vol. <- NULL

etsy_inc$Open <- NULL
etsy_inc$High <- NULL
etsy_inc$Low <- NULL
etsy_inc$`Change %` <- NULL
etsy_inc$Vol. <- NULL

everest$Open <- NULL
everest$High <- NULL
everest$Low <- NULL
everest$`Change %` <- NULL
everest$Vol. <- NULL

evergy$Open <- NULL
evergy$High <- NULL
evergy$Low <- NULL
evergy$`Change %` <- NULL
evergy$Vol. <- NULL

eversource_energy$Open <- NULL
eversource_energy$High <- NULL
eversource_energy$Low <- NULL
eversource_energy$`Change %` <- NULL
eversource_energy$Vol. <- NULL

exelon$Open <- NULL
exelon$High <- NULL
exelon$Low <- NULL
exelon$`Change %` <- NULL
exelon$Vol. <- NULL

expedia$Open <- NULL
expedia$High <- NULL
expedia$Low <- NULL
expedia$`Change %` <- NULL
expedia$Vol. <- NULL

expeditors_washington$Open <- NULL
expeditors_washington$High <- NULL
expeditors_washington$Low <- NULL
expeditors_washington$`Change %` <- NULL
expeditors_washington$Vol. <- NULL

extra_space_storage$Open <- NULL
extra_space_storage$High <- NULL
extra_space_storage$Low <- NULL
extra_space_storage$`Change %` <- NULL
extra_space_storage$Vol. <- NULL

exxon_mobil$Open <- NULL
exxon_mobil$High <- NULL
exxon_mobil$Low <- NULL
exxon_mobil$`Change %` <- NULL
exxon_mobil$Vol. <- NULL

f5_networks$Open <- NULL
f5_networks$High <- NULL
f5_networks$Low <- NULL
f5_networks$`Change %` <- NULL
f5_networks$Vol. <- NULL

factset_research$Open <- NULL
factset_research$High <- NULL
factset_research$Low <- NULL
factset_research$`Change %` <- NULL
factset_research$Vol. <- NULL

fastenal$Open <- NULL
fastenal$High <- NULL
fastenal$Low <- NULL
fastenal$`Change %` <- NULL
fastenal$Vol. <- NULL

federal_realty$Open <- NULL
federal_realty$High <- NULL
federal_realty$Low <- NULL
federal_realty$`Change %` <- NULL
federal_realty$Vol. <-  NULL

fedex$Open <- NULL
fedex$High <- NULL
fedex$Low <- NULL
fedex$`Change %` <- NULL
fedex$Vol. <- NULL

fidelity_national_info$Open <- NULL
fidelity_national_info$High <- NULL
fidelity_national_info$Low <- NULL
fidelity_national_info$`Change %` <- NULL
fidelity_national_info$Vol. <- NULL

fifth_third$Open <- NULL
fifth_third$High <- NULL
fifth_third$Low <- NULL
fifth_third$`Change %` <- NULL
fifth_third$Vol. <- NULL

first_republic_bank$Open <- NULL
first_republic_bank$High <- NULL
first_republic_bank$Low <- NULL
first_republic_bank$`Change %` <- NULL
first_republic_bank$Vol. <- NULL

firstenergy$Open <- NULL
firstenergy$High <- NULL
firstenergy$Low <- NULL
firstenergy$`Change %` <- NULL
firstenergy$Vol. <- NULL

fiserv$Open <- NULL
fiserv$High <- NULL
fiserv$Low <- NULL
fiserv$`Change %` <- NULL
fiserv$Vol. <- NULL

fleetcor$Open <- NULL
fleetcor$High <- NULL
fleetcor$Low <- NULL
fleetcor$`Change %` <- NULL
fleetcor$Vol. <- NULL

fmc$Open <- NULL
fmc$High <- NULL
fmc$Low <- NULL
fmc$`Change %` <- NULL
fmc$Vol. <- NULL

ford_motor$Open <- NULL
ford_motor$High <- NULL
ford_motor$Low <- NULL
ford_motor$`Change %` <- NULL
ford_motor$Vol. <- NULL

fortinet$Open <- NULL
fortinet$High <- NULL
fortinet$Low <- NULL
fortinet$`Change %` <- NULL
fortinet$Vol. <- NULL

fortive$Open <- NULL
fortive$High <- NULL
fortive$Low <- NULL
fortive$`Change %` <- NULL
fortive$Vol. <- NULL

fortune_brands$Open <- NULL
fortune_brands$High <- NULL
fortune_brands$Low <- NULL
fortune_brands$`Change %` <- NULL
fortune_brands$Vol. <- NULL

fox_corp_a$Open <- NULL
fox_corp_a$High <- NULL
fox_corp_a$Low <- NULL
fox_corp_a$`Change %` <- NULL
fox_corp_a$Vol. <- NULL

fox_corp_b$Open <- NULL
fox_corp_b$High <- NULL
fox_corp_b$Low <- NULL
fox_corp_b$`Change %` <- NULL
fox_corp_b$Vol. <- NULL

franklin_resources$Open <- NULL
franklin_resources$High <- NULL
franklin_resources$Low <- NULL
franklin_resources$`Change %` <- NULL
franklin_resources$Vol. <- NULL

freeport_mcmoran$Open <- NULL
freeport_mcmoran$High <- NULL
freeport_mcmoran$Low <- NULL
freeport_mcmoran$`Change %` <- NULL
freeport_mcmoran$Vol. <- NULL

garmin$Open <- NULL
garmin$High <- NULL
garmin$Low <- NULL
garmin$`Change %` <- NULL
garmin$Vol. <- NULL

gartner$Open <- NULL
gartner$High <- NULL
gartner$Low <- NULL
gartner$`Change %` <- NULL
gartner$Vol. <- NULL

gen_digital$Open <- NULL
gen_digital$High <- NULL
gen_digital$Low <- NULL
gen_digital$`Change %` <- NULL
gen_digital$Vol. <- NULL

generac$Open <- NULL
generac$High <- NULL
generac$Low <- NULL
generac$`Change %` <- NULL
generac$Vol. <- NULL

general_dynamics$Open <- NULL
general_dynamics$High <- NULL
general_dynamics$Low <- NULL
general_dynamics$`Change %` <- NULL
general_dynamics$Vol. <- NULL

general_electric$Open <- NULL
general_electric$High <- NULL
general_electric$Low <- NULL
general_electric$`Change %` <- NULL
general_electric$Vol. <- NULL

general_mills$Open <- NULL
general_mills$High <- NULL
general_mills$Low <- NULL
general_mills$`Change %` <- NULL
general_mills$Vol. <- NULL

general_motors$Open <- NULL
general_motors$High <- NULL
general_motors$Low <- NULL
general_motors$`Change %` <- NULL
general_motors$Vol. <- NULL

genuine_parts$Open <- NULL
genuine_parts$High <- NULL
genuine_parts$Low <- NULL
genuine_parts$`Change %` <- NULL
genuine_parts$Vol. <- NULL

gilead$Open <- NULL
gilead$High <- NULL
gilead$Low <- NULL
gilead$`Change %` <- NULL
gilead$Vol. <- NULL

global_payments$Open <- NULL
global_payments$High <- NULL
global_payments$Low <- NULL
global_payments$`Change %` <- NULL
global_payments$Vol. <- NULL
  
globe_life$Open <- NULL
globe_life$High <- NULL
globe_life$Low <- NULL
globe_life$`Change %` <- NULL
globe_life$Vol. <- NULL

goldman_sachs$Open <- NULL
goldman_sachs$High <- NULL
goldman_sachs$Low <- NULL
goldman_sachs$`Change %` <- NULL
goldman_sachs$Vol. <- NULL

halliburton$Open <- NULL
halliburton$High <- NULL
halliburton$Low <- NULL
halliburton$`Change %` <- NULL
halliburton$Vol. <- NULL

hartford$Open <- NULL
hartford$High <- NULL
hartford$Low <- NULL
hartford$`Change %` <- NULL
hartford$Vol. <- NULL

hasbro$Open <- NULL
hasbro$High <- NULL
hasbro$Low <- NULL
hasbro$`Change %` <- NULL
hasbro$Vol. <- NULL

hca$Open <- NULL
hca$High <- NULL
hca$Low <- NULL
hca$`Change %` <- NULL
hca$Vol. <- NULL

healthpeak_properties$Open <- NULL
healthpeak_properties$High <- NULL
healthpeak_properties$Low <- NULL
healthpeak_properties$`Change %` <- NULL
healthpeak_properties$Vol. <- NULL

henry_schein$Open <- NULL
henry_schein$High <- NULL
henry_schein$Low <- NULL
henry_schein$`Change %` <- NULL
henry_schein$Vol. <- NULL

hershey_co$Open <- NULL
hershey_co$High <- NULL
hershey_co$Low <- NULL
hershey_co$`Change %` <- NULL
hershey_co$Vol. <- NULL

hess$Open <- NULL
hess$High <- NULL
hess$Low <- NULL
hess$`Change %` <- NULL
hess$Vol. <- NULL

hewlett_packard$Open <- NULL
hewlett_packard$High <- NULL
hewlett_packard$Low <- NULL
hewlett_packard$`Change %` <- NULL
hewlett_packard$Vol. <- NULL

hilton_worldwide$Open <- NULL
hilton_worldwide$High <- NULL
hilton_worldwide$Low <- NULL
hilton_worldwide$`Change %` <- NULL
hilton_worldwide$Vol. <- NULL

hologic$Open <- NULL
hologic$High <- NULL
hologic$Low <- NULL
hologic$`Change %` <- NULL
hologic$Vol. <- NULL

home_depot$Open <- NULL
home_depot$High <- NULL
home_depot$Low <- NULL
home_depot$`Change %` <- NULL
home_depot$Vol. <- NULL

honeywell$Open <- NULL
honeywell$High <- NULL
honeywell$Low <- NULL
honeywell$`Change %` <- NULL
honeywell$Vol. <- NULL

hormel_foods$Open <- NULL
hormel_foods$High <- NULL
hormel_foods$Low <- NULL
hormel_foods$`Change %` <- NULL
hormel_foods$Vol. <- NULL

host_hotels_resorts$Open <- NULL
host_hotels_resorts$High <- NULL
host_hotels_resorts$Low <- NULL
host_hotels_resorts$`Change %` <- NULL
host_hotels_resorts$Vol. <- NULL

hownet$Open <- NULL
hownet$High <- NULL
hownet$Low <- NULL
hownet$`Change %` <- NULL
hownet$Vol. <- NULL

hp_inc$Open <- NULL
hp_inc$High <- NULL
hp_inc$Low <- NULL
hp_inc$`Change %` <- NULL
hp_inc$Vol. <- NULL

humana$Open <- NULL
humana$High <- NULL
humana$Low <- NULL
humana$`Change %` <- NULL
humana$Vol. <- NULL

huntingon_bancshares$Open <- NULL
huntingon_bancshares$High <- NULL
huntingon_bancshares$Low <- NULL
huntingon_bancshares$`Change %` <- NULL
huntingon_bancshares$Vol. <- NULL

huntingon_ingalls_industries$Open <- NULL
huntingon_ingalls_industries$High <- NULL
huntingon_ingalls_industries$Low <- NULL
huntingon_ingalls_industries$`Change %` <- NULL
huntingon_ingalls_industries$Vol. <- NULL

ibm$Open <- NULL
ibm$High <- NULL
ibm$Low <- NULL
ibm$`Change %` <- NULL
ibm$Vol. <- NULL

ice$Open <- NULL
ice$High <- NULL
ice$Low <- NULL
ice$`Change %` <- NULL
ice$Vol. <- NULL

idex$Open <- NULL
idex$High <- NULL
idex$Low <- NULL
idex$`Change %` <- NULL
idex$Vol. <- NULL

idexx_labels$Open <- NULL
idexx_labels$High <- NULL
idexx_labels$Low <- NULL
idexx_labels$`Change %` <- NULL
idexx_labels$Vol. <- NULL

iff$Open <- NULL
iff$High <- NULL
iff$Low <- NULL
iff$`Change %` <- NULL
iff$Vol. <- NULL

illinois_tool_works$Open <- NULL
illinois_tool_works$High <- NULL
illinois_tool_works$Low <- NULL
illinois_tool_works$`Change %` <- NULL
illinois_tool_works$Vol. <- NULL

illumina$Open <- NULL
illumina$High <- NULL
illumina$Low <- NULL
illumina$`Change %` <- NULL
illumina$Vol. <- NULL

incyte$Open <- NULL
incyte$High <- NULL
incyte$Low <- NULL
incyte$`Change %` <- NULL
incyte$Vol. <- NULL

ingersoll_rand$Open <- NULL
ingersoll_rand$High <- NULL
ingersoll_rand$Low <- NULL
ingersoll_rand$`Change %` <- NULL
ingersoll_rand$Vol. <- NULL

intel$Open <- NULL
intel$High <- NULL
intel$Low <- NULL
intel$`Change %` <- NULL
intel$Vol. <- NULL

internation_paper$Open <- NULL
internation_paper$High <- NULL
internation_paper$Low <- NULL
internation_paper$`Change %` <- NULL
internation_paper$Vol. <- NULL

intuit$Open <- NULL
intuit$High <- NULL
intuit$Low <- NULL
intuit$`Change %` <- NULL
intuit$Vol. <- NULL

intuitive_surgical$Open <- NULL
intuitive_surgical$High <- NULL
intuitive_surgical$Low <- NULL
intuitive_surgical$`Change %` <- NULL
intuitive_surgical$Vol. <- NULL

invesco$Open <- NULL
invesco$High <- NULL
invesco$Low <- NULL
invesco$`Change %` <- NULL
invesco$Vol. <- NULL

ipg$Open <- NULL
ipg$High <- NULL
ipg$Low <- NULL
ipg$`Change %` <- NULL
ipg$Vol. <- NULL

ipg_photonics$Open <- NULL
ipg_photonics$High <- NULL
ipg_photonics$Low <- NULL
ipg_photonics$`Change %` <- NULL
ipg_photonics$Vol. <- NULL

iqvia_holdings$Open <- NULL
iqvia_holdings$High <- NULL
iqvia_holdings$Low <- NULL
iqvia_holdings$`Change %` <- NULL
iqvia_holdings$Vol. <- NULL

iron_mountain$Open <- NULL
iron_mountain$High <- NULL
iron_mountain$Low <- NULL
iron_mountain$`Change %` <- NULL
iron_mountain$Vol. <- NULL

j_j$Open <- NULL
j_j$High <- NULL
j_j$Low <- NULL
j_j$`Change %` <- NULL
j_j$Vol. <- NULL

jack_henry_associates$Open <- NULL
jack_henry_associates$High <- NULL
jack_henry_associates$Low <- NULL
jack_henry_associates$`Change %` <- NULL
jack_henry_associates$Vol. <- NULL

jacobs_engineering$Open <- NULL
jacobs_engineering$High <- NULL
jacobs_engineering$Low <- NULL
jacobs_engineering$`Change %` <- NULL
jacobs_engineering$Vol. <- NULL

jb_hunt$Open <- NULL
jb_hunt$High <- NULL
jb_hunt$Low <- NULL
jb_hunt$`Change %` <- NULL
jb_hunt$Vol. <- NULL

jm_smucker$Open <- NULL
jm_smucker$High <- NULL
jm_smucker$Low <- NULL
jm_smucker$`Change %` <- NULL
jm_smucker$Vol. <- NULL

joshnson_controls$Open <- NULL
joshnson_controls$High <- NULL
joshnson_controls$Low <- NULL
joshnson_controls$`Change %` <- NULL
joshnson_controls$Vol. <- NULL

jpmorgan$Open <- NULL
jpmorgan$High <- NULL
jpmorgan$Low <- NULL
jpmorgan$`Change %` <- NULL
jpmorgan$Vol. <- NULL

juniper$Open <- NULL
juniper$High <- NULL
juniper$Low <- NULL
juniper$`Change %` <- NULL
juniper$Vol. <- NULL

kellogg$Open <- NULL
kellogg$High <- NULL
kellogg$Low <- NULL
kellogg$`Change %` <- NULL
kellogg$Vol. <- NULL

keycorp$Open <- NULL
keycorp$High <- NULL
keycorp$Low <- NULL
keycorp$`Change %` <- NULL
keycorp$Vol. <- NULL

keysight_technologies$Open <- NULL
keysight_technologies$High <- NULL
keysight_technologies$Low <- NULL
keysight_technologies$`Change %` <- NULL
keysight_technologies$Vol. <- NULL

kimberley_clark$Open <- NULL
kimberley_clark$High <- NULL
kimberley_clark$Low <- NULL
kimberley_clark$`Change %` <- NULL
kimberley_clark$Vol. <- NULL

kimco_reality$Open <- NULL
kimco_reality$High <- NULL
kimco_reality$Low <- NULL
kimco_reality$`Change %` <- NULL
kimco_reality$Vol. <- NULL

kinder_morgan$Open <- NULL
kinder_morgan$High <- NULL
kinder_morgan$Low <- NULL
kinder_morgan$`Change %` <- NULL
kinder_morgan$Vol. <- NULL

kla_corp$Open <- NULL
kla_corp$High <- NULL
kla_corp$Low <- NULL
kla_corp$`Change %` <- NULL
kla_corp$Vol. <- NULL

kraft_heinz$Open <- NULL
kraft_heinz$High <- NULL
kraft_heinz$Low <- NULL
kraft_heinz$`Change %` <- NULL
kraft_heinz$Vol. <- NULL

kroger$Open <- NULL
kroger$High <- NULL
kroger$Low <- NULL
kroger$`Change %` <- NULL
kroger$Vol. <- NULL

l3harris_technologies$Open <- NULL
l3harris_technologies$High <- NULL
l3harris_technologies$Low <- NULL
l3harris_technologies$`Change %` <- NULL
l3harris_technologies$Vol. <- NULL

laboratory_america$Open <- NULL
laboratory_america$High <- NULL
laboratory_america$Low <- NULL
laboratory_america$`Change %` <- NULL
laboratory_america$Vol. <- NULL

lam_research$Open <- NULL
lam_research$High <- NULL
lam_research$Low <- NULL
lam_research$`Change %` <- NULL
lam_research$Vol. <- NULL

lamb_weston_holdings$Open <- NULL
lamb_weston_holdings$High <- NULL
lamb_weston_holdings$Low <- NULL
lamb_weston_holdings$`Change %` <- NULL
lamb_weston_holdings$Vol. <- NULL

las_vegas_sands$Open <- NULL
las_vegas_sands$High <- NULL
las_vegas_sands$Low <- NULL
las_vegas_sands$`Change %` <- NULL
las_vegas_sands$Vol. <- NULL

leidos$Open <- NULL
leidos$High <- NULL
leidos$Low <- NULL
leidos$`Change %` <- NULL
leidos$Vol. <- NULL

lennar$Open <- NULL
lennar$High <- NULL
lennar$Low <- NULL
lennar$`Change %` <- NULL
lennar$Vol. <- NULL

lincoln_national$Open <- NULL
lincoln_national$High <- NULL
lincoln_national$Low <- NULL
lincoln_national$`Change %` <- NULL
lincoln_national$Vol. <- NULL

linde_plc$Open <- NULL
linde_plc$High <- NULL
linde_plc$Low <- NULL
linde_plc$`Change %` <- NULL
linde_plc$Vol. <- NULL

live_nation_entertainment$Open <- NULL
live_nation_entertainment$High <- NULL
live_nation_entertainment$Low <- NULL
live_nation_entertainment$`Change %` <- NULL
live_nation_entertainment$Vol. <- NULL

lkq$Open <- NULL
lkq$High <- NULL
lkq$Low <- NULL
lkq$`Change %` <- NULL
lkq$Vol. <- NULL

lockheed_martin$Open <- NULL
lockheed_martin$High <- NULL
lockheed_martin$Low <- NULL
lockheed_martin$`Change %` <- NULL
lockheed_martin$Vol. <- NULL

loews$Open <- NULL
loews$High <- NULL
loews$Low <- NULL
loews$`Change %` <- NULL
loews$Vol. <- NULL

lowes$Open <- NULL
lowes$High <- NULL
lowes$Low <- NULL
lowes$`Change %` <- NULL
lowes$Vol. <- NULL

lumen_technologies$Open <- NULL
lumen_technologies$High <- NULL
lumen_technologies$Low <- NULL
lumen_technologies$`Change %` <- NULL
lumen_technologies$Vol. <- NULL

lyondellbasell_industries$Open <- NULL
lyondellbasell_industries$High <- NULL
lyondellbasell_industries$Low <- NULL
lyondellbasell_industries$`Change %` <- NULL
lyondellbasell_industries$Vol. <- NULL

m_t_bank$Open <- NULL
m_t_bank$High <- NULL
m_t_bank$Low <- NULL
m_t_bank$`Change %` <- NULL
m_t_bank$Vol. <- NULL

marathon_oil$Open <- NULL
marathon_oil$High <- NULL
marathon_oil$Low <- NULL
marathon_oil$`Change %` <- NULL
marathon_oil$Vol. <- NULL

marathon_petroleum$Open <- NULL
marathon_petroleum$High <- NULL
marathon_petroleum$Low <- NULL
marathon_petroleum$`Change %` <- NULL
marathon_petroleum$Vol. <- NULL

marketaxesss$Open <- NULL
marketaxesss$High <- NULL
marketaxesss$Low <- NULL
marketaxesss$`Change %` <- NULL
marketaxesss$Vol. <- NULL

marriott_ink$Open <- NULL
marriott_ink$High <- NULL
marriott_ink$Low <- NULL
marriott_ink$`Change %` <- NULL
marriott_ink$Vol. <- NULL

marsh_mclennan$Open <- NULL
marsh_mclennan$High <- NULL
marsh_mclennan$Low <- NULL
marsh_mclennan$`Change %` <- NULL
marsh_mclennan$Vol. <- NULL

martin_marietta_materials$Open <- NULL
martin_marietta_materials$High <- NULL
martin_marietta_materials$Low <- NULL
martin_marietta_materials$`Change %` <- NULL
martin_marietta_materials$Vol. <- NULL

masco$Open <- NULL
masco$High <- NULL
masco$Low <- NULL
masco$`Change %` <- NULL
masco$Vol. <- NULL

mastercard$Open <- NULL
mastercard$High <- NULL
mastercard$Low <- NULL
mastercard$`Change %` <- NULL
mastercard$Vol. <- NULL

match_group$Open <- NULL
match_group$High <- NULL
match_group$Low <- NULL
match_group$`Change %` <- NULL
match_group$Vol. <- NULL

mccormick_co$Open <- NULL
mccormick_co$High <- NULL
mccormick_co$Low <- NULL
mccormick_co$`Change %` <- NULL
mccormick_co$Vol. <- NULL

mcdonald$Open <- NULL
mcdonald$High <- NULL
mcdonald$Low <- NULL
mcdonald$`Change %` <- NULL
mcdonald$Vol. <- NULL

mckesson$Open <- NULL
mckesson$High <- NULL
mckesson$Low <- NULL
mckesson$`Change %` <- NULL
mckesson$Vol. <- NULL

medtronic$Open <- NULL
medtronic$High <- NULL
medtronic$Low <- NULL
medtronic$`Change %` <- NULL
medtronic$Vol. <- NULL

merck_co$Open <- NULL
merck_co$High <- NULL
merck_co$Low <- NULL
merck_co$`Change %` <- NULL
merck_co$Vol. <- NULL

meta_platforms$Open <- NULL
meta_platforms$High <- NULL
meta_platforms$Low <- NULL
meta_platforms$`Change %` <- NULL
meta_platforms$Vol. <- NULL

metlife$Open <- NULL
metlife$High <- NULL
metlife$Low <- NULL
metlife$`Change %` <- NULL
metlife$Vol. <- NULL

mettler_toledo$Open <- NULL
mettler_toledo$High <- NULL
mettler_toledo$Low <- NULL
mettler_toledo$`Change %` <- NULL
mettler_toledo$Vol. <- NULL

mgm$Open <- NULL
mgm$High <- NULL
mgm$Low <- NULL
mgm$`Change %` <- NULL
mgm$Vol. <- NULL

microchip$Open <- NULL
microchip$High <- NULL
microchip$Low <- NULL
microchip$`Change %` <- NULL
microchip$Vol. <- NULL

micron$Open <- NULL
micron$High <- NULL
micron$Low <- NULL
micron$`Change %` <- NULL
micron$Vol. <- NULL

microsoft$Open <- NULL
microsoft$High <- NULL
microsoft$Low <- NULL
microsoft$`Change %` <- NULL
microsoft$Vol. <- NULL

mid_america_apartment$Open <- NULL
mid_america_apartment$High <- NULL
mid_america_apartment$Low <- NULL
mid_america_apartment$`Change %` <- NULL
mid_america_apartment$Vol. <- NULL

moderna$Open <- NULL
moderna$High <- NULL
moderna$Low <- NULL
moderna$`Change %` <- NULL
moderna$Vol. <- NULL

mohawk_industries$Open <- NULL
mohawk_industries$High <- NULL
mohawk_industries$Low <- NULL
mohawk_industries$`Change %` <- NULL
mohawk_industries$Vol. <- NULL

molina_healthcare$Open <- NULL
molina_healthcare$High <- NULL
molina_healthcare$Low <- NULL
molina_healthcare$`Change %` <- NULL
molina_healthcare$Vol. <- NULL

molson_coors_brewin$Open <- NULL
molson_coors_brewin$High <- NULL
molson_coors_brewin$Low <- NULL
molson_coors_brewin$`Change %` <- NULL
molson_coors_brewin$Vol. <- NULL

mondelez$Open <- NULL
mondelez$High <- NULL
mondelez$Low <- NULL
mondelez$`Change %` <- NULL
mondelez$Vol. <- NULL

monolithic$Open <- NULL
monolithic$High <- NULL
monolithic$Low <- NULL
monolithic$`Change %` <- NULL
monolithic$Vol. <- NULL

monster_beverage$Open <- NULL
monster_beverage$High <- NULL
monster_beverage$Low <- NULL
monster_beverage$`Change %` <- NULL
monster_beverage$Vol. <- NULL

moodys$Open <- NULL
moodys$High <- NULL
moodys$Low <- NULL
moodys$`Change %` <- NULL
moodys$Vol. <- NULL

morgan_stanley$Open <- NULL
morgan_stanley$High <- NULL
morgan_stanley$Low <- NULL
morgan_stanley$`Change %` <- NULL
morgan_stanley$Vol. <- NULL

mosaic$Open <- NULL
mosaic$High <- NULL
mosaic$Low <- NULL
mosaic$`Change %` <- NULL
mosaic$Vol. <- NULL

motorola$Open <- NULL
motorola$High <- NULL
motorola$Low <- NULL
motorola$`Change %` <- NULL
motorola$Vol. <- NULL

msci$Open <- NULL
msci$High <- NULL
msci$Low <- NULL
msci$`Change %` <- NULL
msci$Vol. <- NULL

nasdaq_inc$Open <- NULL
nasdaq_inc$High <- NULL
nasdaq_inc$Low <- NULL
nasdaq_inc$`Change %` <- NULL
nasdaq_inc$Vol. <- NULL

netapp$Open <- NULL
netapp$High <- NULL
netapp$Low <- NULL
netapp$`Change %` <- NULL
netapp$Vol. <- NULL

netflix$Open <- NULL
netflix$High <- NULL
netflix$Low <- NULL
netflix$`Change %` <- NULL
netflix$Vol. <- NULL

newell_brands$Open <- NULL
newell_brands$High <- NULL
newell_brands$Low <- NULL
newell_brands$`Change %` <- NULL
newell_brands$Vol. <- NULL

newmont_goldcorp$Open <- NULL
newmont_goldcorp$High <- NULL
newmont_goldcorp$Low <- NULL
newmont_goldcorp$`Change %` <- NULL
newmont_goldcorp$Vol. <- NULL

news_corp$Open <- NULL
news_corp$High <- NULL
news_corp$Low <- NULL
news_corp$`Change %` <- NULL
news_corp$Vol. <- NULL

news_corp_a$Open <- NULL
news_corp_a$High <- NULL
news_corp_a$Low <- NULL
news_corp_a$`Change %` <- NULL
news_corp_a$Vol. <- NULL

nextera_energy$Open <- NULL
nextera_energy$High <- NULL
nextera_energy$Low <- NULL
nextera_energy$`Change %` <- NULL
nextera_energy$Vol. <- NULL

nike$Open <- NULL
nike$High <- NULL
nike$Low <- NULL
nike$`Change %` <- NULL
nike$Vol. <- NULL

ni_source$Open <- NULL
ni_source$High <- NULL
ni_source$Low <- NULL
ni_source$`Change %` <- NULL
ni_source$Vol. <- NULL

nordson$Open <- NULL
nordson$High <- NULL
nordson$Low <- NULL
nordson$`Change %` <- NULL
nordson$Vol. <- NULL

norfolk_southern$Open <- NULL
norfolk_southern$High <- NULL
norfolk_southern$Low <- NULL
norfolk_southern$`Change %` <- NULL
norfolk_southern$Vol. <- NULL

northern_trust$Open <- NULL
northern_trust$High <- NULL
northern_trust$Low <- NULL
northern_trust$`Change %` <- NULL
northern_trust$Vol. <- NULL

northdrop_grumman$Open <- NULL
northdrop_grumman$High <- NULL
northdrop_grumman$Low <- NULL
northdrop_grumman$`Change %` <- NULL
northdrop_grumman$Vol. <- NULL

norwegian_cruise_line$Open <- NULL
norwegian_cruise_line$High <- NULL
norwegian_cruise_line$Low <- NULL
norwegian_cruise_line$`Change %` <- NULL
norwegian_cruise_line$Vol. <- NULL

nrg$Open <- NULL
nrg$High <- NULL
nrg$Low <- NULL
nrg$`Change %` <- NULL
nrg$Vol. <- NULL

nucor$Open <- NULL
nucor$High <- NULL
nucor$Low <- NULL
nucor$`Change %` <- NULL
nucor$Vol. <- NULL

nvidia$Open <- NULL
nvidia$High <- NULL
nvidia$Low <- NULL
nvidia$`Change %` <- NULL
nvidia$Vol. <- NULL

nvr$Open <- NULL
nvr$High <- NULL
nvr$Low <- NULL
nvr$`Change %` <- NULL
nvr$Vol. <- NULL

nxp$Open <- NULL
nxp$High <- NULL
nxp$Low <- NULL
nxp$`Change %` <- NULL
nxp$Vol. <- NULL

occidental$Open <- NULL
occidental$High <- NULL
occidental$Low <- NULL
occidental$`Change %` <- NULL
occidental$Vol. <- NULL

old_dominion_freight$Open <- NULL
old_dominion_freight$High <- NULL
old_dominion_freight$Low <- NULL
old_dominion_freight$`Change %` <- NULL
old_dominion_freight$Vol. <- NULL

omnicom$Open <- NULL
omnicom$High <- NULL
omnicom$Low <- NULL
omnicom$`Change %` <- NULL
omnicom$Vol. <- NULL

oneok$Open <- NULL
oneok$High <- NULL
oneok$Low <- NULL
oneok$`Change %` <- NULL
oneok$Vol. <- NULL

oracle$Open <- NULL
oracle$High <- NULL
oracle$Low <- NULL
oracle$`Change %` <- NULL
oracle$Vol. <- NULL

organon_co$Open <- NULL
organon_co$High <- NULL
organon_co$Low <- NULL
organon_co$`Change %` <- NULL
organon_co$Vol. <- NULL

otis_worldwide$Open <- NULL
otis_worldwide$High <- NULL
otis_worldwide$Low <- NULL
otis_worldwide$`Change %` <- NULL
otis_worldwide$Vol. <- NULL

oreilly_automotive$Open <- NULL
oreilly_automotive$High <- NULL
oreilly_automotive$Low <- NULL
oreilly_automotive$`Change %` <- NULL
oreilly_automotive$Vol. <- NULL

paccar$Open <- NULL
paccar$High <- NULL
paccar$Low <- NULL
paccar$`Change %` <- NULL
paccar$Vol. <- NULL

packaging_america$Open <- NULL
packaging_america$High <- NULL
packaging_america$Low <- NULL
packaging_america$`Change %` <- NULL
packaging_america$Vol. <- NULL

paramount_global_b$Open <- NULL
paramount_global_b$High <- NULL
paramount_global_b$Low <- NULL
paramount_global_b$`Change %` <- NULL
paramount_global_b$Vol. <- NULL

parker_hannifin$Open <- NULL
parker_hannifin$High <- NULL
parker_hannifin$Low <- NULL
parker_hannifin$`Change %` <- NULL
parker_hannifin$Vol. <- NULL

paychex$Open <- NULL
paychex$High <- NULL
paychex$Low <- NULL
paychex$`Change %` <- NULL
paychex$Vol. <- NULL

paycom_soft$Open <- NULL
paycom_soft$High <- NULL
paycom_soft$Low <- NULL
paycom_soft$`Change %` <- NULL
paycom_soft$Vol. <- NULL

paypal_holdings_inc$Open <- NULL
paypal_holdings_inc$High <- NULL
paypal_holdings_inc$Low <- NULL
paypal_holdings_inc$`Change %` <- NULL
paypal_holdings_inc$Vol. <- NULL

penn_entertainment$Open <- NULL
penn_entertainment$High <- NULL
penn_entertainment$Low <- NULL
penn_entertainment$`Change %` <- NULL
penn_entertainment$Vol. <- NULL

pentair$Open <- NULL
pentair$High <- NULL
pentair$Low <- NULL
pentair$`Change %` <- NULL
pentair$Vol. <- NULL

pepsi_co$Open <- NULL
pepsi_co$High <- NULL
pepsi_co$Low <- NULL
pepsi_co$`Change %` <- NULL
pepsi_co$Vol. <- NULL

perkin_elmer$Open <- NULL
perkin_elmer$High <- NULL
perkin_elmer$Low <- NULL
perkin_elmer$`Change %` <- NULL
perkin_elmer$Vol. <- NULL

pfizer$Open <- NULL
pfizer$High <- NULL
pfizer$Low <- NULL
pfizer$`Change %` <- NULL
pfizer$Vol. <- NULL

philip_morris$Open <- NULL
philip_morris$High <- NULL
philip_morris$Low <- NULL
philip_morris$`Change %` <- NULL
philip_morris$Vol. <- NULL

phillips_66$Open <- NULL
phillips_66$High <- NULL
phillips_66$Low <- NULL
phillips_66$`Change %` <- NULL
phillips_66$Vol. <- NULL

pinnacle_west$Open <- NULL
pinnacle_west$High <- NULL
pinnacle_west$Low <- NULL
pinnacle_west$`Change %` <- NULL
pinnacle_west$Vol. <- NULL

pioneer_natural$Open <- NULL
pioneer_natural$High <- NULL
pioneer_natural$Low <- NULL
pioneer_natural$`Change %` <- NULL
pioneer_natural$Vol. <- NULL

pnc_financial$Open <- NULL
pnc_financial$High <- NULL
pnc_financial$Low <- NULL
pnc_financial$`Change %` <- NULL
pnc_financial$Vol. <- NULL

pool$Open <- NULL
pool$High <- NULL
pool$Low <- NULL
pool$`Change %` <- NULL
pool$Vol. <- NULL

ppg_industries$Open <- NULL
ppg_industries$High <- NULL
ppg_industries$Low <- NULL
ppg_industries$`Change %` <- NULL
ppg_industries$Vol. <- NULL

ppl$Open <- NULL
ppl$High <- NULL
ppl$Low <- NULL
ppl$`Change %` <- NULL
ppl$Vol. <- NULL

principal_financial$Open <- NULL
principal_financial$High <- NULL
principal_financial$Low <- NULL
principal_financial$`Change %` <- NULL
principal_financial$Vol. <- NULL

procter_gamble$Open <- NULL
procter_gamble$High <- NULL
procter_gamble$Low <- NULL
procter_gamble$`Change %` <- NULL
procter_gamble$Vol. <- NULL

progressive$Open <- NULL
progressive$High <- NULL
progressive$Low <- NULL
progressive$`Change %` <- NULL
progressive$Vol. <- NULL

prologis$Open <- NULL
prologis$High <- NULL
prologis$Low <- NULL
prologis$`Change %` <- NULL
prologis$Vol. <- NULL

prudential_financial$Open <- NULL
prudential_financial$High <- NULL
prudential_financial$Low <- NULL
prudential_financial$`Change %` <- NULL
prudential_financial$Vol. <- NULL

ptc$Open <- NULL
ptc$High <- NULL
ptc$Low <- NULL
ptc$`Change %` <- NULL
ptc$Vol. <- NULL

public_service_enterprise$Open <- NULL
public_service_enterprise$High <- NULL
public_service_enterprise$Low <- NULL
public_service_enterprise$`Change %` <- NULL
public_service_enterprise$Vol. <- NULL

public_storage$Open <- NULL
public_storage$High <- NULL
public_storage$Low <- NULL
public_storage$`Change %` <- NULL
public_storage$Vol. <- NULL

pulte_group$Open <- NULL
pulte_group$High <- NULL
pulte_group$Low <- NULL
pulte_group$`Change %` <- NULL
pulte_group$Vol. <- NULL

pvh$Open <- NULL    
pvh$High <- NULL
pvh$Low <- NULL
pvh$`Change %` <- NULL
pvh$Vol. <- NULL

qorvo_inc$Open <- NULL
qorvo_inc$High <- NULL
qorvo_inc$Low <- NULL
qorvo_inc$`Change %` <- NULL
qorvo_inc$Vol. <- NULL

qualcomm$Open <- NULL
qualcomm$High <- NULL
qualcomm$Low <- NULL
qualcomm$`Change %` <- NULL
qualcomm$Vol. <- NULL

quanta_services$Open <- NULL
quanta_services$High <- NULL
quanta_services$Low <- NULL
quanta_services$`Change %` <- NULL
quanta_services$Vol. <- NULL

quest_diagonistcs$Open <- NULL
quest_diagonistcs$High <- NULL
quest_diagonistcs$Low <- NULL
quest_diagonistcs$`Change %` <- NULL
quest_diagonistcs$Vol. <- NULL

ralph_lauren$Open <- NULL
ralph_lauren$High <- NULL
ralph_lauren$Low <- NULL
ralph_lauren$`Change %` <- NULL
ralph_lauren$Vol. <- NULL

raymond_james_financial$Open <- NULL
raymond_james_financial$High <- NULL
raymond_james_financial$Low <- NULL
raymond_james_financial$`Change %` <- NULL
raymond_james_financial$Vol. <- NULL

raytheon_technologies$Open <- NULL
raytheon_technologies$High <- NULL
raytheon_technologies$Low <- NULL
raytheon_technologies$`Change %` <- NULL
raytheon_technologies$Vol. <- NULL

realty_income$Open <- NULL
realty_income$High <- NULL
realty_income$Low <- NULL
realty_income$`Change %` <- NULL
realty_income$Vol. <- NULL

regency_centers$Open <- NULL
regency_centers$High <- NULL
regency_centers$Low <- NULL
regency_centers$`Change %` <- NULL
regency_centers$Vol. <- NULL

regeneron_pharma$Open <- NULL
regeneron_pharma$High <- NULL
regeneron_pharma$Low <- NULL
regeneron_pharma$`Change %` <- NULL
regeneron_pharma$Vol. <- NULL

regions_financial$Open <- NULL
regions_financial$High <- NULL
regions_financial$Low <- NULL
regions_financial$`Change %` <- NULL
regions_financial$Vol. <- NULL

republic_services$Open <- NULL
republic_services$High <- NULL
republic_services$Low <- NULL
republic_services$`Change %` <- NULL
republic_services$Vol. <- NULL

resmed$Open <- NULL
resmed$High <- NULL
resmed$Low <- NULL
resmed$`Change %` <- NULL
resmed$Vol. <- NULL

robert_half$Open <- NULL
robert_half$High <- NULL
robert_half$Low <- NULL
robert_half$`Change %` <- NULL
robert_half$Vol. <- NULL

rockwell_automotion$Open <- NULL
rockwell_automotion$High <- NULL
rockwell_automotion$Low <- NULL
rockwell_automotion$`Change %` <- NULL
rockwell_automotion$Vol. <- NULL

rollins$Open <- NULL
rollins$High <- NULL
rollins$Low <- NULL
rollins$`Change %` <- NULL
rollins$Vol. <- NULL

roper_technlogies$Open <- NULL
roper_technlogies$High <- NULL
roper_technlogies$Low <- NULL
roper_technlogies$`Change %` <- NULL
roper_technlogies$Vol. <- NULL

ross_stores$Open <- NULL
ross_stores$High <- NULL
ross_stores$Low <- NULL
ross_stores$`Change %` <- NULL
ross_stores$Vol. <- NULL

royal_caribbean_cruises$Open <- NULL
royal_caribbean_cruises$High <- NULL
royal_caribbean_cruises$Low <- NULL
royal_caribbean_cruises$`Change %` <- NULL
royal_caribbean_cruises$Vol. <- NULL

sp_global$Open <- NULL
sp_global$High <- NULL
sp_global$Low <- NULL
sp_global$`Change %` <- NULL
sp_global$Vol. <- NULL

salesforce$Open <- NULL
salesforce$High <- NULL
salesforce$Low <- NULL
salesforce$`Change %` <- NULL
salesforce$Vol. <- NULL

sba_communications$Open <- NULL
sba_communications$High <- NULL
sba_communications$Low <- NULL
sba_communications$`Change %` <- NULL
sba_communications$Vol. <- NULL

schlumberger$Open <- NULL
schlumberger$High <- NULL
schlumberger$Low <- NULL
schlumberger$`Change %` <- NULL
schlumberger$Vol. <- NULL

seagate$Open <- NULL
seagate$High <- NULL
seagate$Low <- NULL
seagate$`Change %` <- NULL
seagate$Vol. <- NULL

sealer_air$Open <- NULL
sealer_air$High <- NULL
sealer_air$Low <- NULL
sealer_air$`Change %` <- NULL
sealer_air$Vol. <- NULL

sempra_energy$Open <- NULL
sempra_energy$High <- NULL
sempra_energy$Low <- NULL
sempra_energy$`Change %` <- NULL
sempra_energy$Vol. <- NULL

servicenow_inc$Open <- NULL
servicenow_inc$High <- NULL
servicenow_inc$Low <- NULL
servicenow_inc$`Change %` <- NULL
servicenow_inc$Vol. <- NULL

sherwin_williams$Open <- NULL
sherwin_williams$High <- NULL
sherwin_williams$Low <- NULL
sherwin_williams$`Change %` <- NULL
sherwin_williams$Vol. <- NULL

signature_bank$Open <- NULL
signature_bank$High <- NULL
signature_bank$Low <- NULL
signature_bank$`Change %` <- NULL
signature_bank$Vol. <- NULL

simon_property$Open <- NULL
simon_property$High <- NULL
simon_property$Low <- NULL
simon_property$`Change %` <- NULL
simon_property$Vol. <- NULL

skyworks$Open <- NULL
skyworks$High <- NULL
skyworks$Low <- NULL
skyworks$`Change %` <- NULL
skyworks$Vol. <- NULL

snap_on$Open <- NULL
snap_on$High <- NULL
snap_on$Low <- NULL
snap_on$`Change %` <- NULL
snap_on$Vol. <- NULL

solaredge_technologies$Open <- NULL
solaredge_technologies$High <- NULL
solaredge_technologies$Low <- NULL
solaredge_technologies$`Change %` <- NULL
solaredge_technologies$Vol. <- NULL

southern$Open <- NULL
southern$High <- NULL
southern$Low <- NULL
southern$`Change %` <- NULL
southern$Vol. <- NULL

southwest_airlines$Open <- NULL
southwest_airlines$High <- NULL
southwest_airlines$Low <- NULL
southwest_airlines$`Change %` <- NULL
southwest_airlines$Vol. <- NULL

stanley_black_decker$Open <- NULL
stanley_black_decker$High <- NULL
stanley_black_decker$Low <- NULL
stanley_black_decker$`Change %` <- NULL
stanley_black_decker$Vol. <- NULL

starbucks$Open <- NULL
starbucks$High <- NULL
starbucks$Low <- NULL
starbucks$`Change %` <- NULL
starbucks$Vol. <- NULL

state_street$Open <- NULL
state_street$High <- NULL
state_street$Low <- NULL
state_street$`Change %` <- NULL
state_street$Vol. <- NULL

steris$Open <- NULL
steris$High <- NULL
steris$Low <- NULL
steris$`Change %` <- NULL
steris$Vol. <- NULL

stryker$Open <- NULL
stryker$High <- NULL
stryker$Low <- NULL
stryker$`Change %` <- NULL
stryker$Vol. <- NULL

svb$Open <- NULL
svb$High <- NULL
svb$Low <- NULL
svb$`Change %` <- NULL
svb$Vol. <- NULL

synchrony_financial$Open <- NULL
synchrony_financial$High <- NULL
synchrony_financial$Low <- NULL
synchrony_financial$`Change %` <- NULL
synchrony_financial$Vol. <- NULL

synopsys$Open <- NULL
synopsys$High <- NULL
synopsys$Low <- NULL
synopsys$`Change %` <- NULL
synopsys$Vol. <- NULL

sysco$Open <- NULL
sysco$High <- NULL
sysco$Low <- NULL
sysco$`Change %` <- NULL
sysco$Vol. <- NULL

t_rowe$Open <- NULL
t_rowe$High <- NULL
t_rowe$Low <- NULL
t_rowe$`Change %` <- NULL
t_rowe$Vol. <- NULL

t_mobile_us$Open <- NULL
t_mobile_us$High <- NULL
t_mobile_us$Low <- NULL
t_mobile_us$`Change %` <- NULL
t_mobile_us$Vol. <- NULL

take_two$Open <- NULL
take_two$High <- NULL
take_two$Low <- NULL
take_two$`Change %` <- NULL
take_two$Vol. <- NULL

tapestry$Open <- NULL
tapestry$High <- NULL
tapestry$Low <- NULL
tapestry$`Change %` <- NULL
tapestry$Vol. <- NULL

target$Open <- NULL
target$High <- NULL
target$Low <- NULL
target$`Change %` <- NULL
target$Vol. <- NULL

te_connectivity$Open <- NULL
te_connectivity$High <- NULL
te_connectivity$Low <- NULL
te_connectivity$`Change %` <- NULL
te_connectivity$Vol. <- NULL

teledyne_technologies$Open <- NULL
teledyne_technologies$High <- NULL
teledyne_technologies$Low <- NULL
teledyne_technologies$`Change %` <- NULL
teledyne_technologies$Vol. <- NULL

teleflex$Open <- NULL
teleflex$High <- NULL
teleflex$Low <- NULL
teleflex$`Change %` <- NULL
teleflex$Vol. <- NULL

teradyne$Open <- NULL
teradyne$High <- NULL
teradyne$Low <- NULL
teradyne$`Change %` <- NULL
teradyne$Vol. <- NULL

tesla$Open <- NULL
tesla$High <- NULL
tesla$Low <- NULL
tesla$`Change %` <- NULL
tesla$Vol. <- NULL

texas_instruments$Open <- NULL
texas_instruments$High <- NULL
texas_instruments$Low <- NULL
texas_instruments$`Change %` <- NULL
texas_instruments$Vol. <- NULL

textron$Open <- NULL
textron$High <- NULL
textron$Low <- NULL
textron$`Change %` <- NULL
textron$Vol. <- NULL

the_aes$Open <- NULL
the_aes$High <- NULL
the_aes$Low <- NULL
the_aes$`Change %` <- NULL
the_aes$Vol. <- NULL

thermo_fisher_scientific$Open <- NULL
thermo_fisher_scientific$High <- NULL
thermo_fisher_scientific$Low <- NULL
thermo_fisher_scientific$`Change %` <- NULL
thermo_fisher_scientific$Vol. <- NULL

tjx$Open <- NULL
tjx$High <- NULL
tjx$Low <- NULL
tjx$`Change %` <- NULL
tjx$Vol. <- NULL

tractor_supply$Open <- NULL
tractor_supply$High <- NULL
tractor_supply$Low <- NULL
tractor_supply$`Change %` <- NULL
tractor_supply$Vol. <- NULL

trane_technologies$Open <- NULL
trane_technologies$High <- NULL
trane_technologies$Low <- NULL
trane_technologies$`Change %` <- NULL
trane_technologies$Vol. <- NULL

tansdigm$Open <- NULL
tansdigm$High <- NULL
tansdigm$Low <- NULL
tansdigm$`Change %` <- NULL
tansdigm$Vol. <- NULL

travelers$Open <- NULL
travelers$High <- NULL
travelers$Low <- NULL
travelers$`Change %` <- NULL
travelers$Vol. <- NULL

trimble$Open <- NULL
trimble$High <- NULL
trimble$Low <- NULL
trimble$`Change %` <- NULL
trimble$Vol. <- NULL

truist_financial_corp$Open <- NULL
truist_financial_corp$High <- NULL
truist_financial_corp$Low <- NULL
truist_financial_corp$`Change %` <- NULL
truist_financial_corp$Vol. <- NULL

tyler_technologies$Open <- NULL
tyler_technologies$High <- NULL
tyler_technologies$Low <- NULL
tyler_technologies$`Change %` <- NULL
tyler_technologies$Vol. <- NULL

tyson_foods$Open <- NULL
tyson_foods$High <- NULL
tyson_foods$Low <- NULL
tyson_foods$`Change %` <- NULL
tyson_foods$Vol. <- NULL

us_bancorp$Open <- NULL
us_bancorp$High <- NULL
us_bancorp$Low <- NULL
us_bancorp$`Change %` <- NULL
us_bancorp$Vol. <- NULL

udr$Open <- NULL
udr$High <- NULL
udr$Low <- NULL
udr$`Change %` <- NULL
udr$Vol. <- NULL

ulta_beauty$Open <- NULL
ulta_beauty$High <- NULL
ulta_beauty$Low <- NULL
ulta_beauty$`Change %` <- NULL
ulta_beauty$Vol. <- NULL

under_armour_a$Open <- NULL
under_armour_a$High <- NULL
under_armour_a$Low <- NULL
under_armour_a$`Change %` <- NULL
under_armour_a$Vol. <- NULL

under_armour_c$Open <- NULL
under_armour_c$High <- NULL
under_armour_c$Low <- NULL
under_armour_c$`Change %` <- NULL
under_armour_c$Vol. <- NULL

union_pacific$Open <- NULL
union_pacific$High <- NULL
union_pacific$Low <- NULL
union_pacific$`Change %` <- NULL
union_pacific$Vol. <- NULL

united_airlines_holdings$Open <- NULL
united_airlines_holdings$High <- NULL
united_airlines_holdings$Low <- NULL
united_airlines_holdings$`Change %` <- NULL
united_airlines_holdings$Vol. <- NULL

united_parcel_service$Open <- NULL
united_parcel_service$High <- NULL
united_parcel_service$Low <- NULL
united_parcel_service$`Change %` <- NULL
united_parcel_service$Vol. <- NULL

united_rentals$Open <- NULL
united_rentals$High <- NULL
united_rentals$Low <- NULL
united_rentals$`Change %` <- NULL
united_rentals$Vol. <- NULL

united_health$Open <- NULL
united_health$High <- NULL
united_health$Low <- NULL
united_health$`Change %` <- NULL
united_health$Vol. <- NULL

universal_health_service$Open <- NULL
universal_health_service$High <- NULL
universal_health_service$Low <- NULL
universal_health_service$`Change %` <- NULL
universal_health_service$Vol. <- NULL

valero_energy$Open <- NULL
valero_energy$High <- NULL
valero_energy$Low <- NULL
valero_energy$`Change %` <- NULL
valero_energy$Vol. <- NULL

ventas$Open <- NULL
ventas$High <- NULL
ventas$Low <- NULL
ventas$`Change %` <- NULL
ventas$Vol. <- NULL

verisign$Open <- NULL
verisign$High <- NULL
verisign$Low <- NULL
verisign$`Change %` <- NULL
verisign$Vol. <- NULL

verisk$Open <- NULL
verisk$High <- NULL
verisk$Low <- NULL
verisk$`Change %` <- NULL
verisk$Vol. <- NULL

verizon$Open <- NULL
verizon$High <- NULL
verizon$Low <- NULL
verizon$`Change %` <- NULL
verizon$Vol. <- NULL

vertex$Open <- NULL
vertex$High <- NULL
vertex$Low <- NULL
vertex$`Change %` <- NULL
vertex$Vol. <- NULL

vf$Open <- NULL
vf$High <- NULL
vf$Low <- NULL
vf$`Change %` <- NULL
vf$Vol. <- NULL

viatris$Open <- NULL
viatris$High <- NULL
viatris$Low <- NULL
viatris$`Change %` <- NULL
viatris$Vol. <- NULL

visa_a$Open <- NULL
visa_a$High <- NULL
visa_a$Low <- NULL
visa_a$`Change %` <- NULL
visa_a$Vol. <- NULL

vornado$Open <- NULL
vornado$High <- NULL
vornado$Low <- NULL
vornado$`Change %` <- NULL
vornado$Vol. <- NULL

vulcan_materials$Open <- NULL
vulcan_materials$High <- NULL
vulcan_materials$Low <- NULL
vulcan_materials$`Change %` <- NULL
vulcan_materials$Vol. <- NULL

walgreens_boots$Open <- NULL
walgreens_boots$High <- NULL
walgreens_boots$Low <- NULL
walgreens_boots$`Change %` <- NULL
walgreens_boots$Vol. <- NULL

walmart$Open <- NULL
walmart$High <- NULL
walmart$Low <- NULL
walmart$`Change %` <- NULL
walmart$Vol. <- NULL

walt_disney$Open <- NULL
walt_disney$High <- NULL
walt_disney$Low <- NULL
walt_disney$`Change %` <- NULL
walt_disney$Vol. <- NULL

warner_bros_discovery$Open <- NULL
warner_bros_discovery$High <- NULL
warner_bros_discovery$Low <- NULL
warner_bros_discovery$`Change %` <- NULL
warner_bros_discovery$Vol. <- NULL

waste_management$Open <- NULL
waste_management$High <- NULL
waste_management$Low <- NULL
waste_management$`Change %` <- NULL
waste_management$Vol. <- NULL

waters$Open <- NULL
waters$High <- NULL
waters$Low <- NULL
waters$`Change %` <- NULL
waters$Vol. <- NULL

wec_energy$Open <- NULL
wec_energy$High <- NULL
wec_energy$Low <- NULL
wec_energy$`Change %` <- NULL
wec_energy$Vol. <- NULL

wells_fargo$Open <- NULL
wells_fargo$High <- NULL
wells_fargo$Low <- NULL
wells_fargo$`Change %` <- NULL
wells_fargo$Vol. <- NULL

welltower$Open <- NULL
welltower$High <- NULL
welltower$Low <- NULL
welltower$`Change %` <- NULL
welltower$Vol. <- NULL

west_pharmaceutical$Open <- NULL
west_pharmaceutical$High <- NULL
west_pharmaceutical$Low <- NULL
west_pharmaceutical$`Change %` <- NULL
west_pharmaceutical$Vol. <- NULL

western_digital$Open <- NULL
western_digital$High <- NULL
western_digital$Low <- NULL
western_digital$`Change %` <- NULL
western_digital$Vol. <- NULL

westinghouse_air_brake$Open <- NULL
westinghouse_air_brake$High <- NULL
westinghouse_air_brake$Low <- NULL
westinghouse_air_brake$`Change %` <- NULL
westinghouse_air_brake$Vol. <- NULL

westrock_co$Open <- NULL
westrock_co$High <- NULL
westrock_co$Low <- NULL
westrock_co$`Change %` <- NULL
westrock_co$Vol. <- NULL

weyerhaeuser$Open <- NULL
weyerhaeuser$High <- NULL
weyerhaeuser$Low <- NULL
weyerhaeuser$`Change %` <- NULL
weyerhaeuser$Vol. <- NULL

whirlpool$Open <- NULL
whirlpool$High <- NULL
whirlpool$Low <- NULL
whirlpool$`Change %` <- NULL
whirlpool$Vol. <- NULL

williams$Open <- NULL
williams$High <- NULL
williams$Low <- NULL
williams$`Change %` <- NULL
williams$Vol. <- NULL

willis_tower_watson$Open <- NULL
willis_tower_watson$High <- NULL
willis_tower_watson$Low <- NULL
willis_tower_watson$`Change %` <- NULL
willis_tower_watson$Vol. <- NULL

wr_berkley$Open <- NULL
wr_berkley$High <- NULL
wr_berkley$Low <- NULL
wr_berkley$`Change %` <- NULL
wr_berkley$Vol. <- NULL

ww_grainger$Open <- NULL
ww_grainger$High <- NULL
ww_grainger$Low <- NULL
ww_grainger$`Change %` <- NULL
ww_grainger$Vol. <- NULL

wynn_resorts$Open <- NULL
wynn_resorts$High <- NULL
wynn_resorts$Low <- NULL
wynn_resorts$`Change %` <- NULL
wynn_resorts$Vol. <- NULL

xcel_energy$Open <- NULL
xcel_energy$High <- NULL
xcel_energy$Low <- NULL
xcel_energy$`Change %` <- NULL
xcel_energy$Vol. <- NULL

xylem$Open <- NULL
xylem$High <- NULL
xylem$Low <- NULL
xylem$`Change %` <- NULL
xylem$Vol. <- NULL

yum_brands$Open <- NULL
yum_brands$High <- NULL
yum_brands$Low <- NULL
yum_brands$`Change %` <- NULL
yum_brands$Vol. <- NULL

zebra$Open <- NULL
zebra$High <- NULL
zebra$Low <- NULL
zebra$`Change %` <- NULL
zebra$Vol. <- NULL

zimmer_biomet$Open <- NULL
zimmer_biomet$High <- NULL
zimmer_biomet$Low <- NULL
zimmer_biomet$`Change %` <- NULL
zimmer_biomet$Vol. <- NULL

zions$Open <- NULL
zions$High <- NULL
zions$Low <- NULL
zions$`Change %` <- NULL
zions$Vol. <- NULL

zoetis_inc$Open <- NULL
zoetis_inc$High <- NULL
zoetis_inc$Low <- NULL
zoetis_inc$`Change %` <- NULL
zoetis_inc$Vol. <- NULL

print(mmm)
# Cambio Formato Fechas (yyyy/mm/dd) ---------------------------------------
mmm$Date <- as.Date(mmm$Date, format="%m/%d/%Y")
abbot_labs$Date <- as.Date(abbot_labs$Date, format="%m/%d/%Y")
abbvie$Date <- as.Date(abbvie$Date, format="%m/%d/%Y")
accenture$Date <- as.Date(accenture$Date, format="%m/%d/%Y")
activision_blizard$Date <- as.Date(activision_blizard$Date, format="%m/%d/%Y")
adobe$Date <- as.Date(adobe$Date, format="%m/%d/%Y")
adp$Date <- as.Date(adp$Date, format="%m/%d/%Y")
advance_auto_parts$Date <- as.Date(advance_auto_parts$Date, format="%m/%d/%Y")
aflac$Date <- as.Date(aflac$Date, format="%m/%d/%Y")
agilient_tech$Date <- as.Date(agilient_tech$Date, format="%m/%d/%Y")
aig$Date <- as.Date(aig$Date, format="%m/%d/%Y")
air_products$Date <- as.Date(air_products$Date, format="%m/%d/%Y")
akamai$Date <- as.Date(akamai$Date, format="%m/%d/%Y")
alaska_air$Date <- as.Date(alaska_air$Date, format="%m/%d/%Y")
albemarle$Date <- as.Date(albemarle$Date, format="%m/%d/%Y")
alexandria_re$Date <- as.Date(alexandria_re$Date, format="%m/%d/%Y")
align$Date <- as.Date(align$Date, format="%m/%d/%Y")
allegion_plc$Date <- as.Date(allegion_plc$Date, format="%m/%d/%Y")
alliant_energy$Date <- as.Date(alliant_energy$Date, format="%m/%d/%Y")
allstate$Date <- as.Date(allstate$Date, format="%m/%d/%Y")
alphabet_a$Date <- as.Date(alphabet_a$Date, format="%m/%d/%Y")
alphabet_c$Date <- as.Date(alphabet_c$Date, format="%m/%d/%Y")
altria$Date <- as.Date(altria$Date, format="%m/%d/%Y")
amazon$Date <- as.Date(amazon$Date, format="%m/%d/%Y")
amd$Date <- as.Date(amd$Date, format="%m/%d/%Y")
ameren$Date <- as.Date(ameren$Date, format="%m/%d/%Y")
american_airlines$Date <- as.Date(american_airlines$Date, format="%m/%d/%Y")
american_electrics$Date <- as.Date(american_electrics$Date, format="%m/%d/%Y")
american_express$Date <- as.Date(american_express$Date, format="%m/%d/%Y")
american_tower$Date <- as.Date(american_tower$Date, format="%m/%d/%Y")
american_water_works$Date <- as.Date(american_water_works$Date, format="%m/%d/%Y")
ameriprise_financial$Date <- as.Date(ameriprise_financial$Date, format="%m/%d/%Y")
amerisource_bergen$Date <- as.Date(amerisource_bergen$Date, format="%m/%d/%Y")
ametek$Date <- as.Date(ametek$Date, format="%m/%d/%Y")
amgen$Date <- as.Date(amgen$Date, format="%m/%d/%Y")
amphenol$Date <- as.Date(amphenol$Date, format="%m/%d/%Y")
analog_devices$Date <- as.Date(analog_devices$Date, format="%m/%d/%Y")
ansys$Date <- as.Date(ansys$Date, format = "%m/%d/%Y")
ao_smith$Date <- as.Date(ao_smith$Date, format="%m/%d/%Y")
aon$Date <- as.Date(aon$Date, format="%m/%d/%Y")
apa_corp$Date <- as.Date(apa_corp$Date, format="%m/%d/%Y")
apple$Date <- as.Date(apple$Date, format="%m/%d/%Y")
applied_materials$Date <- as.Date(applied_materials$Date, format="%m/%d/%Y")
aptiv$Date <- as.Date(aptiv$Date, format="%m/%d/%Y")
archer_daniel_midland$Date <- as.Date(archer_daniel_midland$Date, format="%m/%d/%Y")
arista_networks$Date <- as.Date(arista_networks$Date, format="%m/%d/%Y")
arthur_j_gallagher$Date <- as.Date(arthur_j_gallagher$Date, format="%m/%d/%Y")
assurant$Date <- as.Date(assurant$Date, format="%m/%d/%Y")
at_and_t$Date <- as.Date(at_and_t$Date, format="%m/%d/%Y")
atmos_energy$Date <- as.Date(atmos_energy$Date, format="%m/%d/%Y")
autodesk$Date <- as.Date(autodesk$Date, format="%m/%d/%Y")
autozone$Date <- as.Date(autozone$Date, format="%m/%d/%Y")
avalonbay$Date <- as.Date(avalonbay$Date, format="%m/%d/%Y")
avery_dennison$Date <- as.Date(avery_dennison$Date, format="%m/%d/%Y")
baker_hugues$Date <- as.Date(baker_hugues$Date, format="%m/%d/%Y")
ball$Date <- as.Date(ball$Date, format="%m/%d/%Y")
bank_of_america$Date <- as.Date(bank_of_america$Date, format="%m/%d/%Y")
bank_of_ny_mellon$Date <- as.Date(bank_of_ny_mellon$Date, format="%m/%d/%Y")
bath_body_works$Date <- as.Date(bath_body_works$Date, format="%m/%d/%Y")
baxter$Date <- as.Date(baxter$Date, format="%m/%d/%Y")
becton_dickinson$Date <- as.Date(becton_dickinson$Date, format="%m/%d/%Y")
berkshire_hathaway_b$Date <- as.Date(berkshire_hathaway_b$Date, format="%m/%d/%Y")
best_buy$Date <- as.Date(best_buy$Date, format="%m/%d/%Y")
bio_rad_labs$Date <- as.Date(bio_rad_labs$Date, format="%m/%d/%Y")
bio_techne$Date <- as.Date(bio_techne$Date, format="%m/%d/%Y")
biogen$Date <- as.Date(biogen$Date, format="%m/%d/%Y")
blackrock$Date <- as.Date(blackrock$Date, format="%m/%d/%Y")
boeing$Date <- as.Date(boeing$Date, format="%m/%d/%Y")
booking$Date <- as.Date(booking$Date, format="%m/%d/%Y")
borgwarner$Date <- as.Date(borgwarner$Date, format="%m/%d/%Y")
boston_properties$Date <- as.Date(boston_properties$Date, format="%m/%d/%Y")
boston_scientific$Date <- as.Date(boston_scientific$Date, format="%m/%d/%Y")
briston_myers_squibb$Date <- as.Date(briston_myers_squibb$Date, format="%m/%d/%Y")
broadcom$Date <- as.Date(broadcom$Date, format="%m/%d/%Y")
broadridge$Date <- as.Date(broadridge$Date, format="%m/%d/%Y")
brown_forman$Date <- as.Date(brown_forman$Date, format="%m/%d/%Y")
brown_brown$Date <- as.Date(brown_brown$Date, format="%m/%d/%Y")
candence_design$Date <- as.Date(candence_design$Date, format="%m/%d/%Y")
caesars$Date <- as.Date(caesars$Date, format="%m/%d/%Y")
camden_property$Date <- as.Date(camden_property$Date, format="%m/%d/%Y")
campbell_soup$Date <- as.Date(campbell_soup$Date, format="%m/%d/%Y")
capital_one_financial$Date <- as.Date(capital_one_financial$Date, format="%m/%d/%Y")
cardinal_health$Date <- as.Date(cardinal_health$Date, format="%m/%d/%Y")
carmax$Date <- as.Date(carmax$Date, format="%m/%d/%Y")
carnival_corp$Date <- as.Date(carnival_corp$Date, format="%m/%d/%Y")
carrier_global$Date <- as.Date(carrier_global$Date, format="%m/%d/%Y")
catalent_inc$Date <- as.Date(catalent_inc$Date, format="%m/%d/%Y")
caterpillar$Date <- as.Date(caterpillar$Date, format="%m/%d/%Y")
cboe_global$Date <- as.Date(cboe_global$Date, format="%m/%d/%Y")
cbre_a$Date <- as.Date(cbre_a$Date, format="%m/%d/%Y")
cdw_corp$Date <- as.Date(cdw_corp$Date, format="%m/%d/%Y")
celanese$Date <- as.Date(celanese$Date, format="%m/%d/%Y")
centene$Date <- as.Date(centene$Date, format="%m/%d/%Y")
centerpoint_energy$Date <- as.Date(centerpoint_energy$Date, format="%m/%d/%Y")
ceridian_hcm$Date <- as.Date(ceridian_hcm$Date, format="%m/%d/%Y")
cf_industries$Date <- as.Date(cf_industries$Date, format="%m/%d/%Y")
ch_robinson$Date <- as.Date(ch_robinson$Date, format="%m/%d/%Y")
charles_river_laboratories$Date <- as.Date(charles_river_laboratories$Date, format="%m/%d/%Y")
charles_schwab$Date <- as.Date(charles_schwab$Date, format="%m/%d/%Y")
charter_communication$Date <- as.Date(charter_communication$Date, format="%m/%d/%Y")
chevron$Date <- as.Date(chevron$Date, format="%m/%d/%Y")
chipotle_mexican_grill$Date <- as.Date(chipotle_mexican_grill$Date, format="%m/%d/%Y")
chubb$Date <- as.Date(chubb$Date, format="%m/%d/%Y")
church_dwight$Date <- as.Date(church_dwight$Date, format="%m/%d/%Y")
cigna$Date <- as.Date(cigna$Date, format="%m/%d/%Y")
cincinnati_financial$Date <- as.Date(cincinnati_financial$Date, format="%m/%d/%Y")
cintas$Date <- as.Date(cintas$Date, format="%m/%d/%Y")
cisco$Date <- as.Date(cisco$Date, format="%m/%d/%Y")
citigroup$Date <- as.Date(citigroup$Date, format="%m/%d/%Y")
citizens_financial_group$Date <- as.Date(citizens_financial_group$Date, format="%m/%d/%Y")
clorox$Date <- as.Date(clorox$Date, format="%m/%d/%Y")
cme_group$Date <- as.Date(cme_group$Date, format="%m/%d/%Y")
cms_energy$Date <- as.Date(cms_energy$Date, format="%m/%d/%Y")
coca_cola$Date <- as.Date(coca_cola$Date, format="%m/%d/%Y")
cognizant_a$Date <- as.Date(cognizant_a$Date, format="%m/%d/%Y")
colgate_palmolive$Date <- as.Date(colgate_palmolive$Date, format="%m/%d/%Y")
comcast$Date <- as.Date(comcast$Date, format="%m/%d/%Y")
comerica$Date <- as.Date(comerica$Date, format="%m/%d/%Y")
conagra_foods$Date <- as.Date(conagra_foods$Date, format="%m/%d/%Y")
conocophilips$Date <- as.Date(conocophilips$Date, format="%m/%d/%Y")
consolidated_edison$Date <- as.Date(consolidated_edison$Date, format="%m/%d/%Y")
constellation_brands_a$Date <- as.Date(constellation_brands_a$Date, format="%m/%d/%Y")
cooper$Date <- as.Date(cooper$Date, format="%m/%d/%Y")
copart$Date <- as.Date(copart$Date, format="%m/%d/%Y")
corning$Date <- as.Date(corning$Date, format="%m/%d/%Y")
corteva$Date <- as.Date(corteva$Date, format="%m/%d/%Y")
costco$Date <- as.Date(costco$Date, format="%m/%d/%Y")
coterra_energy$Date <- as.Date(coterra_energy$Date, format="%m/%d/%Y")
crown_castle$Date <- as.Date(crown_castle$Date, format="%m/%d/%Y")
csx$Date <- as.Date(csx$Date, format="%m/%d/%Y")
cummins$Date <- as.Date(cummins$Date, format="%m/%d/%Y")
cvs_health_corp$Date <- as.Date(cvs_health_corp$Date, format="%m/%d/%Y")
danaher$Date <- as.Date(danaher$Date, format="%m/%d/%Y")
darden_restaurants$Date <- as.Date(darden_restaurants$Date, format="%m/%d/%Y")
davita$Date <- as.Date(davita$Date, format="%m/%d/%Y")
deere_company$Date <- as.Date(deere_company$Date, format="%m/%d/%Y")
delta_airlines$Date <- as.Date(delta_airlines$Date, format="%m/%d/%Y")
dentsply$Date <- as.Date(dentsply$Date, format="%m/%d/%Y")
devon_energy$Date <- as.Date(devon_energy$Date, format="%m/%d/%Y")
dexcom$Date <- as.Date(dexcom$Date, format="%m/%d/%Y")
diamondback$Date <- as.Date(diamondback$Date, format="%m/%d/%Y")
digital$Date <- as.Date(digital$Date, format="%m/%d/%Y")
discover$Date <- as.Date(discover$Date, format="%m/%d/%Y")
dish_network$Date <- as.Date(dish_network$Date, format="%m/%d/%Y")
dollar_general$Date <- as.Date(dollar_general$Date, format="%m/%d/%Y")
dollar_tree$Date <- as.Date(dollar_tree$Date, format="%m/%d/%Y")
dominion_energy$Date <- as.Date(dominion_energy$Date, format="%m/%d/%Y")
dominos_pizza$Date <- as.Date(dominos_pizza$Date, format="%m/%d/%Y")
dover$Date <- as.Date(dover$Date, format="%m/%d/%Y")
dow$Date <- as.Date(dow$Date, format="%m/%d/%Y")
dr_norton$Date <- as.Date(dr_norton$Date, format="%m/%d/%Y")
dte_energy$Date <- as.Date(dte_energy$Date, format="%m/%d/%Y")
duke_energy$Date <- as.Date(duke_energy$Date, format="%m/%d/%Y")
dupont_de_nemours$Date <- as.Date(dupont_de_nemours$Date, format="%m/%d/%Y")
dxc_technology$Date <- as.Date(dxc_technology$Date, format="%m/%d/%Y")
eastman_chemical$Date <- as.Date(eastman_chemical$Date, format="%m/%d/%Y")
eaton$Date <- as.Date(eaton$Date, format="%m/%d/%Y")
ebay$Date <- as.Date(ebay$Date, format="%m/%d/%Y")
ecolab$Date <- as.Date(ecolab$Date, format="%m/%d/%Y")
edison$Date <- as.Date(edison$Date, format="%m/%d/%Y")
edwards_lifesciences$Date <- as.Date(edwards_lifesciences$Date, format="%m/%d/%Y")
electronic_arts$Date <- as.Date(electronic_arts$Date, format="%m/%d/%Y")
elevance_health$Date <- as.Date(elevance_health$Date, format="%m/%d/%Y")
eli_lilly$Date <- as.Date(eli_lilly$Date, format="%m/%d/%Y")
emerson$Date <- as.Date(emerson$Date, format="%m/%d/%Y")
enphase$Date <- as.Date(enphase$Date, format="%m/%d/%Y")
entergy$Date <- as.Date(entergy$Date, format="%m/%d/%Y")
eog_resources$Date <- as.Date(eog_resources$Date, format="%m/%d/%Y")
epam_system$Date <- as.Date(epam_system$Date, format="%m/%d/%Y")
equifax$Date <- as.Date(equifax$Date, format="%m/%d/%Y")
equinix$Date <- as.Date(equinix$Date, format="%m/%d/%Y")
equity_residential$Date <- as.Date(equity_residential$Date, format="%m/%d/%Y")
essex_property$Date <- as.Date(essex_property$Date, format="%m/%d/%Y")
estee_lauder$Date <- as.Date(estee_lauder$Date, format="%m/%d/%Y")
etsy_inc$Date <- as.Date(etsy_inc$Date, format="%m/%d/%Y")
everest$Date <- as.Date(everest$Date, format="%m/%d/%Y")
evergy$Date <- as.Date(evergy$Date, format="%m/%d/%Y")
eversource_energy$Date <- as.Date(eversource_energy$Date, format="%m/%d/%Y")
exelon$Date <- as.Date(exelon$Date, format="%m/%d/%Y")
expedia$Date <- as.Date(expedia$Date, format="%m/%d/%Y")
expeditors_washington$Date <- as.Date(expeditors_washington$Date, format="%m/%d/%Y")
extra_space_storage$Date <- as.Date(extra_space_storage$Date, format="%m/%d/%Y")
exxon_mobil$Date <- as.Date(exxon_mobil$Date, format="%m/%d/%Y")
f5_networks$Date <- as.Date(f5_networks$Date, format="%m/%d/%Y")
factset_research$Date <- as.Date(factset_research$Date, format="%m/%d/%Y")
fastenal$Date <- as.Date(fastenal$Date, format="%m/%d/%Y")
federal_realty$Date <- as.Date(federal_realty$Date, format="%m/%d/%Y")
fedex$Date <- as.Date(fedex$Date, format="%m/%d/%Y")
fidelity_national_info$Date <- as.Date(fidelity_national_info$Date, format="%m/%d/%Y")
fifth_third$Date <- as.Date(fifth_third$Date, format="%m/%d/%Y")
first_republic_bank$Date <- as.Date(first_republic_bank$Date, format="%m/%d/%Y")
firstenergy$Date <- as.Date(firstenergy$Date, format="%m/%d/%Y")
fiserv$Date <- as.Date(fiserv$Date, format="%m/%d/%Y")
fleetcor$Date <- as.Date(fleetcor$Date, format="%m/%d/%Y")
fmc$Date <- as.Date(fmc$Date, format="%m/%d/%Y")
ford_motor$Date <- as.Date(ford_motor$Date, format="%m/%d/%Y")
fortinet$Date <- as.Date(fortinet$Date, format="%m/%d/%Y")
fortive$Date <- as.Date(fortive$Date, format="%m/%d/%Y")
fortune_brands$Date <- as.Date(fortune_brands$Date, format="%m/%d/%Y")
fox_corp_a$Date <- as.Date(fox_corp_a$Date, format="%m/%d/%Y")
fox_corp_b$Date <- as.Date(fox_corp_b$Date, format="%m/%d/%Y")
franklin_resources$Date <- as.Date(franklin_resources$Date, format="%m/%d/%Y")
freeport_mcmoran$Date <- as.Date(freeport_mcmoran$Date, format="%m/%d/%Y")
garmin$Date <- as.Date(garmin$Date, format="%m/%d/%Y")
gartner$Date <- as.Date(gartner$Date, format="%m/%d/%Y")
gen_digital$Date <- as.Date(gen_digital$Date, format="%m/%d/%Y")
generac$Date <- as.Date(generac$Date, format="%m/%d/%Y")
general_dynamics$Date <- as.Date(general_dynamics$Date, format="%m/%d/%Y")
general_electric$Date <- as.Date(general_electric$Date, format="%m/%d/%Y")
general_mills$Date <- as.Date(general_mills$Date, format="%m/%d/%Y")
general_motors$Date <- as.Date(general_motors$Date, format="%m/%d/%Y")
genuine_parts$Date <- as.Date(genuine_parts$Date, format="%m/%d/%Y")
gilead$Date <- as.Date(gilead$Date, format="%m/%d/%Y")
global_payments$Date <- as.Date(global_payments$Date, format="%m/%d/%Y")
globe_life$Date <- as.Date(globe_life$Date, format="%m/%d/%Y")
goldman_sachs$Date <- as.Date(goldman_sachs$Date, format="%m/%d/%Y")
halliburton$Date <- as.Date(halliburton$Date, format="%m/%d/%Y")
hartford$Date <- as.Date(hartford$Date, format="%m/%d/%Y")
hasbro$Date <- as.Date(hasbro$Date, format="%m/%d/%Y")
hca$Date <- as.Date(hca$Date, format="%m/%d/%Y")
healthpeak_properties$Date <- as.Date(healthpeak_properties$Date, format="%m/%d/%Y")
henry_schein$Date <- as.Date(henry_schein$Date, format="%m/%d/%Y")
hershey_co$Date <- as.Date(hershey_co$Date, format="%m/%d/%Y")
hess$Date <- as.Date(hess$Date, format="%m/%d/%Y")
hewlett_packard$Date <- as.Date(hewlett_packard$Date, format="%m/%d/%Y")
hilton_worldwide$Date <- as.Date(hilton_worldwide$Date, format="%m/%d/%Y")
hologic$Date <- as.Date(hologic$Date, format="%m/%d/%Y")
home_depot$Date <- as.Date(home_depot$Date, format="%m/%d/%Y")
honeywell$Date <- as.Date(honeywell$Date, format="%m/%d/%Y")
hormel_foods$Date <- as.Date(hormel_foods$Date, format="%m/%d/%Y")
host_hotels_resorts$Date <- as.Date(host_hotels_resorts$Date, format="%m/%d/%Y")
hownet$Date <- as.Date(hownet$Date, format="%m/%d/%Y")
hp_inc$Date <- as.Date(hp_inc$Date, format="%m/%d/%Y")
humana$Date <- as.Date(humana$Date, format="%m/%d/%Y")
huntingon_bancshares$Date <- as.Date(huntingon_bancshares$Date, format="%m/%d/%Y")
huntingon_ingalls_industries$Date <- as.Date(huntingon_ingalls_industries$Date, format="%m/%d/%Y")
ibm$Date <- as.Date(ibm$Date, format="%m/%d/%Y")
ice$Date <- as.Date(ice$Date, format="%m/%d/%Y")
idex$Date <- as.Date(idex$Date, format="%m/%d/%Y")
idexx_labels$Date <- as.Date(idexx_labels$Date, format="%m/%d/%Y")
iff$Date <- as.Date(iff$Date, format="%m/%d/%Y")
illinois_tool_works$Date <- as.Date(illinois_tool_works$Date, format="%m/%d/%Y")
illumina$Date <- as.Date(illumina$Date, format="%m/%d/%Y")
incyte$Date <- as.Date(incyte$Date, format="%m/%d/%Y")
ingersoll_rand$Date <- as.Date(ingersoll_rand$Date, format="%m/%d/%Y")
intel$Date <- as.Date(intel$Date, format="%m/%d/%Y")
internation_paper$Date <- as.Date(internation_paper$Date, format="%m/%d/%Y")
intuit$Date <- as.Date(intuit$Date, format="%m/%d/%Y")
intuitive_surgical$Date <- as.Date(intuitive_surgical$Date, format="%m/%d/%Y")
invesco$Date <- as.Date(invesco$Date, format="%m/%d/%Y")
ipg$Date <- as.Date(ipg$Date, format="%m/%d/%Y")
ipg_photonics$Date <- as.Date(ipg_photonics$Date, format="%m/%d/%Y")
iqvia_holdings$Date <- as.Date(iqvia_holdings$Date, format="%m/%d/%Y")
iron_mountain$Date <- as.Date(iron_mountain$Date, format="%m/%d/%Y")
j_j$Date <- as.Date(j_j$Date, format="%m/%d/%Y")
jack_henry_associates$Date <- as.Date(jack_henry_associates$Date, format="%m/%d/%Y")
jacobs_engineering$Date <- as.Date(jacobs_engineering$Date, format="%m/%d/%Y")
jb_hunt$Date <- as.Date(jb_hunt$Date, format="%m/%d/%Y")
jm_smucker$Date <- as.Date(jm_smucker$Date, format="%m/%d/%Y")
joshnson_controls$Date <- as.Date(joshnson_controls$Date, format="%m/%d/%Y")
jpmorgan$Date <- as.Date(jpmorgan$Date, format="%m/%d/%Y")
juniper$Date <- as.Date(juniper$Date, format="%m/%d/%Y")
kellogg$Date <- as.Date(kellogg$Date, format="%m/%d/%Y")
keycorp$Date <- as.Date(keycorp$Date, format="%m/%d/%Y")
keysight_technologies$Date <- as.Date(keysight_technologies$Date, format="%m/%d/%Y")
kimberley_clark$Date <- as.Date(kimberley_clark$Date, format="%m/%d/%Y")
kimco_reality$Date <- as.Date(kimco_reality$Date, format="%m/%d/%Y")
kinder_morgan$Date <- as.Date(kinder_morgan$Date, format="%m/%d/%Y")
kla_corp$Date <- as.Date(kla_corp$Date, format="%m/%d/%Y")
kraft_heinz$Date <- as.Date(kraft_heinz$Date, format="%m/%d/%Y")
kroger$Date <- as.Date(kroger$Date, format="%m/%d/%Y")
l3harris_technologies$Date <- as.Date(l3harris_technologies$Date, format="%m/%d/%Y")
laboratory_america$Date <- as.Date(laboratory_america$Date, format="%m/%d/%Y")
lam_research$Date <- as.Date(lam_research$Date, format="%m/%d/%Y")
lamb_weston_holdings$Date <- as.Date(lamb_weston_holdings$Date, format="%m/%d/%Y")
las_vegas_sands$Date <- as.Date(las_vegas_sands$Date, format="%m/%d/%Y")
leidos$Date <- as.Date(leidos$Date, format="%m/%d/%Y")
lennar$Date <- as.Date(lennar$Date, format="%m/%d/%Y")
lincoln_national$Date <- as.Date(lincoln_national$Date, format="%m/%d/%Y")
linde_plc$Date <- as.Date(linde_plc$Date, format="%m/%d/%Y")
live_nation_entertainment$Date <- as.Date(live_nation_entertainment$Date, format="%m/%d/%Y")
lkq$Date <- as.Date(lkq$Date, format="%m/%d/%Y")
lockheed_martin$Date <- as.Date(lockheed_martin$Date, format="%m/%d/%Y")
loews$Date <- as.Date(loews$Date, format="%m/%d/%Y")
lowes$Date <- as.Date(lowes$Date, format="%m/%d/%Y")
lumen_technologies$Date <- as.Date(lumen_technologies$Date, format="%m/%d/%Y")
lyondellbasell_industries$Date <- as.Date(lyondellbasell_industries$Date, format="%m/%d/%Y")
m_t_bank$Date <- as.Date(m_t_bank$Date, format="%m/%d/%Y")
marathon_oil$Date <- as.Date(marathon_oil$Date, format="%m/%d/%Y")
marathon_petroleum$Date <- as.Date(marathon_petroleum$Date, format="%m/%d/%Y")
marketaxesss$Date <- as.Date(marketaxesss$Date, format="%m/%d/%Y")
marriott_ink$Date <- as.Date(marriott_ink$Date, format="%m/%d/%Y")
marsh_mclennan$Date <- as.Date(marsh_mclennan$Date, format="%m/%d/%Y")
martin_marietta_materials$Date <- as.Date(martin_marietta_materials$Date, format="%m/%d/%Y")
masco$Date <- as.Date(masco$Date, format="%m/%d/%Y")
mastercard$Date <- as.Date(mastercard$Date, format="%m/%d/%Y")
match_group$Date <- as.Date(match_group$Date, format="%m/%d/%Y")
mccormick_co$Date <- as.Date(mccormick_co$Date, format="%m/%d/%Y")
mcdonald$Date <- as.Date(mcdonald$Date, format="%m/%d/%Y")
mckesson$Date <- as.Date(mckesson$Date, format="%m/%d/%Y")
medtronic$Date <- as.Date(medtronic$Date, format="%m/%d/%Y")
merck_co$Date <- as.Date(merck_co$Date, format="%m/%d/%Y")
meta_platforms$Date <- as.Date(meta_platforms$Date, format="%m/%d/%Y")
metlife$Date <- as.Date(metlife$Date, format="%m/%d/%Y")
mettler_toledo$Date <- as.Date(mettler_toledo$Date, format="%m/%d/%Y")
mgm$Date <- as.Date(mgm$Date, format="%m/%d/%Y")
microchip$Date <- as.Date(microchip$Date, format="%m/%d/%Y")
micron$Date <- as.Date(micron$Date, format="%m/%d/%Y")
microsoft$Date <- as.Date(microsoft$Date, format="%m/%d/%Y")
mid_america_apartment$Date <- as.Date(mid_america_apartment$Date, format="%m/%d/%Y")
moderna$Date <- as.Date(moderna$Date, format="%m/%d/%Y")
mohawk_industries$Date <- as.Date(mohawk_industries$Date, format="%m/%d/%Y")
molina_healthcare$Date <- as.Date(molina_healthcare$Date, format="%m/%d/%Y")
molson_coors_brewin$Date <- as.Date(molson_coors_brewin$Date, format="%m/%d/%Y")
mondelez$Date <- as.Date(mondelez$Date, format="%m/%d/%Y")
monolithic$Date <- as.Date(monolithic$Date, format="%m/%d/%Y")
monster_beverage$Date <- as.Date(monster_beverage$Date, format="%m/%d/%Y")
moodys$Date <- as.Date(moodys$Date, format="%m/%d/%Y")
morgan_stanley$Date <- as.Date(morgan_stanley$Date, format="%m/%d/%Y")
mosaic$Date <- as.Date(mosaic$Date, format="%m/%d/%Y")
motorola$Date <- as.Date(motorola$Date, format="%m/%d/%Y")
msci$Date <- as.Date(msci$Date, format="%m/%d/%Y")
nasdaq_inc$Date <- as.Date(nasdaq_inc$Date, format="%m/%d/%Y")
netapp$Date <- as.Date(netapp$Date, format="%m/%d/%Y")
netflix$Date <- as.Date(netflix$Date, format="%m/%d/%Y")
newell_brands$Date <- as.Date(newell_brands$Date, format="%m/%d/%Y")
newmont_goldcorp$Date <- as.Date(newmont_goldcorp$Date, format="%m/%d/%Y")
news_corp$Date <- as.Date(news_corp$Date, format="%m/%d/%Y")
news_corp_a$Date <- as.Date(news_corp_a$Date, format="%m/%d/%Y")
nextera_energy$Date <- as.Date(nextera_energy$Date, format="%m/%d/%Y")
nike$Date <- as.Date(nike$Date, format="%m/%d/%Y")
ni_source$Date <- as.Date(ni_source$Date, format="%m/%d/%Y")
nordson$Date <- as.Date(nordson$Date, format="%m/%d/%Y")
norfolk_southern$Date <- as.Date(norfolk_southern$Date, format="%m/%d/%Y")
northern_trust$Date <- as.Date(northern_trust$Date, format="%m/%d/%Y")
northdrop_grumman$Date <- as.Date(northdrop_grumman$Date, format="%m/%d/%Y")
norwegian_cruise_line$Date <- as.Date(norwegian_cruise_line$Date, format="%m/%d/%Y")
nrg$Date <- as.Date(nrg$Date, format="%m/%d/%Y")
nucor$Date <- as.Date(nucor$Date, format="%m/%d/%Y")
nvidia$Date <- as.Date(nvidia$Date, format="%m/%d/%Y")
nvr$Date <- as.Date(nvr$Date, format="%m/%d/%Y")
nxp$Date <- as.Date(nxp$Date, format="%m/%d/%Y")
occidental$Date <- as.Date(occidental$Date, format="%m/%d/%Y")
old_dominion_freight$Date <- as.Date(old_dominion_freight$Date, format="%m/%d/%Y")
omnicom$Date <- as.Date(omnicom$Date, format="%m/%d/%Y")
oneok$Date <- as.Date(oneok$Date, format="%m/%d/%Y")
oracle$Date <- as.Date(oracle$Date, format="%m/%d/%Y")
organon_co$Date <- as.Date(organon_co$Date, format="%m/%d/%Y")
otis_worldwide$Date <- as.Date(otis_worldwide$Date, format="%m/%d/%Y")
oreilly_automotive$Date <- as.Date(oreilly_automotive$Date, format="%m/%d/%Y")
paccar$Date <- as.Date(paccar$Date, format="%m/%d/%Y")
packaging_america$Date <- as.Date(packaging_america$Date, format="%m/%d/%Y")
paramount_global_b$Date <- as.Date(paramount_global_b$Date, format="%m/%d/%Y")
parker_hannifin$Date <- as.Date(parker_hannifin$Date, format="%m/%d/%Y")
paychex$Date <- as.Date(paychex$Date, format="%m/%d/%Y")
paycom_soft$Date <- as.Date(paycom_soft$Date, format="%m/%d/%Y")
paypal_holdings_inc$Date <- as.Date(paypal_holdings_inc$Date, format="%m/%d/%Y")
penn_entertainment$Date <- as.Date(penn_entertainment$Date, format="%m/%d/%Y")
pentair$Date <- as.Date(pentair$Date, format="%m/%d/%Y")
pepsi_co$Date <- as.Date(pepsi_co$Date, format="%m/%d/%Y")
perkin_elmer$Date <- as.Date(perkin_elmer$Date, format="%m/%d/%Y")
pfizer$Date <- as.Date(pfizer$Date, format="%m/%d/%Y")
philip_morris$Date <- as.Date(philip_morris$Date, format="%m/%d/%Y")
phillips_66$Date <- as.Date(phillips_66$Date, format="%m/%d/%Y")
pinnacle_west$Date <- as.Date(pinnacle_west$Date, format="%m/%d/%Y")
pioneer_natural$Date <- as.Date(pioneer_natural$Date, format="%m/%d/%Y")
pnc_financial$Date <- as.Date(pnc_financial$Date, format="%m/%d/%Y")
pool$Date <- as.Date(pool$Date, format="%m/%d/%Y")
ppg_industries$Date <- as.Date(ppg_industries$Date, format="%m/%d/%Y")
ppl$Date <- as.Date(ppl$Date, format="%m/%d/%Y")
principal_financial$Date <- as.Date(principal_financial$Date, format="%m/%d/%Y")
procter_gamble$Date <- as.Date(procter_gamble$Date, format="%m/%d/%Y")
progressive$Date <- as.Date(progressive$Date, format="%m/%d/%Y")
prologis$Date <- as.Date(prologis$Date, format="%m/%d/%Y")
prudential_financial$Date <- as.Date(prudential_financial$Date, format="%m/%d/%Y")
ptc$Date <- as.Date(ptc$Date, format="%m/%d/%Y")
public_service_enterprise$Date <- as.Date(public_service_enterprise$Date, format="%m/%d/%Y")
public_storage$Date <- as.Date(public_storage$Date, format="%m/%d/%Y")
pulte_group$Date <- as.Date(pulte_group$Date, format="%m/%d/%Y")
pvh$Date <- as.Date(pvh$Date, format="%m/%d/%Y")
qorvo_inc$Date <- as.Date(qorvo_inc$Date, format="%m/%d/%Y")
qualcomm$Date <- as.Date(qualcomm$Date, format="%m/%d/%Y")
quanta_services$Date <- as.Date(quanta_services$Date, format="%m/%d/%Y")
quest_diagonistcs$Date <- as.Date(quest_diagonistcs$Date, format="%m/%d/%Y")
ralph_lauren$Date <- as.Date(ralph_lauren$Date, format="%m/%d/%Y")
raymond_james_financial$Date <- as.Date(raymond_james_financial$Date, format="%m/%d/%Y")
raytheon_technologies$Date <- as.Date(raytheon_technologies$Date, format="%m/%d/%Y")
realty_income$Date <- as.Date(realty_income$Date, format="%m/%d/%Y")
regency_centers$Date <- as.Date(regency_centers$Date, format="%m/%d/%Y")
regeneron_pharma$Date <- as.Date(regeneron_pharma$Date, format="%m/%d/%Y")
regions_financial$Date <- as.Date(regions_financial$Date, format="%m/%d/%Y")
republic_services$Date <- as.Date(republic_services$Date, format="%m/%d/%Y")
resmed$Date <- as.Date(resmed$Date, format="%m/%d/%Y")
robert_half$Date <- as.Date(robert_half$Date, format="%m/%d/%Y")
rockwell_automotion$Date <- as.Date(rockwell_automotion$Date, format="%m/%d/%Y")
rollins$Date <- as.Date(rollins$Date, format="%m/%d/%Y")
roper_technlogies$Date <- as.Date(roper_technlogies$Date, format="%m/%d/%Y")
ross_stores$Date <- as.Date(ross_stores$Date, format="%m/%d/%Y")
royal_caribbean_cruises$Date <- as.Date(royal_caribbean_cruises$Date, format="%m/%d/%Y")
sp_global$Date <- as.Date(sp_global$Date, format="%m/%d/%Y")
salesforce$Date <- as.Date(salesforce$Date, format="%m/%d/%Y")
sba_communications$Date <- as.Date(sba_communications$Date, format="%m/%d/%Y")
schlumberger$Date <- as.Date(schlumberger$Date, format="%m/%d/%Y")
seagate$Date <- as.Date(seagate$Date, format="%m/%d/%Y")
sealer_air$Date <- as.Date(sealer_air$Date, format="%m/%d/%Y")
sempra_energy$Date <- as.Date(sempra_energy$Date, format="%m/%d/%Y")
servicenow_inc$Date <- as.Date(servicenow_inc$Date, format="%m/%d/%Y")
sherwin_williams$Date <- as.Date(sherwin_williams$Date, format="%m/%d/%Y")
signature_bank$Date <- as.Date(signature_bank$Date, format="%m/%d/%Y")
simon_property$Date <- as.Date(simon_property$Date, format="%m/%d/%Y")
skyworks$Date <- as.Date(skyworks$Date, format="%m/%d/%Y")
snap_on$Date <- as.Date(snap_on$Date, format="%m/%d/%Y")
solaredge_technologies$Date <- as.Date(solaredge_technologies$Date, format="%m/%d/%Y")
southern$Date <- as.Date(southern$Date, format="%m/%d/%Y")
southwest_airlines$Date <- as.Date(southwest_airlines$Date, format="%m/%d/%Y")
stanley_black_decker$Date <- as.Date(stanley_black_decker$Date, format="%m/%d/%Y")
starbucks$Date <- as.Date(starbucks$Date, format="%m/%d/%Y")
state_street$Date <- as.Date(state_street$Date, format="%m/%d/%Y")
steris$Date <- as.Date(steris$Date, format="%m/%d/%Y")
stryker$Date <- as.Date(stryker$Date, format="%m/%d/%Y")
svb$Date <- as.Date(svb$Date, format="%m/%d/%Y")
synchrony_financial$Date <- as.Date(synchrony_financial$Date, format="%m/%d/%Y")
synopsys$Date <- as.Date(synopsys$Date, format="%m/%d/%Y")
sysco$Date <- as.Date(sysco$Date, format="%m/%d/%Y")
t_rowe$Date <- as.Date(t_rowe$Date, format="%m/%d/%Y")
t_mobile_us$Date <- as.Date(t_mobile_us$Date, format="%m/%d/%Y")
take_two$Date <- as.Date(take_two$Date, format="%m/%d/%Y")
tapestry$Date <- as.Date(tapestry$Date, format="%m/%d/%Y")
target$Date <- as.Date(target$Date, format="%m/%d/%Y")
te_connectivity$Date <- as.Date(te_connectivity$Date, format="%m/%d/%Y")
teledyne_technologies$Date <- as.Date(teledyne_technologies$Date, format="%m/%d/%Y")
teleflex$Date <- as.Date(teleflex$Date, format="%m/%d/%Y")
teradyne$Date <- as.Date(teradyne$Date, format="%m/%d/%Y")
tesla$Date <- as.Date(tesla$Date, format="%m/%d/%Y")
texas_instruments$Date <- as.Date(texas_instruments$Date, format="%m/%d/%Y")
textron$Date <- as.Date(textron$Date, format="%m/%d/%Y")
the_aes$Date <- as.Date(the_aes$Date, format="%m/%d/%Y")
thermo_fisher_scientific$Date <- as.Date(thermo_fisher_scientific$Date, format="%m/%d/%Y")
tjx$Date <- as.Date(tjx$Date, format="%m/%d/%Y")
tractor_supply$Date <- as.Date(tractor_supply$Date, format="%m/%d/%Y")
trane_technologies$Date <- as.Date(trane_technologies$Date, format="%m/%d/%Y")
tansdigm$Date <- as.Date(tansdigm$Date, format="%m/%d/%Y")
travelers$Date <- as.Date(travelers$Date, format="%m/%d/%Y")
trimble$Date <- as.Date(trimble$Date, format="%m/%d/%Y")
truist_financial_corp$Date <- as.Date(truist_financial_corp$Date, format="%m/%d/%Y")
tyler_technologies$Date <- as.Date(tyler_technologies$Date, format="%m/%d/%Y")
tyson_foods$Date <- as.Date(tyson_foods$Date, format="%m/%d/%Y")
us_bancorp$Date <- as.Date(us_bancorp$Date, format="%m/%d/%Y")
udr$Date <- as.Date(udr$Date, format="%m/%d/%Y")
ulta_beauty$Date <- as.Date(ulta_beauty$Date, format="%m/%d/%Y")
under_armour_a$Date <- as.Date(under_armour_a$Date, format="%m/%d/%Y")
under_armour_c$Date <- as.Date(under_armour_c$Date, format="%m/%d/%Y")
union_pacific$Date <- as.Date(union_pacific$Date, format="%m/%d/%Y")
united_airlines_holdings$Date <- as.Date(united_airlines_holdings$Date, format="%m/%d/%Y")
united_parcel_service$Date <- as.Date(united_parcel_service$Date, format="%m/%d/%Y")
united_rentals$Date <- as.Date(united_rentals$Date, format="%m/%d/%Y")
united_health$Date <- as.Date(united_health$Date, format="%m/%d/%Y")
universal_health_service$Date <- as.Date(universal_health_service$Date, format="%m/%d/%Y")
valero_energy$Date <- as.Date(valero_energy$Date, format="%m/%d/%Y")
ventas$Date <- as.Date(ventas$Date, format="%m/%d/%Y")
verisign$Date <- as.Date(verisign$Date, format="%m/%d/%Y")
verisk$Date <- as.Date(verisk$Date, format="%m/%d/%Y")
verizon$Date <- as.Date(verizon$Date, format="%m/%d/%Y")
vertex$Date <- as.Date(vertex$Date, format="%m/%d/%Y")
vf$Date <- as.Date(vf$Date, format="%m/%d/%Y")
viatris$Date <- as.Date(viatris$Date, format="%m/%d/%Y")
visa_a$Date <- as.Date(visa_a$Date, format="%m/%d/%Y")
vornado$Date <- as.Date(vornado$Date, format="%m/%d/%Y")
vulcan_materials$Date <- as.Date(vulcan_materials$Date, format="%m/%d/%Y")
walgreens_boots$Date <- as.Date(walgreens_boots$Date, format="%m/%d/%Y")
walmart$Date <- as.Date(walmart$Date, format="%m/%d/%Y")
walt_disney$Date <- as.Date(walt_disney$Date, format="%m/%d/%Y")
warner_bros_discovery$Date <- as.Date(warner_bros_discovery$Date, format="%m/%d/%Y")
waste_management$Date <- as.Date(waste_management$Date, format="%m/%d/%Y")
waters$Date <- as.Date(waters$Date, format="%m/%d/%Y")
wec_energy$Date <- as.Date(wec_energy$Date, format="%m/%d/%Y")
wells_fargo$Date <- as.Date(wells_fargo$Date, format="%m/%d/%Y")
welltower$Date <- as.Date(welltower$Date, format="%m/%d/%Y")
west_pharmaceutical$Date <- as.Date(west_pharmaceutical$Date, format="%m/%d/%Y")
western_digital$Date <- as.Date(western_digital$Date, format="%m/%d/%Y")
westinghouse_air_brake$Date <- as.Date(westinghouse_air_brake$Date, format="%m/%d/%Y")
westrock_co$Date <- as.Date(westrock_co$Date, format="%m/%d/%Y")
weyerhaeuser$Date <- as.Date(weyerhaeuser$Date, format="%m/%d/%Y")
whirlpool$Date <- as.Date(whirlpool$Date, format="%m/%d/%Y")
williams$Date <- as.Date(williams$Date, format="%m/%d/%Y")
willis_tower_watson$Date <- as.Date(willis_tower_watson$Date, format="%m/%d/%Y")
wr_berkley$Date <- as.Date(wr_berkley$Date, format="%m/%d/%Y")
ww_grainger$Date <- as.Date(ww_grainger$Date, format="%m/%d/%Y")
wynn_resorts$Date <- as.Date(wynn_resorts$Date, format="%m/%d/%Y")
xcel_energy$Date <- as.Date(xcel_energy$Date, format="%m/%d/%Y")
xylem$Date <- as.Date(xylem$Date, format="%m/%d/%Y")
yum_brands$Date <- as.Date(yum_brands$Date, format="%m/%d/%Y")
zebra$Date <- as.Date(zebra$Date, format="%m/%d/%Y")
zimmer_biomet$Date <- as.Date(zimmer_biomet$Date, format="%m/%d/%Y")
zions$Date <- as.Date(zions$Date, format="%m/%d/%Y")
zoetis_inc$Date <- as.Date(zoetis_inc$Date, format="%m/%d/%Y")





# AGRUPACIÓN POR INDUSTRIAS -----------------------------------------------



# Consumer Discretionary - Industria S&P 500  -----------------------------


if ( "consumer_discretionary_stock" %in% ls()){
  rm(consumer_discretionary_stock) 
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}

list_consumer_discretionary = list(advance_auto_parts = advance_auto_parts,
  amazon, aptiv, autozone, bath_body_works, best_buy, booking, borgwarner, carnival_corp,
  chipotle_mexican_grill, caesars, dollar_general, dr_norton, dollar_tree, dominos_pizza,
  darden_restaurants, ebay, expedia, ford_motor, general_motors, genuine_parts, 
  garmin, hasbro, home_depot, hilton_worldwide, carmax, lennar, lkq, lowes, las_vegas_sands, marriott_ink, mcdonald, 
  mgm, mohawk_industries, norwegian_cruise_line, nike, nvr, newell_brands, oreilly_automotive, pulte_group, pool, 
  royal_caribbean_cruises, ralph_lauren, ross_stores, starbucks, target, tjx, tapestry, tractor_supply, ulta_beauty, 
  vf, whirlpool, wynn_resorts, yum_brands
  )
consumer_discretionary_stock <- list_consumer_discretionary %>% reduce(left_join, by='Date') 

#View(consumer_discretionary_stock)


  
  #Modificación de los nombres de las variables

consumer_discretionary_stock <- rename(consumer_discretionary_stock, 
                                       advance_auto_parts = Price.x,
                                       amazon = Price.y, aptiv = Price.x.x, autozone = Price.y.y, bath_body_works = Price.x.x.x,
                                       best_buy = Price.y.y.y, booking = Price.x.x.x.x, borgwarner = Price.y.y.y.y, carnival_corp = Price.x.x.x.x.x,
                                       chipotle_mexican_grill = Price.y.y.y.y.y, caesars = Price.x.x.x.x.x.x, dollar_general = Price.y.y.y.y.y.y,
                                       dr_norton = Price.x.x.x.x.x.x.x, dollar_tree = Price.y.y.y.y.y.y.y, 
                                       dominos_pizza = Price.x.x.x.x.x.x.x.x, darden_restaurants = Price.y.y.y.y.y.y.y.y,
                                       ebay = Price.x.x.x.x.x.x.x.x.x, expedia = Price.y.y.y.y.y.y.y.y.y, 
                                       ford_motor = Price.x.x.x.x.x.x.x.x.x.x, general_motors = Price.y.y.y.y.y.y.y.y.y.y, 
                                       genuine_parts = Price.x.x.x.x.x.x.x.x.x.x.x, 
                                       garmin = Price.y.y.y.y.y.y.y.y.y.y.y, hasbro = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       home_depot = Price.y.y.y.y.y.y.y.y.y.y.y.y, hilton_worldwide = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                       carmax = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , lennar = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                                       lkq = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, lowes = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       las_vegas_sands = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       marriott_ink = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       mcdonald = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       mgm = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x
                                       , mohawk_industries = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                                       , norwegian_cruise_line = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x 
                                       , nike = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                                       , nvr = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       newell_brands = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       oreilly_automotive = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                       pulte_group = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                                       , pool = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                                       royal_caribbean_cruises = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                                       , ralph_lauren = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       ross_stores = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                                       starbucks = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, target = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       tjx =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , tapestry =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       tractor_supply =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                       ulta_beauty =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                                       vf = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                                       whirlpool = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                                       wynn_resorts = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                       yum_brands = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
)
names(consumer_discretionary_stock)
#View(consumer_discretionary_stock)
print(consumer_discretionary_stock)

#View(stocks) #Se han modificado los nombres de las variables

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente

consumer_discretionary_missing <- is.na(consumer_discretionary_stock)
print(consumer_discretionary_stock[consumer_discretionary_missing]) #No ha valores NA

#Creación de variable media del valor de la industria analizada

"consumer_discretionary_mean <- aggregate(cbind( advance_auto_parts + 
                                               amazon + aptiv + autozone + bath_body_works +  best_buy +  booking +  borgwarner +  carnival_corp + 
                                               chipotle_mexican_grill  +  caesars  +  dollar_general  + dr_norton+dollar_tree+dominos_pizza +
                                               darden_restaurants+ebay+expedia+ford_motor+general_motors+genuine_parts+
                                               garmin+hasbro+home_depot+hilton_worldwide+carmax+lennar+lkq+lowes+las_vegas_sands+marriott_ink+mcdonald+
                                               mgm+mohawk_industries+norwegian_cruise_line+nike+nvr+newell_brands+oreilly_automotive+pulte_group+pool+
                                               royal_caribbean_cruises+ralph_lauren+ross_stores+starbucks+target+tjx+tapestry+tractor_supply+ulta_beauty+
                                               vf+whirlpool+wynn_resorts+yum_brands) ~ Date , data = consumer_discretionary_stock , mean)
cbind()"
#colnames(consumer_discretionary_mean)[2] <- c("Media Consumer Discretionary Industry")

#View(consumer_discretionary_mean)


#consumer_discretionary_final  <- merge(consumer_discretionary_stock, consumer_discretionary_mean, by = "Date")
#str(consumer_discretionary_final)

#View(consumer_discretionary_final)

#datos <- structure(list(TempA = c(20, 42, NA, 22, 18), 
#                       humedad = c(52, 35, 62, 60, 85), 
#                       TempB = c(22, 25, 28, 32, NA)), 
#                  class = "data.frame", 
#                  row.names = c(NA, -5L))

#consumer_discretionary_final <-  rowMeans(consumer_discretionary_stock[, 2:ncol(consumer_discretionary_stock)  ], na.rm = T)
#rm(consumer_discretionary_final)
#View(consumer_discretionary_final)

#Visualización de los Datos
#ggplot(consumer_discretionary_stock) +
 # geom_line() +
  #geom_line(aes(x = fecha, y = índice2, color = "índice2")) +
  #geom_line(aes(x = fecha, y = índice3, color = "índice3")) +
  #scale_color_discrete(name = "índice")

# Consumer Staples - Industry S&P 500  ------------------------------------

if ( "consumer_staples_stock" %in% ls()){
  rm(consumer_staples_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_consumer_staples = list(archer_daniel_midland, brown_forman, conagra_foods, church_dwight, colgate_palmolive, clorox,
                                   costco, campbell_soup, estee_lauder, general_mills, hormel_foods, hershey_co, kellogg, 
                                   kraft_heinz, kimberley_clark, coca_cola, kroger, mondelez,
                                   mccormick_co, monster_beverage, altria, pepsi_co, procter_gamble, philip_morris, jm_smucker,
                                   constellation_brands_a, sysco, molson_coors_brewin, tyson_foods, walgreens_boots, walmart
)
consumer_staples_stock <- list_consumer_staples %>% reduce(inner_join, by='Date') 


#View(consumer_staples_stock)



#Modificación de los nombres de las variables

consumer_staples_stock <- rename(consumer_staples_stock, 
                                 archer_daniel_midland = Price.x,
                                 brown_forman = Price.y, conagra_foods = Price.x.x, church_dwight = Price.y.y, colgate_palmolive = Price.x.x.x,
                                 clorox = Price.y.y.y, costco = Price.x.x.x.x, campbell_soup = Price.y.y.y.y, estee_lauder = Price.x.x.x.x.x,
                                 general_mills = Price.y.y.y.y.y, hormel_foods = Price.x.x.x.x.x.x, hershey_co = Price.y.y.y.y.y.y,
                                 kellogg = Price.x.x.x.x.x.x.x, kraft_heinz = Price.y.y.y.y.y.y.y, 
                                 kimberley_clark = Price.x.x.x.x.x.x.x.x, coca_cola = Price.y.y.y.y.y.y.y.y,
                                 kroger = Price.x.x.x.x.x.x.x.x.x, mondelez = Price.y.y.y.y.y.y.y.y.y, 
                                 mccormick_co = Price.x.x.x.x.x.x.x.x.x.x, monster_beverage = Price.y.y.y.y.y.y.y.y.y.y, 
                                 altria = Price.x.x.x.x.x.x.x.x.x.x.x, 
                                 pepsi_co = Price.y.y.y.y.y.y.y.y.y.y.y, procter_gamble = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                                 philip_morris = Price.y.y.y.y.y.y.y.y.y.y.y.y, jm_smucker = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                 constellation_brands_a = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , sysco = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                                 molson_coors_brewin = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, tyson_foods = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                                 walgreens_boots = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,  walmart = Price
)
#rm(consumer_staples_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(consumer_staples_stock) 
#View(consumer_staples_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente

consumer_staples_missing <- is.na(consumer_staples_stock)
print(consumer_staples_stock[consumer_staples_missing]) #No ha valores NA


# Health Care - Industry S&P 500  -----------------------------------------


if ( "health_care_stock" %in% ls()){
  rm(health_care_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_health_care = list(agilient_tech, abbvie, amerisource_bergen, abbot_labs, align, amgen, baxter, becton_dickinson, biogen, 
                        bio_rad_labs, briston_myers_squibb, boston_scientific, cardinal_health, cigna, centene, cooper, 
                        charles_river_laboratories, catalent_inc, cvs_health_corp, quest_diagonistcs, danaher, davita, 
                        dexcom, elevance_health, edwards_lifesciences, gilead, hca, hologic, henry_schein, humana, idexx_labels,
                        illumina, incyte, iqvia_holdings, intuitive_surgical, j_j, laboratory_america, eli_lilly, 
                        mckesson, medtronic, molina_healthcare, merck_co, mettler_toledo, pfizer, perkin_elmer,
                        regeneron_pharma, resmed, steris, stryker, bio_techne, teleflex, thermo_fisher_scientific, universal_health_service, 
                        united_health, vertex, viatris, waters, west_pharmaceutical, dentsply, zimmer_biomet, zoetis_inc
  
)
health_care_stock <- list_health_care %>% reduce(left_join, by='Date', copy = TRUE) 

#View(health_care_stock)



#Modificación de los nombres de las variables

health_care_stock <- rename(health_care_stock, 
                            agilient_tech = Price.x,
                            abbvie = Price.y, amerisource_bergen = Price.x.x, abbot_labs = Price.y.y, align = Price.x.x.x,
                            amgen = Price.y.y.y, baxter = Price.x.x.x.x, becton_dickinson = Price.y.y.y.y, biogen = Price.x.x.x.x.x,
                            bio_rad_labs = Price.y.y.y.y.y, briston_myers_squibb = Price.x.x.x.x.x.x, boston_scientific = Price.y.y.y.y.y.y,
                            cardinal_health = Price.x.x.x.x.x.x.x, cigna = Price.y.y.y.y.y.y.y, 
                            centene = Price.x.x.x.x.x.x.x.x, cooper = Price.y.y.y.y.y.y.y.y,
                            charles_river_laboratories = Price.x.x.x.x.x.x.x.x.x, catalent_inc = Price.y.y.y.y.y.y.y.y.y, 
                            cvs_health_corp = Price.x.x.x.x.x.x.x.x.x.x, quest_diagonistcs = Price.y.y.y.y.y.y.y.y.y.y, 
                            danaher = Price.x.x.x.x.x.x.x.x.x.x.x, 
                            davita = Price.y.y.y.y.y.y.y.y.y.y.y, dexcom = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                            elevance_health = Price.y.y.y.y.y.y.y.y.y.y.y.y, edwards_lifesciences = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            gilead = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , hca = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            hologic = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, henry_schein = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            humana = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            idexx_labels = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            illumina = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            incyte = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x
                           , iqvia_holdings = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                                       , intuitive_surgical = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x 
                                       , j_j = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                                       , laboratory_america = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           eli_lilly = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           mckesson = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           medtronic = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                                       , molina_healthcare = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           merck_co = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                                       , mettler_toledo = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           pfizer = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                           perkin_elmer = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, regeneron_pharma = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           steris =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , resmed =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           stryker =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           bio_techne =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           teleflex = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           thermo_fisher_scientific = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                           universal_health_service = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           united_health = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                           vertex = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           viatris = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                           waters =  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                           west_pharmaceutical =  Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                           dentsply = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                           zimmer_biomet = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                           zoetis_inc= Price 
)

#rm(health_care_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(health_care_stock)
#View(health_care_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente

health_care_missing <- is.na(health_care_stock)
print(health_care_stock[health_care_missing]) #No ha valores NA

# Industrials - Industria S&P 500  ----------------------------------------

if ( "industrials_stock" %in% ls()){
  rm(industrials_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_industrials = list(american_airlines, alaska_air, allegion_plc, ametek, ao_smith, boeing, caterpillar, ch_robinson, 
                        cummins, copart, csx, cintas, delta_airlines, deere_company, dover, equifax, emerson, eaton, expeditors_washington,
                        fastenal, fedex, general_dynamics, general_electric, generac, ww_grainger, huntingon_ingalls_industries,
                        honeywell, idex, ingersoll_rand, illinois_tool_works, jacobs_engineering, jb_hunt, leidos, l3harris_technologies, 
                        lockheed_martin, southwest_airlines, masco, mmm, nordson, northdrop_grumman, norfolk_southern, old_dominion_freight,
                        paccar, parker_hannifin, pentair, quanta_services, robert_half, rockwell_automotion, rollins, republic_services, 
                        raytheon_technologies, snap_on, stanley_black_decker, textron, united_airlines_holdings, union_pacific, united_parcel_service,
                        united_rentals, verisk, westinghouse_air_brake, waste_management, xylem
                        
)
industrials_stock <- list_industrials %>% reduce(inner_join, by='Date', copy = TRUE) 

#View(industrials_stock)

#Modificación de los nombres de las variables

industrials_stock <- rename(industrials_stock, 
                            american_airlines = Price.x,
                            alaska_air = Price.y, allegion_plc = Price.x.x, ametek = Price.y.y, ao_smith = Price.x.x.x,
                            boeing = Price.y.y.y, caterpillar = Price.x.x.x.x, ch_robinson = Price.y.y.y.y, cummins = Price.x.x.x.x.x,
                            copart = Price.y.y.y.y.y, csx = Price.x.x.x.x.x.x, cintas = Price.y.y.y.y.y.y,
                            delta_airlines = Price.x.x.x.x.x.x.x, deere_company = Price.y.y.y.y.y.y.y, 
                            dover = Price.x.x.x.x.x.x.x.x, equifax = Price.y.y.y.y.y.y.y.y,
                            emerson = Price.x.x.x.x.x.x.x.x.x, eaton = Price.y.y.y.y.y.y.y.y.y, 
                            expeditors_washington = Price.x.x.x.x.x.x.x.x.x.x, fastenal = Price.y.y.y.y.y.y.y.y.y.y, 
                            fedex = Price.x.x.x.x.x.x.x.x.x.x.x, 
                            general_dynamics = Price.y.y.y.y.y.y.y.y.y.y.y, general_electric = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                            generac = Price.y.y.y.y.y.y.y.y.y.y.y.y, ww_grainger = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            huntingon_ingalls_industries = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , honeywell = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            idex = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, ingersoll_rand = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            illinois_tool_works = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            jacobs_engineering = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            jb_hunt = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            leidos = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x
                            , l3harris_technologies = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                            , lockheed_martin = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x 
                            , southwest_airlines = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                            , masco = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            mmm = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            nordson = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            northdrop_grumman = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                            , norfolk_southern = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            old_dominion_freight = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                            , paccar = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            parker_hannifin = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                            pentair = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, quanta_services = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            robert_half =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , rockwell_automotion =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            rollins =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            republic_services =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            raytheon_technologies = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            snap_on = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                            stanley_black_decker = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            textron = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                            united_airlines_holdings = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            union_pacific = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                            united_parcel_service =  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            united_rentals =  Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                            verisk = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            westinghouse_air_brake = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                            waste_management=  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            xylem = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
)

#rm(industrials_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(industrials_stock)
#View(industrials_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente

industrials_missing <- is.na(industrials_stock)
print(industrials_stock[industrials_missing]) #No ha valores NA

# Information Technology - Industry S&P 500  ------------------------------

if ( "information_technology_stock" %in% ls()){
  rm(information_technology_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}

list_information_technology = list(apple, accenture, adobe, analog_devices, autodesk, akamai, applied_materials, advance_auto_parts, arista_networks, 
                                   ansys, amphenol, broadcom, broadridge, candence_design, cdw_corp, salesforce, cisco, cognizant_a, 
                                   dxc_technology, enphase, epam_system, f5_networks, fidelity_national_info, fiserv, fleetcor, firstenergy, fortinet,
                                   gen_digital, global_payments, hp_inc, intel, intuit, gartner, jack_henry_associates, juniper, 
                                   keysight_technologies, kla_corp, lam_research, mastercard, microchip, monolithic, microsoft, motorola, 
                                   micron, servicenow_inc, netapp, nvidia, nxp, oracle, paycom_soft, paychex,  ptc, 
                                   qualcomm, qorvo_inc, roper_technlogies,  synopsys, seagate, skyworks, teledyne_technologies, 
                                   te_connectivity, teradyne, trimble, texas_instruments, tyler_technologies, visa_a, verisign, western_digital, 
                                   zebra
                        
)
information_technology_stock <- list_information_technology %>% reduce(inner_join, by='Date', copy = TRUE) 

#View(information_technology_stock)

#Modificación de los nombres de las variables

information_technology_stock <- rename(information_technology_stock, 
                            apple = Price.x,
                            accenture = Price.y, adobe = Price.x.x, analog_devices = Price.y.y, autodesk = Price.x.x.x,
                            akamai = Price.y.y.y, applied_materials = Price.x.x.x.x, advance_auto_parts = Price.y.y.y.y, 
                            arista_networks = Price.x.x.x.x.x,
                            ansys = Price.y.y.y.y.y, amphenol = Price.x.x.x.x.x.x, broadcom = Price.y.y.y.y.y.y,
                            broadridge = Price.x.x.x.x.x.x.x, candence_design = Price.y.y.y.y.y.y.y, 
                            cdw_corp = Price.x.x.x.x.x.x.x.x, salesforce = Price.y.y.y.y.y.y.y.y,
                            cisco = Price.x.x.x.x.x.x.x.x.x, cognizant_a = Price.y.y.y.y.y.y.y.y.y, 
                            dxc_technology = Price.x.x.x.x.x.x.x.x.x.x, enphase = Price.y.y.y.y.y.y.y.y.y.y, 
                            epam_system = Price.x.x.x.x.x.x.x.x.x.x.x, 
                            f5_networks = Price.y.y.y.y.y.y.y.y.y.y.y, fidelity_national_info = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                            fiserv = Price.y.y.y.y.y.y.y.y.y.y.y.y, fleetcor = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            firstenergy = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , fortinet = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            gen_digital = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, global_payments = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            hp_inc = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            intel = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            intuit = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            gartner = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x
                            , jack_henry_associates = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                            , juniper = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x 
                            , keysight_technologies = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                            , kla_corp = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            lam_research = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            mastercard = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            microchip = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                            , monolithic = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            microsoft = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                            , motorola = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            micron = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                            servicenow_inc = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, netapp = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            nvidia =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , nxp =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            oracle =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            paycom_soft =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            paychex = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            ptc = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                            qualcomm = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                            qorvo_inc = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                            roper_technlogies = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            synopsys = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                            seagate =  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            skyworks =  Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                            teledyne_technologies = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            te_connectivity = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                            teradyne=  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                            trimble = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                            texas_instruments = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            tyler_technologies = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            visa_a = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            verisign = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            western_digital = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                            zebra = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                           
)

#rm(information_technology_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables
dim(information_technology_stock)
names(information_technology_stock)
#View(information_technology_stock)
#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente

information_technology_missing <- is.na(information_technology_stock)
print(information_technology_stock[information_technology_missing]) #HAY VALORES NA (SOLUCIONAR)
# Materials - Industry S&P 500  -------------------------------------------

if ( "materials_stock" %in% ls()){
  rm(materials_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_materials = list(albemarle, air_products, avery_dennison, ball, celanese, cf_industries, corteva, 
                      dupont_de_nemours,  ecolab, eastman_chemical, freeport_mcmoran, fmc, internation_paper, 
                      linde_plc, lyondellbasell_industries, martin_marietta_materials, mosaic, newmont_goldcorp, nucor, 
                      packaging_america, ppg_industries, sealer_air, sherwin_williams, vulcan_materials
)
materials_stock <- list_materials %>% reduce(left_join, by='Date', copy = TRUE) 

#View(materials_stock)

#Modificación de los nombres de las variables

materials_stock <- rename(materials_stock, 
                                       albemarle = Price.x,
                                       air_products = Price.y, avery_dennison = Price.x.x, ball = Price.y.y, celanese = Price.x.x.x,
                                       cf_industries = Price.y.y.y, corteva = Price.x.x.x.x, dupont_de_nemours = Price.y.y.y.y, 
                          ecolab = Price.x.x.x.x.x,
                          eastman_chemical = Price.y.y.y.y.y, freeport_mcmoran = Price.x.x.x.x.x.x, fmc = Price.y.y.y.y.y.y,
                          internation_paper = Price.x.x.x.x.x.x.x, linde_plc = Price.y.y.y.y.y.y.y, 
                          lyondellbasell_industries = Price.x.x.x.x.x.x.x.x, martin_marietta_materials = Price.y.y.y.y.y.y.y.y,
                          mosaic = Price.x.x.x.x.x.x.x.x.x, newmont_goldcorp = Price.y.y.y.y.y.y.y.y.y, 
                          nucor = Price.x.x.x.x.x.x.x.x.x.x, packaging_america = Price.y.y.y.y.y.y.y.y.y.y, 
                          ppg_industries = Price.x.x.x.x.x.x.x.x.x.x.x, 
                          sealer_air = Price.y.y.y.y.y.y.y.y.y.y.y, sherwin_williams = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                          vulcan_materials = Price.y.y.y.y.y.y.y.y.y.y.y.y
                                      
)

#rm(materials_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(materials_stock)
#View(materials_stock)
dim(materials_stock)
#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente            QUITAR

materials_missing <- is.na(materials_stock)
print(materials_stock[materials_missing]) #No ha valores NA

# Real Estate - Industria S&P 500  ----------------------------------------

if ( "real_estate_stock" %in% ls()){
  rm(real_estate_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_real_estate = list(american_tower, alexandria_re, avalonbay, boston_properties, cbre_a, crown_castle, 
                        camden_property, digital, equinix, equity_residential, essex_property, extra_space_storage, 
                        federal_realty, host_hotels_resorts, iron_mountain, kimco_reality, mid_america_apartment, 
                        realty_income, healthpeak_properties, prologis, public_storage, regency_centers, sba_communications, 
                        simon_property, udr, ventas, welltower, weyerhaeuser
)
real_estate_stock <- list_real_estate %>% reduce(left_join, by='Date', copy = TRUE) 

#View(real_estate_stock)

#Modificación de los nombres de las variables

real_estate_stock <- rename(real_estate_stock, 
                                       american_tower = Price.x,
                                       alexandria_re = Price.y, avalonbay = Price.x.x, boston_properties = Price.y.y, cbre_a = Price.x.x.x,
                                       crown_castle = Price.y.y.y, camden_property = Price.x.x.x.x, digital = Price.y.y.y.y, 
                                       equinix = Price.x.x.x.x.x,
                                       equity_residential = Price.y.y.y.y.y, essex_property = Price.x.x.x.x.x.x, extra_space_storage = Price.y.y.y.y.y.y,
                                       federal_realty = Price.x.x.x.x.x.x.x, host_hotels_resorts = Price.y.y.y.y.y.y.y, 
                                       iron_mountain = Price.x.x.x.x.x.x.x.x, kimco_reality = Price.y.y.y.y.y.y.y.y,
                                       mid_america_apartment = Price.x.x.x.x.x.x.x.x.x, realty_income = Price.y.y.y.y.y.y.y.y.y, 
                                       healthpeak_properties = Price.x.x.x.x.x.x.x.x.x.x, prologis = Price.y.y.y.y.y.y.y.y.y.y, 
                                       public_storage = Price.x.x.x.x.x.x.x.x.x.x.x, 
                                       regency_centers = Price.y.y.y.y.y.y.y.y.y.y.y, sba_communications = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                                       simon_property = Price.y.y.y.y.y.y.y.y.y.y.y.y, udr = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                                       ventas = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                            welltower = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                            weyerhaeuser = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y
)

#rm(real_estate_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(real_estate_stock)
#View(real_estate_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente 

real_estate_missing <- is.na(real_estate_stock)
print(real_estate_stock[real_estate_missing]) #No ha valores NA

# Communication Services - Industry S&P 500  -----------------------------

if ( "communication_service_stock" %in% ls()){
  rm(communication_service_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_communication_service = list(activision_blizard, charter_communication, comcast, walt_disney, dish_network, electronic_arts, 
                                   alphabet_a, alphabet_c, lumen_technologies, live_nation_entertainment, 
                                  meta_platforms, match_group, netflix, news_corp, news_corp_a, omnicom, paramount_global_b, at_and_t, 
                                  t_mobile_us, take_two, verizon, warner_bros_discovery
)
communication_service_stock <- list_communication_service %>% reduce(inner_join, by='Date', copy = TRUE) 

#View(communication_service_stock)

#Modificación de los nombres de las variables

communication_service_stock <- rename(communication_service_stock, 
                                       activision_blizard = Price.x,
                                       charter_communication = Price.y, comcast = Price.x.x, walt_disney = Price.y.y, dish_network = Price.x.x.x,
                                       electronic_arts = Price.y.y.y, alphabet_a = Price.x.x.x.x, alphabet_c = Price.y.y.y.y, 
                                      lumen_technologies = Price.x.x.x.x.x,
                                      live_nation_entertainment = Price.y.y.y.y.y, meta_platforms = Price.x.x.x.x.x.x,
                                      match_group = Price.y.y.y.y.y.y,
                                      netflix = Price.x.x.x.x.x.x.x, news_corp = Price.y.y.y.y.y.y.y, 
                                      news_corp_a = Price.x.x.x.x.x.x.x.x, omnicom = Price.y.y.y.y.y.y.y.y,
                                      paramount_global_b = Price.x.x.x.x.x.x.x.x.x, at_and_t = Price.y.y.y.y.y.y.y.y.y, 
                                      t_mobile_us = Price.x.x.x.x.x.x.x.x.x.x, take_two = Price.y.y.y.y.y.y.y.y.y.y, 
                                      verizon = Price.x.x.x.x.x.x.x.x.x.x.x, 
                                      warner_bros_discovery = Price.y.y.y.y.y.y.y.y.y.y.y ,
                                      
)

#rm(communication_service_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(communication_service_stock)
#View(communication_service_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente 

communication_service_missing <- is.na(communication_service_stock)
print(communication_service_stock[communication_service_missing]) #No ha valores NA


# Utilities - Industry S&P 500  -------------------------------------------

if ( "utilities_stock" %in% ls()){
  rm(utilities_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_utilities = list(ameren, american_electrics, the_aes, atmos_energy, american_water_works, 
                      cms_energy, centerpoint_energy, dominion_energy, dte_energy, duke_energy, 
                      consolidated_edison, edison, eversource_energy, entergy, evergy, exelon, firstenergy, alliant_energy, 
                      nextera_energy, ni_source, nrg, public_service_enterprise, pinnacle_west, ppl, southern, sempra_energy, 
                      wec_energy, xcel_energy
)
utilities_stock <- list_utilities %>% reduce(inner_join, by='Date', copy = TRUE) 


#View(utilities_stock)

#Modificación de los nombres de las variables

utilities_stock <- rename(utilities_stock, 
                           ameren = Price.x,
                           american_airlines = Price.y, the_aes = Price.x.x, atmos_energy = Price.y.y, american_water_works = Price.x.x.x,
                          cms_energy = Price.y.y.y, centerpoint_energy = Price.x.x.x.x, dominion_energy = Price.y.y.y.y, 
                          dte_energy = Price.x.x.x.x.x,
                          duke_energy = Price.y.y.y.y.y, consolidated_edison = Price.x.x.x.x.x.x, edison = Price.y.y.y.y.y.y,
                          eversource_energy = Price.x.x.x.x.x.x.x, entergy = Price.y.y.y.y.y.y.y, 
                           evergy = Price.x.x.x.x.x.x.x.x, exelon = Price.y.y.y.y.y.y.y.y,
                          firstenergy = Price.x.x.x.x.x.x.x.x.x, alliant_energy = Price.y.y.y.y.y.y.y.y.y, 
                          nextera_energy = Price.x.x.x.x.x.x.x.x.x.x, ni_source = Price.y.y.y.y.y.y.y.y.y.y, 
                          nrg = Price.x.x.x.x.x.x.x.x.x.x.x, 
                          public_service_enterprise = Price.y.y.y.y.y.y.y.y.y.y.y, pinnacle_west = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                          ppc = Price.y.y.y.y.y.y.y.y.y.y.y.y, southern = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                          sempra_energy = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , wec_energy = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                          xcel_energy = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                           
                           
)

#rm(utilities_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(utilities_stock)
#View(utilities_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente 

communication_service_missing <- is.na(communication_service_stock)
print(communication_service_stock[communication_service_missing]) #No ha valores NA

# Financials - Industry S&P 500  ------------------------------------------

if ( "financials_stock" %in% ls()){
  rm(financials_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_financials = list(aflac, assurant, arthur_j_gallagher, allstate, ameriprise_financial, aon, american_express, 
                       bank_of_america, franklin_resources, bank_of_ny_mellon, blackrock, berkshire_hathaway_b, brown_brown, citigroup, 
                       chubb, cboe_global, citizens_financial_group, cincinnati_financial, comerica, cme_group, capital_one_financial, 
                       discover, factset_research, fifth_third, first_republic_bank, globe_life, goldman_sachs, 
                       huntingon_bancshares, hartford, invesco, jpmorgan, keycorp, loews, lincoln_national, moodys, 
                       metlife, marketaxesss, marsh_mclennan, morgan_stanley, msci, m_t_bank, nasdaq_inc, northern_trust, 
                       principal_financial, progressive, pnc_financial, prudential_financial, everest, regions_financial, 
                       raymond_james_financial, signature_bank, charles_schwab, svb, sp_global, state_street, synchrony_financial, 
                       truist_financial_corp, t_rowe, travelers, us_bancorp, wells_fargo, wr_berkley, willis_tower_watson, 
                       zions
)
financials_stock <- list_financials %>% reduce(inner_join, by='Date', copy = TRUE) 

#View(financials_stock)
#Modificación de los nombres de las variables

financials_stock <- rename(financials_stock, 
                           aflac = Price.x,
                           assurant = Price.y, arthur_j_gallagher = Price.x.x, allstate = Price.y.y, ameriprise_financial = Price.x.x.x,
                           aon = Price.y.y.y, american_express = Price.x.x.x.x, bank_of_america = Price.y.y.y.y, 
                           franklin_resources = Price.x.x.x.x.x,
                           bank_of_ny_mellon = Price.y.y.y.y.y, blackrock = Price.x.x.x.x.x.x, berkshire_hathaway_b = Price.y.y.y.y.y.y,
                           brown_brown = Price.x.x.x.x.x.x.x, citigroup = Price.y.y.y.y.y.y.y, 
                           chubb = Price.x.x.x.x.x.x.x.x, cboe_global = Price.y.y.y.y.y.y.y.y,
                           citizens_financial_group = Price.x.x.x.x.x.x.x.x.x, cincinnati_financial = Price.y.y.y.y.y.y.y.y.y, 
                           comerica = Price.x.x.x.x.x.x.x.x.x.x, cme_group = Price.y.y.y.y.y.y.y.y.y.y, 
                           capital_one_financial = Price.x.x.x.x.x.x.x.x.x.x.x, 
                           discover = Price.y.y.y.y.y.y.y.y.y.y.y, factset_research = Price.x.x.x.x.x.x.x.x.x.x.x.x , 
                           fifth_third = Price.y.y.y.y.y.y.y.y.y.y.y.y, first_republic_bank = Price.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           globe_life = Price.y.y.y.y.y.y.y.y.y.y.y.y.y , goldman_sachs = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           huntingon_bancshares = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y, hartford = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           invesco = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           jpmorgan = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           keycorp = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           loews = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x
                           , lincoln_national = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                           , moodys = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x 
                           , metlife = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                           , marketaxesss = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           marsh_mclennan = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           morgan_stanley = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           msci = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y 
                           , m_t_bank = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           nasdaq_inc = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y
                           , northern_trust = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           principal_financial = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                           progressive = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, pnc_financial = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           prudential_financial =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , everest =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           regions_financial =Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           raymond_james_financial =Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           signature_bank = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           charles_schwab = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y ,
                           svb = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x ,
                           sp_global = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                           state_street = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x, 
                           synchrony_financial = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                           truist_financial_corp =  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                           t_rowe =  Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                           travelers = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                           us_bancorp = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y, 
                           wells_fargo =  Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x,
                           wr_berkley = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y,
                           willis_tower_watson = Price.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x.x , 
                           zions = Price.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y.y , 
                           
)

#rm(financials_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables



names(financials_stock)
#View(financials_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente 

communication_service_missing <- is.na(communication_service_stock)
print(communication_service_stock[communication_service_missing]) #No ha valores NA

 
# Energy - Industry S&P 500  ----------------------------------------------

if ( "energy_stock" %in% ls()){
  rm(energy_stock)
  print("Eliminamos el dataframe para evitar posibles errores de ejecución")
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}


list_energy = list(apa_corp, baker_hugues, conocophilips, coterra_energy, chevron, devon_energy, eog_resources, diamondback, 
                   halliburton, hess, kinder_morgan, marathon_oil, oneok, occidental, phillips_66, pioneer_natural, schlumberger, 
                  valero_energy, williams, exxon_mobil
)

energy_stock <- list_energy %>% reduce(inner_join, by='Date', copy = TRUE) 


#Modificación de los nombres de las variables

energy_stock <- rename(energy_stock, 
                                      apa_corp = Price.x,
                                      baker_hugues = Price.y, conocophilips = Price.x.x, coterra_energy = Price.y.y,
                                      chevron = Price.x.x.x,
                                      devon_energy = Price.y.y.y, eog_resources = Price.x.x.x.x, diamondback = Price.y.y.y.y, 
                                      halliburton = Price.x.x.x.x.x,
                                      hess = Price.y.y.y.y.y, kinder_morgan = Price.x.x.x.x.x.x,
                                      marathon_oil = Price.y.y.y.y.y.y,
                                      oneok = Price.x.x.x.x.x.x.x, occidental = Price.y.y.y.y.y.y.y, 
                                      phillips_66 = Price.x.x.x.x.x.x.x.x, pioneer_natural = Price.y.y.y.y.y.y.y.y,
                                      schlumberger = Price.x.x.x.x.x.x.x.x.x, valero_energy = Price.y.y.y.y.y.y.y.y.y, 
                                      williams = Price.x.x.x.x.x.x.x.x.x.x, exxon_mobil = Price.y.y.y.y.y.y.y.y.y.y
                                    
)

#rm(energy_stock) #Para borrar el objeto por si hay algún problema con el cambio de nombre de las variables

names(energy_stock)
#View(energy_stock)

#Comprobamos que no hay valores faltantes en el dataframe creado anteriormente 

energy_missing <- is.na(energy_stock)
print(energy_stock[energy_missing]) #No ha valores NA

# Descargar CSV Creados ---------------------------------------------------

#setwd("Data/Industries - SP500/")
write.table(consumer_discretionary_stock,file = "Data/Industries - SP500/Consumer Discretionary Industry.csv", sep = ";", dec = ",", row.names = FALSE )
write.table(consumer_staples_stock,file = "Data/Industries - SP500/Consumer Staples Industry.csv", sep = ";", dec = ",", row.names = FALSE )
write.table(health_care_stock,file = "Data/Industries - SP500/Health Care Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(industrials_stock,file = "Data/Industries - SP500/Industrials Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(information_technology_stock,file = "Data/Industries - SP500/Information Technology Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(materials_stock,file = "Data/Industries - SP500/Materials Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(real_estate_stock,file = "Data/Industries - SP500/Real Estate Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(communication_service_stock,file = "Data/Industries - SP500/Communication Service Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(utilities_stock,file = "Data/Industries - SP500/Utilities Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(financials_stock ,file = "Data/Industries - SP500/Financials Industry.csv" , sep = ";", dec = ",", row.names = FALSE )
write.table(energy_stock,file = "Data/Industries - SP500/Energy Industry.csv" , sep = ";", dec = ",", row.names = FALSE )

dim(materials_stock)
# Carga Excel Medias ------------------------------------------------------

library(readxl)
Industrias_SP500_Completo_Visualizacion <- read_excel("Data/Industries - SP500/Industrias SP500 - Completo (Visualización).xlsx")
#View(Industrias_SP500_Completo_Visualización)
sp500_industry_mean <-  Industrias_SP500_Completo_Visualizacion
rm(Industrias_SP500_Completo_Visualizacion)
sp500_industry_mean$Date <- as.Date(sp500_industry_mean$Date, format="%m/%d/%Y")

class(sp500_industry_mean$Date)

#Cambio de nombre de las variables
library(dplyr)

sp500_industry_mean <-  rename(sp500_industry_mean, utilities_industry = `Utilities Industry`, real_estate_industry = `Real Estate Industry`, 
                               materials_industry = `Materials Industry`, information_technology_industry = `Information Technology Industry`,
                               industrial_industry = `Industrias Industry`, health_care_industry = `Health Care Industry`,
                               financial_industry = `Financials Industry`, 
                               energy_industry = `Energy Industry`, communication_service_industry = `Communication Service Industry`, 
                               consumer_discretionary_industry = `Consumer Discretionary Industry`, INVUS500_mean = `INVUS500 Mean`, 
                               consumer_staples_industry =`Consumer Staples Industry` )

colnames(sp500_industry_mean)

#View(sp500_industry_mean)
#Representación gráfica Medias Industry
ggplot(sp500_industry_mean, aes(x = Date)) +
  geom_line(aes(y =  sp500_industry_mean$utilities_industry , color = "Utilities Industry")) +
  geom_line(aes(y = sp500_industry_mean$real_estate_industry, color = "Real Estate Industry")) +
  geom_line(aes(y = sp500_industry_mean$materials_industry , color = "Materials Industry")) +
  geom_line(aes(y = sp500_industry_mean$information_technology_industry, color = "Information Technology Industry")) +
  geom_line(aes(y = sp500_industry_mean$industrial_industry, color = "Industrials Industry")) +
  geom_line(aes(y = sp500_industry_mean$health_care_industry, color = "Health Care Industry")) +
  geom_line(aes(y = sp500_industry_mean$financial_industry, color = "Financials Energy")) +
  geom_line(aes(y = sp500_industry_mean$energy_industry, color = "Energy Industry")) +
  geom_line(aes(y = sp500_industry_mean$communication_service_industry, color = "Communication Service Industry")) +
  geom_line(aes(y = sp500_industry_mean$consumer_discretionary_industry, color = "Consumer Discretionary Industry")) +
  geom_line(aes(y = sp500_industry_mean$consumer_staples_industry, color = "Consumer Staples Industry")) +
  
  ggtitle("Variaciones de los índices bursátiles 2015 - 2023") +
  xlab("Fecha") +
  ylab("Valor del índice") +
  scale_color_manual(values = c("Utilities Industry" = "blue", "Real Estate Industry" = "red", "Materials Industry" = "yellow", 
                                "Information Technology Industry" = "black",  "Industrials Industry" = "green","Health Care Industry" = "orange", 
                                "Financials Energy" = "purple", "Energy Industry" = "darkgreen", "Communication Service Industry" = "brown",
                                "Consumer Discretionary Industry"= "deeppink", "Consumer Staples Industry" = "pink" )) +
  theme_classic()

warnings()

#Representación gráfica a partir de 2020
sp500_industry_mean_subset <- sp500_industry_mean[sp500_industry_mean$Date >= as.Date("2020-01-01"), ]

ggplot(sp500_industry_mean_subset, aes(x = Date)) +
  geom_line(aes(y =  sp500_industry_mean_subset$utilities_industry , color = "Utilities Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$real_estate_industry, color = "Real Estate Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$materials_industry , color = "Materials Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$information_technology_industry, color = "Information Technology Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$industrial_industry, color = "Industrials Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$health_care_industry, color = "Health Care Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$financial_industry, color = "Financials Energy")) +
  geom_line(aes(y = sp500_industry_mean_subset$energy_industry, color = "Energy Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$communication_service_industry, color = "Communication Service Industry")) +
  geom_line(aes(y = sp500_industry_mean_subset$consumer_discretionary_industry, color = "Consumer Discretionary Industry")) +
  ggtitle("Variaciones de los índices bursátiles 2020-2023") +
  xlab("Fecha") +
  ylab("Valor del índice") +
  scale_color_manual(values = c("Utilities Industry" = "blue", "Real Estate Industry" = "red", "Materials Industry" = "yellow", 
                                "Information Technology Industry" = "black",  "Industrials Industry" = "green","Health Care Industry" = "orange", 
                                "Financials Energy" = "purple", "Energy Industry" = "darkgreen", "Communication Service Industry" = "brown","Consumer Discretionary Industry"= "deeppink" )) +
  theme_classic()


# Carga Definitiva Industry -----------------------------------------------

library(dplyr)

library(dplyr)

#En este apartado, se quiere incluir a los dataframes de las industrias, la media del valor de sus acciones, calculado en excel anteriormente
#Para ello, se va a realizar un join 

#DATAFRAME CONSUMER DISCRETIONARY INDUSTRY
list_consumer_discretionary_def <- list(sp500_industry_mean, consumer_discretionary_stock)
consumer_discretionary_stock_def <- list_consumer_discretionary_def %>% reduce(inner_join, by='Date', copy = TRUE) 
consumer_discretionary_stock_def <- select(consumer_discretionary_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry ,-communication_service_industry , 
                            -INVUS500_mean, -energy_industry, -consumer_staples_industry )


colnames(consumer_discretionary_stock_def)
consumer_discretionary_industry_subset <-  subset(consumer_discretionary_stock_def, select = c("Date", "consumer_discretionary_industry"))

#DATAFRAME CONSUMER STAPLES INDUSTRY
list_consumer_staples_def <- list(sp500_industry_mean, consumer_staples_stock)
consumer_staples_stock_def <- list_consumer_staples_def %>% reduce(inner_join, by='Date', copy = TRUE)
consumer_staples_stock_def <- select(consumer_staples_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean )

colnames(consumer_staples_stock_def)
consumer_staples_industry <-  subset(consumer_staples_stock_def, select = c("Date", "consumer_staples_industry"))

#DATAFRAME HEALTH CARE INDUSTRY
list_health_care_def <- list(sp500_industry_mean, health_care_stock)
health_care_stock_def <- list_health_care_def %>% reduce(inner_join, by='Date', copy = TRUE)
health_care_stock_def <- select(health_care_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry )

colnames(health_care_stock_def)
#health_care_industry <-  subset(health_care_stock_def, select = c("Date", "health_care_industry"))

#DATAFRAME INDUSTRIALS INDUSTRY
list_industrials_def <- list(sp500_industry_mean, industrials_stock)
industrials_stock_def <- list_industrials_def %>% reduce(inner_join, by='Date', copy = TRUE)
industrials_stock_def <- select(industrials_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry )

colnames(industrials_stock_def)
#industrials_industry <-  subset(industrials_stock_def, select = c("Date", "industrial_industry"))

#DATAFRAME INFORMATION TECHNOLOGY INDUSTRY
list_information_technology_def <- list(sp500_industry_mean, information_technology_stock)
information_technology_stock_def <- list_information_technology_def %>% reduce(inner_join, by='Date', copy = TRUE)
information_technology_stock_def <- select(information_technology_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(information_technology_stock_def)
#information_technology_industry <-  subset(information_technology_stock_def, select = c("Date", "information_technology_industry"))


#DATAFRAME MATERIALS INDUSTRY
list_materials_def <- list(sp500_industry_mean, materials_stock)
materials_stock_def <- list_materials_def %>% reduce(inner_join, by='Date', copy = TRUE)
materials_stock_def <- select(materials_stock_def, -utilities_industry, -real_estate_industry, 
                           -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(materials_stock_def)
#materials_industry <-  subset(materials_stock_def, select = c("Date", "materials_industry"))

#DATAFRAME REAL ESTATE INDUSTRY
list_real_estate_def <- list(sp500_industry_mean, real_estate_stock)
real_estate_stock_def <- list_real_estate_def %>% reduce(inner_join, by='Date', copy = TRUE)
real_estate_stock_def <- select(real_estate_stock_def, -utilities_industry,  
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(real_estate_stock_def)
#real_estate_industry <-  subset(real_estate_stock_def, select = c("Date", "real_estate_industry"))

#DATAFRAME COMMUNICATION SERVICE INDUSTRY
list_communication_service_def <- list(sp500_industry_mean, communication_service_stock)
communication_service_stock_def <- list_communication_service_def %>% reduce(inner_join, by='Date', copy = TRUE)
communication_service_stock_def <- select(communication_service_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry,  
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(communication_service_stock_def)
communication_service_industry <-  subset(communication_service_stock_def, select = c("Date", "communication_service_industry"))


#DATAFRAME UTILITIES INDUSTRY
list_utilities_def <- list(sp500_industry_mean, utilities_stock)
utilities_stock_def <- list_utilities_def %>% reduce(inner_join, by='Date', copy = TRUE)
utilities_stock_def <- select(utilities_stock_def,  -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry , -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(utilities_stock_def)
utilities_industry <-  subset(utilities_stock_def, select = c("Date", "utilities_industry"))


#DATAFRAME FINANCIALS INDUSTRY
list_financials_def <- list(sp500_industry_mean, financials_stock)
financials_stock_def <- list_financials_def %>% reduce(inner_join, by='Date', copy = TRUE)
financials_stock_def <- select(financials_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                            -energy_industry, -communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry)

colnames(financials_stock_def)
financials_industry <-  subset(financials_stock_def, select = c("Date", "financial_industry"))

#DATAFRAME ENERGY INDUSTRY
list_energy_def <- list(sp500_industry_mean, energy_stock)
energy_stock_def <- list_energy_def %>% reduce(inner_join, by='Date', copy = TRUE) 
energy_stock_def <- select(energy_stock_def, -utilities_industry, -real_estate_industry, 
                           -materials_industry , -information_technology_industry ,
                           -industrial_industry , -health_care_industry ,
                           -financial_industry ,-communication_service_industry , 
                           -consumer_discretionary_industry, -INVUS500_mean, -consumer_staples_industry )


colnames(energy_stock_def)

energy_industry <-  subset(energy_stock_def, select = c("Date", "energy_industry"))







# MODELO PREDICTIVO ------------------------------------------------------

# RED NEURONAL MXNET ------------------------------------------------------

library(mxnet)

# RED NEURONAL H2O --------------------------------------------------------

library(h2o)

# Iniciar un cluster de h2o local
h2o.init()

# Cargar el conjunto de datos
data <- h2o.importFile("Data/Industries - SP500/Energy Industry.csv")

# Separar el conjunto de datos en entrenamiento y prueba
split <- h2o.splitFrame(energy_stock_def, ratios = c(0.7, 0.3))
train <- split[[1]]
test <- split[[2]]

# Especificar las variables de entrada y de salida
x <- names(data[, 1:ncol(data)-1])
y <- names(data[ncol(data)])

# Definir el modelo de red neuronal
model <- h2o.deeplearning(
  x = x,
  y = y,
  training_frame = train,
  activation = "Rectifier",
  hidden = c(50, 50),
  epochs = 10,
  input_dropout_ratio = 0.2,
  l1 = 1e-5
)

# Generar una predicción utilizando el modelo
predictions <- h2o.predict(model, newdata = test)

# RED NEURONAL - KERAS PACKAGE --------------------------------------------

library(keras)
library(tensorflow)


# Energy Industry - Red Neuronal Keras ------------------------------------

# Carga de paquetes
#install.packages("keras")

library(keras)
library(tensorflow)


# Dividir los datos en entrenamiento y prueba
set.seed(123)
ind <- sample(2, nrow(energy_stock_def), replace = TRUE, prob = c(0.7, 0.3))
train_data <- energy_stock_def[ind == 1, ]
test_data <- energy_stock_def[ind == 2, ]

# Preprocesamiento de los datos
x_train <- as.matrix(train_data[, -1])
y_train <- train_data[, 1]
x_test <- as.matrix(test_data[, -1])
y_test <- test_data[, 1]

# Crear el modelo de la red neuronal
model <- keras_model_sequential() %>%
  layer_dense(units = 64, activation = "relu", input_shape = ncol(x_train)) %>%
  layer_dense(units = 32, activation = "relu") %>%
  layer_dense(units = 1)

# Compilar el modelo
model %>% compile(
  loss = "mean_squared_error",
  optimizer = optimizer_adam(),
  metrics = c("mean_absolute_error")
)

# Entrenar el modelo
history <- model %>% fit(
  x_train, y_train,
  epochs = 100,
  batch_size = 32,
  validation_data = list(x_test, y_test),
  verbose = 0
)

# Hacer predicciones con el modelo
predictions <- model %>% predict(x_test)

# Evaluar el rendimiento del modelo
mse <- mean((predictions - y_test)^2)
mae <- mean(abs(predictions - y_test))
cat("MSE:", mse, "\n")
cat("MAE:", mae, "\n")


# RED NEURONAL - KERAS 2 --------------------------------------------------

# Dividir los datos en conjuntos de entrenamiento y prueba
train_size <- floor(0.8 * nrow(energy_stock_def))
train_indices <- seq_len(train_size)
test_indices <- seq(train_size + 1, nrow(energy_stock_def))

train_data <- energy_stock_def[train_indices, ]
test_data <- energy_stock_def[test_indices, ]

# normalización de los datos
max_value <- apply(datos[, -1], 2, max)
min_value <- apply(datos[, -1], 2, min)
diff <- max_value - min_value

train_data[, -1] <- scale(train_data[, -1], center = TRUE, scale = energy_stock)
test_data[, -1] <- scale(test_data[, -1], center = TRUE, scale = diff)


train_data[, -1] <- scale(train_data[, -1], center = TRUE, scale = diff)
test_data[, -1] <- scale(test_data[, -1], center = TRUE, scale = diff)
# RED NEURONAL 2 ----------------------------------------------------------

#https://youtu.be/5Z7bfs6WJIo

# Energy Industry - Neural Network ----------------------------------------

#Se ha realizado una red neuronal para analizar los datos, pero, tras haber realizado este análisis, podemos comprobar que no es
#el mejor método para predecir, ya que tiene bastante error
library(quantmod)
library(lubridate)
library(dplyr)
library(tidyr)
library(ggplot2)
library(caret)

#energy_stock_def$Date_dup <-  energy_stock_def$Date
#energy_stock_def <- energy_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
#energy_stock_def$Año = as.numeric(energy_stock_def$Año) 
#energy_stock_def$Mes = as.numeric(energy_stock_def$Mes) 
#energy_stock_def$Día = as.numeric(energy_stock_def$Día) 

colnames(energy_stock_def)


#PRUEBA EJECUCIÓN

for (i in 1:2) {
  if ("energy_stock_def_scale" %in% ls()) {
    rm(energy_stock_def_scale)
    print("El dataframe energy_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  energy_stock_def$Date_dup <- energy_stock_def$Date
  energy_stock_def <- energy_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  energy_stock_def$Año <- as.numeric(energy_stock_def$Año)
  energy_stock_def$Mes <- as.numeric(energy_stock_def$Mes)
  energy_stock_def$Día <- as.numeric(energy_stock_def$Día)
  
  energy_stock_def_scale <- as.data.frame(cbind(energy_stock_def$Date, scale(energy_stock_def[, c(23:25)])))
  names(energy_stock_def_scale)[1] <- "Date"
  energy_stock_def_scale$Date <- as.Date(energy_stock_def_scale$Date)
  
  energy_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  energy_stock_def$Mes <- NULL
  energy_stock_def$Año <- NULL
  
  list_energy_def_nn <- list(energy_stock_def_scale, energy_stock_def)
  energy_stock_def_nn <- list_energy_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(energy_stock_def_nn)
#Separación de los datos

set.seed(2023)  

energy_industry_train_nn <-  createDataPartition(na.omit(subset(energy_stock_def_nn, energy_stock_def_nn$Date < today())) $energy_industry, 
                                               p = 0.7, list = F)
                                               
energy_industry_test_nn <-  rbind(energy_stock_def_nn[-energy_industry_train_nn,], subset(energy_stock_def_nn, 
                                                                                         energy_stock_def_nn$energy_industry >= today()))

energy_industry_test_nn_scale <- as.data.frame(cbind.data.frame(energy_industry_test_nn$energy_industry, energy_industry_test_nn$Date, 
                                                                scale(energy_industry_test_nn[,c(2,3,4)])))
#View(energy_industry_test_nn)

# ME SALTO ESTA FASE DEL VIDEO energy_industry_test_nn_scale <-  as.data.frame(cbind(energy_industry_test_nn$energy_industry, energy_industry_test_nn$Date, scale()))


library(neuralnet)
#install.packages("NeuralNetTools")
library(NeuralNetTools)
library(caret)
#NO FUNCIONA 
energy_industry_mod_nn <- neuralnet(formula = energy_industry ~ Día + Mes + Año 
                                    , data = energy_stock_def_nn[energy_industry_train_nn,], 
                                    hidden = 10, threshold = 0.01, stepmax = 1e+07, rep = 2, linear.output = TRUE)

energy_industry_mod_nn$result.matrix
plot(energy_industry_mod_nn)
  
  nn$result.matrix
plot(nn)
# Agregar una columna adicional con los valores de la variable objetivo
energy_stock_def_nn_norm <- cbind(energy_stock_def_nn_norm, energy_stock_def_nn$energy_industry)

# Entrenar la red neuronal
energy_industry_mod_nn <- neuralnet(formula = energy_industry ~ Día + Mes + Año, 
                                    data = energy_stock_def_nn_norm[energy_industry_train_nn,], 
                                    hidden = 2, # Ajustar el número de neuronas en la capa oculta
                                    threshold = 0.01, 
                                    stepmax = 1e+06, 
                                    rep = 3, 
                                    linear.output = TRUE,
                                    learningrate = 0.01, # Ajustar la tasa de aprendizaje
                                    lifesign = "full",
                                    algorithm = "rprop+", # Utilizar el algoritmo rprop+
                                    err.fct = "sse") # Utilizar la función de error SSE



# Realizar una predicción en los datos de prueba
energy_industry_pred_nn <- predict(energy_industry_mod_nn, energy_stock_def_nn_norm[energy_industry_test_nn,])

# Graficar los datos reales y la predicción
plot(energy_stock_def_nn$energy_industry, type = "l", col = "black", ylim = c(-3,3))
lines(energy_industry_pred_nn, col = "red")

# Calcular y graficar el error
error_energy_nn <- energy_industry_pred_nn - energy_stock_def_nn$energy_industry[energy_industry_test_nn]
lines(error_energy_nn, col = "blue")

# Agregar leyenda
legend("topleft", legend = c("Datos reales", "Predicción", "Error"), 
       col = c("black", "red", "blue"), lty = 1)


colnames(energy_stock_def_nn)

energy_industry_pred_nn <-  compute(energy_industry_mod_nn, energy_industry_test_nn_scale )

#View(energy_industry_test_nn)

#energy_industry_pred_nn <- predict(energy_industry_mod_nn, newdata = energy_stock_def_nn[energy_industry_test_nn_scale, ])

#View(energy_industry_pred_nn)
plotnet(energy_industry_mod_nn)

energy_industry_datos_nn <- cbind(energy_industry_pred_nn$net.result,energy_industry_test_nn)

energy_industry_error_nn <-  RMSE(energy_industry_datos_nn$energy_industry, energy_industry_pred_nn$net.result, na.rm = TRUE)

energy_industry_error_por_nn <- energy_industry_error_nn / energy_industry_datos_nn[energy_industry_datos_nn$Date == max(
  na.omit(energy_industry_datos_nn)$Date),]$energy_industry #Error de 14%

colnames(energy_industry_datos_nn)

library(ggplot2)
ggplot() + geom_line(data = energy_industry_datos_nn, aes(x = Date, y = energy_industry), color = "blue" )+
  geom_line(data = energy_industry_datos_nn, aes(x = Date, y = energy_industry_pred_nn$net.result), color = "red" )

colnames(financials_stock_def)





# NEURAL NETWORK - Neuralnet ----------------------------------------------

library(neuralnet)
nn <- neuralnet(Date ~ ., data=energy_stock_def, hidden=c(2,1), linear.output=FALSE, threshold=0.01)
nn$result.matrix
plot(nn)


energy_industry_mod_nn <- neuralnet(formula = energy_industry ~ Día + Mes + Año 
                                    , data = energy_stock_def_nn[energy_industry_train_nn,], 
                                    hidden = 10, threshold = 0.01, stepmax = 1e+08, rep = 3, linear.output = TRUE)


predictions <- predict(nn, energy_industry_test_nn)
# RANDOM FOREST - COMPLETAR -----------------------------------------------
library(quantmod)
library(lubridate)
library(dplyr)
library(tidyr)
library(ggplot2)
library(caret)
# Consumer Discretionary - Random Forest ----------------------------------

for (i in 1:2) {
  if ("consumer_discretionary_stock_def_scale" %in% ls()) {
    rm(consumer_discretionary_stock_def_scale)
    print("El dataframe consumer_discretionary_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  consumer_discretionary_stock_def$Date_dup <- consumer_discretionary_stock_def$Date
  consumer_discretionary_stock_def <- consumer_discretionary_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  consumer_discretionary_stock_def$Año <- as.numeric(consumer_discretionary_stock_def$Año)
  consumer_discretionary_stock_def$Mes <- as.numeric(consumer_discretionary_stock_def$Mes)
  consumer_discretionary_stock_def$Día <- as.numeric(consumer_discretionary_stock_def$Día)
  
  consumer_discretionary_stock_def_scale <- as.data.frame(cbind(consumer_discretionary_stock_def$Date, scale(consumer_discretionary_stock_def[, c(57:59)])))
  names(consumer_discretionary_stock_def_scale)[1] <- "Date"
  consumer_discretionary_stock_def_scale$Date <- as.Date(consumer_discretionary_stock_def_scale$Date)
  
  consumer_discretionary_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  consumer_discretionary_stock_def$Mes <- NULL
  consumer_discretionary_stock_def$Año <- NULL
  
  list_consumer_discretionary_def_nn <- list(consumer_discretionary_stock_def_scale, consumer_discretionary_stock_def)
  consumer_discretionary_stock_def_nn <- list_consumer_discretionary_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(consumer_discretionary_stock_def)

#Separación de los datos

set.seed(2023)  

consumer_discretionary_industry_train_nn <-  createDataPartition(na.omit(subset(consumer_discretionary_stock_def_nn, consumer_discretionary_stock_def_nn$Date < today())) $consumer_discretionary_industry, 
                                                     p = 0.7, list = F)

consumer_discretionary_industry_test_nn <-  rbind(consumer_discretionary_stock_def_nn[-consumer_discretionary_industry_train_nn,], subset(consumer_discretionary_stock_def_nn, 
                                                                                                                                          consumer_discretionary_stock_def_nn$consumer_discretionary_industry >= today()))
num_predicciones <- 500
consumer_discretionary_industry_test_nn <- tail(consumer_discretionary_stock_def_nn, num_predicciones)
consumer_discretionary_industry_test_nn$Date <- seq(from = max(consumer_discretionary_stock_def_nn$Date) + 1, length.out = num_predicciones, by = "day")


#consumer_discretionary_industry_test_nn_scale <- as.data.frame(cbind.data.frame(consumer_discretionary_industry_test_nn$consumer_discretionary_industry, consumer_discretionary_industry_test_nn$Date, 
#                                                                    scale(consumer_discretionary_industry_test_nn[,c(2,3,4)])))
#View(consumer_discretionary_industry_test_nn)

consumer_discretionary_industry_test_nn_scale <- as.data.frame(cbind.data.frame(consumer_discretionary_industry_test_nn$consumer_discretionary_industry, consumer_discretionary_industry_test_nn$Date,
                                                                                scale(consumer_discretionary_industry_test_nn[, c(2, 3, 4)])))

library(randomForest)

consumer_discretionary_industry_mod_rf <- randomForest(consumer_discretionary_industry ~ Año + Mes + Día, data = consumer_discretionary_stock_def_nn[consumer_discretionary_industry_train_nn, ],
                                           type = "regression", ntree = 500) #Probar ntree = 100

consumer_discretionary_industry_pred_rf <- predict(consumer_discretionary_industry_mod_rf, consumer_discretionary_industry_test_nn_scale)

#consumer_discretionary_industry_pred_rf <- predict(consumer_discretionary_industry_mod_rf, consumer_discretionary_industry_test_nn)
consumer_discretionary_industry_datos_rf <- cbind(consumer_discretionary_industry_pred_rf, consumer_discretionary_industry_test_nn)

#consumer_discretionary_industry_datos_rf <-  cbind(consumer_discretionary_industry_pred_rf, consumer_discretionary_industry_test_nn)


#View(energy_industry_datos_rf)

consumer_discretionary_industry_error_rf <-  RMSE(consumer_discretionary_industry_datos_rf$consumer_discretionary_industry, consumer_discretionary_industry_datos_rf$consumer_discretionary_industry_pred_rf, na.rm = TRUE)
print(consumer_discretionary_industry_error_rf)

consumer_discretionary_industry_error_por_rf <- consumer_discretionary_industry_error_rf / consumer_discretionary_industry_datos_rf[consumer_discretionary_industry_datos_rf$Date == max(na.omit(consumer_discretionary_industry_datos_rf)$Date),]$consumer_discretionary_industry
print(consumer_discretionary_industry_error_por_rf)

ggplot() + geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry), color = "blue") + 
  geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry_pred_rf), color = "red")


#Chat GPT
set.seed(2023)

# Crear conjunto de entrenamiento y prueba
consumer_discretionary_industry_train_nn <- createDataPartition(na.omit(subset(consumer_discretionary_stock_def_nn, consumer_discretionary_stock_def_nn$Date < today()))$consumer_discretionary_industry,
                                                                p = 0.7, list = F)

consumer_discretionary_industry_test_nn <- rbind(consumer_discretionary_stock_def_nn[-consumer_discretionary_industry_train_nn, ],
                                                 subset(consumer_discretionary_stock_def_nn, consumer_discretionary_stock_def_nn$consumer_discretionary_industry >= today()))

consumer_discretionary_industry_test_nn_scale <- as.data.frame(cbind.data.frame(consumer_discretionary_industry_test_nn$consumer_discretionary_industry, consumer_discretionary_industry_test_nn$Date,
                                                                                scale(consumer_discretionary_industry_test_nn[, c(2, 3, 4)])))
View(consumer_discretionary_industry_test_nn)

library(randomForest)

# Entrenar modelo de Random Forest
consumer_discretionary_industry_mod_rf <- randomForest(consumer_discretionary_industry ~ Año + Mes + Día, data = consumer_discretionary_stock_def_nn[consumer_discretionary_industry_train_nn, ],
                                                       type = "regression", ntree = 500) #Probar ntree = 100

# Realizar predicción
consumer_discretionary_industry_pred_rf <- predict(consumer_discretionary_industry_mod_rf, consumer_discretionary_industry_test_nn)

# Combinar datos de predicción con datos reales
consumer_discretionary_industry_datos_rf <- cbind(consumer_discretionary_industry_pred_rf, consumer_discretionary_industry_test_nn)

# Calcular error de predicción
consumer_discretionary_industry_error_rf <- RMSE(consumer_discretionary_industry_datos_rf$consumer_discretionary_industry, consumer_discretionary_industry_datos_rf$consumer_discretionary_industry_pred_rf, na.rm = TRUE)
print(consumer_discretionary_industry_error_rf)

consumer_discretionary_industry_error_por_rf <- consumer_discretionary_industry_error_rf / consumer_discretionary_industry_datos_rf[consumer_discretionary_industry_datos_rf$Date == max(na.omit(consumer_discretionary_industry_datos_rf)$Date), ]$consumer_discretionary_industry
print(consumer_discretionary_industry_error_por_rf)

# Generar gráfica V1
ggplot() +
  geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry), color = "blue") +
  geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry_pred_rf), color = "red") +
  labs(title = "Predicción de Consumer Discretionary Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


# Generar gráfica V2
ggplot() +
  geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry), color = "blue", linetype = "solid") +
  geom_line(data = consumer_discretionary_industry_datos_rf, aes(x = Date, y = consumer_discretionary_industry_pred_rf), color = "red", linetype = "dashed") +
  labs(title = "Predicción de Consumer Discretionary Industry", x = "Fecha", y = "Valor en dólares") +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_color_manual(values = c("blue", "red"), labels = c("Valores reales", "Predicción")) +
  theme_minimal()

# Obtener fecha mínima y máxima
fecha_minima <- as.Date("2020-01-01")
fecha_maxima <- max(consumer_discretionary_industry_datos_rf$Date)

# Filtrar los datos dentro del rango deseado
datos_filtrados <- consumer_discretionary_industry_datos_rf[consumer_discretionary_industry_datos_rf$Date >= fecha_minima & consumer_discretionary_industry_datos_rf$Date <= fecha_maxima, ]

# Generar gráfica
ggplot() +
  geom_line(data = datos_filtrados, aes(x = Date, y = consumer_discretionary_industry), color = "blue", linetype = "solid") +
  geom_line(data = datos_filtrados, aes(x = Date, y = consumer_discretionary_industry_pred_rf), color = "red", linetype = "dashed") +
  labs(title = "Predicción de Consumer Discretionary Industry (2020-2023)", x = "Fecha", y = "Valor medio de la industria ($)") +
  scale_y_continuous(labels = scales::dollar_format()) +
  scale_color_manual(values = c("blue", "red"), labels = c("Valores reales", "Predicción")) +
  theme_minimal() +
  xlim(fecha_minima, fecha_maxima)


# Calcular el error de predicción
error_prediccion <- mean(abs(consumer_discretionary_industry_datos_rf$consumer_discretionary_industry - consumer_discretionary_industry_datos_rf$consumer_discretionary_industry_pred_rf))
print("Error de predicción:")
print(error_prediccion)

# Código previo...

# Separación de los datos

set.seed(2023)

# Filtrar datos a partir del 1 de enero de 2023
fecha_inicial <- as.Date("2023-01-01")
consumer_discretionary_industry_test_nn <- subset(consumer_discretionary_stock_def_nn, Date >= fecha_inicial)

# Preparar dataframe para predicción
num_predicciones <- 50
consumer_discretionary_industry_test_nn_pred <- data.frame(Date = seq(from = fecha_inicial, length.out = num_predicciones, by = "day"))

# Realizar predicción
consumer_discretionary_industry_pred_rf <- predict(consumer_discretionary_industry_mod_rf, consumer_discretionary_industry_test_nn_pred)

# Combinar datos de predicción con fechas
consumer_discretionary_industry_pred_rf <- data.frame(Date = consumer_discretionary_industry_test_nn_pred$Date, consumer_discretionary_industry = consumer_discretionary_industry_pred_rf)

# Unir datos de predicción con datos reales
consumer_discretionary_industry_pred_rf <- rbind(consumer_discretionary_industry_pred_rf, consumer_discretionary_industry_datos_rf)

# Generar gráfico de predicción
ggplot(consumer_discretionary_industry_pred_rf, aes(x = Date)) +
  geom_line(aes(y = consumer_discretionary_industry, color = "Valores reales")) +
  geom_line(aes(y = consumer_discretionary_industry_pred_rf, color = "Predicción")) +
  labs(title = "Predicción de Consumer Discretionary Industry", x = "Fecha", y = "Valor") +
  scale_color_manual(values = c("blue", "red"), labels = c("Valores reales", "Predicción")) +
  theme_minimal()

# Cálculo del error de predicción
consumer_discretionary_industry_error_prediccion <- mean(abs(consumer_discretionary_industry_pred_rf$consumer_discretionary_industry - consumer_discretionary_industry_pred_rf$consumer_discretionary_industry_pred_rf))
print("Error de predicción:")
print(consumer_discretionary_industry_error_prediccion)

# Consumer Staples - Random Forest ----------------------------------------


for (i in 1:2) {
  if ("consumer_staples_stock_def_scale" %in% ls()) {
    rm(consumer_staples_stock_def_scale)
    print("El dataframe consumer_staples_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  consumer_staples_stock_def$Date_dup <- consumer_staples_stock_def$Date
  consumer_staples_stock_def <- consumer_staples_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  consumer_staples_stock_def$Año <- as.numeric(consumer_staples_stock_def$Año)
  consumer_staples_stock_def$Mes <- as.numeric(consumer_staples_stock_def$Mes)
  consumer_staples_stock_def$Día <- as.numeric(consumer_staples_stock_def$Día)
  
  consumer_staples_stock_def_scale <- as.data.frame(cbind(consumer_staples_stock_def$Date, scale(consumer_staples_stock_def[, c(34:36)])))
  names(consumer_staples_stock_def_scale)[1] <- "Date"
  consumer_staples_stock_def_scale$Date <- as.Date(consumer_staples_stock_def_scale$Date)
  
  consumer_staples_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  consumer_staples_stock_def$Mes <- NULL
  consumer_staples_stock_def$Año <- NULL
  
  list_consumer_staples_def_nn <- list(consumer_staples_stock_def_scale, consumer_staples_stock_def)
  consumer_staples_stock_def_nn <- list_consumer_staples_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(consumer_staples_stock_def_nn)

#Separación de los datos

set.seed(2023)  

consumer_staples_industry_train_nn <-  createDataPartition(na.omit(subset(consumer_staples_stock_def_nn, consumer_staples_stock_def_nn$Date < today())) $consumer_staples_industry, 
                                                     p = 0.7, list = F)

consumer_staples_industry_test_nn <-  rbind(consumer_staples_stock_def_nn[-consumer_staples_industry_train_nn,], subset(consumer_staples_stock_def_nn, 
                                                                                                                        consumer_staples_stock_def_nn$consumer_staples_industry >= today()))

consumer_staples_industry_test_nn_scale <- as.data.frame(cbind.data.frame(consumer_staples_industry_test_nn$consumer_staples_industry, consumer_staples_industry_test_nn$Date, 
                                                                    scale(consumer_staples_industry_test_nn[,c(2,3,4)])))
#View(consumer_staples_industry_test_nn)

library(randomForest)

consumer_staples_industry_mod_rf <- randomForest(consumer_staples_industry ~ Año + Mes + Día, data = consumer_staples_stock_def_nn[consumer_staples_industry_train_nn, ],
                                           type = "regression", ntree = 500) #Probar ntree = 100


consumer_staples_industry_pred_rf <- predict(consumer_staples_industry_mod_rf, consumer_staples_industry_test_nn)

consumer_staples_industry_datos_rf <-  cbind(consumer_staples_industry_pred_rf, consumer_staples_industry_test_nn)


#View(energy_industry_datos_rf)

consumer_staples_industry_error_rf <-  RMSE(consumer_staples_industry_datos_rf$consumer_staples_industry, consumer_staples_industry_datos_rf$consumer_staples_industry_pred_rf, na.rm = TRUE)
print(consumer_staples_industry_error_rf)

consumer_staples_industry_error_por_rf <- consumer_staples_industry_error_rf / consumer_staples_industry_datos_rf[consumer_staples_industry_datos_rf$Date == max(na.omit(consumer_staples_industry_datos_rf)$Date),]$consumer_staples_industry
print(consumer_staples_industry_error_por_rf)

ggplot() + geom_line(data = consumer_staples_industry_datos_rf, aes(x = Date, y = consumer_staples_industry), color = "blue") + 
  geom_line(data = consumer_staples_industry_datos_rf, aes(x = Date, y = consumer_staples_industry_pred_rf), color = "red")+
  labs(title = "Predicción de Consumer Staples Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


colnames(consumer_staples_industry_datos_rf)



# Health Care Industry - Random Forest ------------------------------------


for (i in 1:2) {
  if ("health_care_stock_def_scale" %in% ls()) {
    rm(health_care_stock_def_scale)
    print("El dataframe health_care_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  health_care_stock_def$Date_dup <- health_care_stock_def$Date
  health_care_stock_def <- health_care_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  health_care_stock_def$Año <- as.numeric(health_care_stock_def$Año)
  health_care_stock_def$Mes <- as.numeric(health_care_stock_def$Mes)
  health_care_stock_def$Día <- as.numeric(health_care_stock_def$Día)
  
  health_care_stock_def_scale <- as.data.frame(cbind(health_care_stock_def$Date, scale(health_care_stock_def[, c(64:66)])))
  names(health_care_stock_def_scale)[1] <- "Date"
  health_care_stock_def_scale$Date <- as.Date(health_care_stock_def_scale$Date)
  
  health_care_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  health_care_stock_def$Mes <- NULL
  health_care_stock_def$Año <- NULL
  
  list_health_care_def_nn <- list(health_care_stock_def_scale, health_care_stock_def)
  health_care_stock_def_nn <- list_health_care_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(health_care_stock_def_nn)

#Separación de los datos

set.seed(2023)  

health_care_industry_train_nn <-  createDataPartition(na.omit(subset(health_care_stock_def_nn, health_care_stock_def_nn$Date < today())) $health_care_industry, 
                                                     p = 0.7, list = F)

health_care_industry_test_nn <-  rbind(health_care_stock_def_nn[-health_care_industry_train_nn,], subset(health_care_stock_def_nn, 
                                                                                                      health_care_stock_def_nn$health_care_industry >= today()))

health_care_industry_test_nn_scale <- as.data.frame(cbind.data.frame(health_care_industry_test_nn$health_care_industry, health_care_industry_test_nn$Date, 
                                                                    scale(health_care_industry_test_nn[,c(2,3,4)])))
#View(health_care_industry_test_nn)

library(randomForest)

health_care_industry_mod_rf <- randomForest(health_care_industry ~ Año + Mes + Día, data = health_care_stock_def_nn[health_care_industry_train_nn, ],
                                           type = "regression", ntree = 500) #Probar ntree = 100


health_care_industry_pred_rf <- predict(health_care_industry_mod_rf, health_care_industry_test_nn)

health_care_industry_datos_rf <-  cbind(health_care_industry_pred_rf, health_care_industry_test_nn)


#View(energy_industry_datos_rf)

health_care_industry_error_rf <-  RMSE(health_care_industry_datos_rf$health_care_industry, health_care_industry_datos_rf$health_care_industry_pred_rf, na.rm = TRUE)
print(health_care_industry_error_rf)

health_care_industry_error_por_rf <- health_care_industry_error_rf / health_care_industry_datos_rf[health_care_industry_datos_rf$Date == max(na.omit(health_care_industry_datos_rf)$Date),]$health_care_industry
print(health_care_industry_error_por_rf)

ggplot() + geom_line(data = health_care_industry_datos_rf, aes(x = Date, y = health_care_industry), color = "blue") + 
  geom_line(data = health_care_industry_datos_rf, aes(x = Date, y = health_care_industry_pred_rf), color = "red") +
  labs(title = "Predicción de Health Care Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


colnames(health_care_industry_datos_rf)

# Industrials Industry - Random Forest ------------------------------------


for (i in 1:2) {
  if ("industrials_stock_def_scale" %in% ls()) {
    rm(industrials_stock_def_scale)
    print("El dataframe industrials_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  industrials_stock_def$Date_dup <- industrials_stock_def$Date
  industrials_stock_def <- industrials_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  industrials_stock_def$Año <- as.numeric(industrials_stock_def$Año)
  industrials_stock_def$Mes <- as.numeric(industrials_stock_def$Mes)
  industrials_stock_def$Día <- as.numeric(industrials_stock_def$Día)
  
  industrials_stock_def_scale <- as.data.frame(cbind(industrials_stock_def$Date, scale(industrials_stock_def[, c(65:67)])))
  names(industrials_stock_def_scale)[1] <- "Date"
  industrials_stock_def_scale$Date <- as.Date(industrials_stock_def_scale$Date)
  
  industrials_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  industrials_stock_def$Mes <- NULL
  industrials_stock_def$Año <- NULL
  
  list_industrials_def_nn <- list(industrials_stock_def_scale, industrials_stock_def)
  industrials_stock_def_nn <- list_industrials_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(industrials_stock_def_nn)

#Separación de los datos

set.seed(2023)  

industrials_industry_train_nn <-  createDataPartition(na.omit(subset(industrials_stock_def_nn, industrials_stock_def_nn$Date < today())) $industrial_industry, 
                                                     p = 0.7, list = F)

industrials_industry_test_nn <-  rbind(industrials_stock_def_nn[-industrials_industry_train_nn,], subset(industrials_stock_def_nn, 
                                                                                                         industrials_stock_def_nn$industrial_industry >= today()))

industrials_industry_test_nn_scale <- as.data.frame(cbind.data.frame(industrials_industry_test_nn$industrial_industry, industrials_industry_test_nn$Date, 
                                                                    scale(industrials_industry_test_nn[,c(2,3,4)])))
#View(industrials_industry_test_nn)

library(randomForest)

industrials_industry_mod_rf <- randomForest(industrial_industry ~ Año + Mes + Día, data = industrials_stock_def_nn[industrials_industry_train_nn, ],
                                           type = "regression", ntree = 500) #Probar ntree = 100


industrials_industry_pred_rf <- predict(industrials_industry_mod_rf, industrials_industry_test_nn)

industrials_industry_datos_rf <-  cbind(industrials_industry_pred_rf, industrials_industry_test_nn)


#View(energy_industry_datos_rf)

industrials_industry_error_rf <-  RMSE(industrials_industry_datos_rf$industrial_industry, industrials_industry_datos_rf$industrial_industry_pred_rf, na.rm = TRUE)
print(industrials_industry_error_rf)

industrials_industry_error_por_rf <- industrials_industry_error_rf / industrials_industry_datos_rf[industrials_industry_datos_rf$Date == max(na.omit(industrials_industry_datos_rf)$Date),]$industrial_industry
print(financials_industry_error_por_rf)

ggplot() + geom_line(data = industrials_industry_datos_rf, aes(x = Date, y = industrials_industry), color = "blue") + 
  geom_line(data = industrials_industry_datos_rf, aes(x = Date, y = industrials_industry_pred_rf), color = "red") +
  labs(title = "Predicción de Industrials Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


colnames(industrials_industry_datos_rf)


# Financials Industry - Random Forest -------------------------------------

for (i in 1:2) {
  if ("financials_stock_def_scale" %in% ls()) {
    rm(financials_stock_def_scale)
    print("El dataframe financials_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  financials_stock_def$Date_dup <- financials_stock_def$Date
  financials_stock_def <- financials_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  financials_stock_def$Año <- as.numeric(financials_stock_def$Año)
  financials_stock_def$Mes <- as.numeric(financials_stock_def$Mes)
  financials_stock_def$Día <- as.numeric(financials_stock_def$Día)
  
  financials_stock_def_scale <- as.data.frame(cbind(financials_stock_def$Date, scale(financials_stock_def[, c(67:69)])))
  names(financials_stock_def_scale)[1] <- "Date"
  financials_stock_def_scale$Date <- as.Date(financials_stock_def_scale$Date)
  
  financials_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  financials_stock_def$Mes <- NULL
  financials_stock_def$Año <- NULL
  
  list_financials_def_nn <- list(financials_stock_def_scale, financials_stock_def)
  financials_stock_def_nn <- list_financials_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(financials_stock_def_nn)

#Separación de los datos

set.seed(2023)  

financials_industry_train_nn <-  createDataPartition(na.omit(subset(financials_stock_def_nn, financials_stock_def_nn$Date < today())) $financial_industry, 
                                                 p = 0.7, list = F)

financials_industry_test_nn <-  rbind(financials_stock_def_nn[-financials_industry_train_nn,], subset(financials_stock_def_nn, 
                                                                                          financials_stock_def_nn$financial_industry >= today()))

financials_industry_test_nn_scale <- as.data.frame(cbind.data.frame(financials_industry_test_nn$financial_industry, financials_industry_test_nn$Date, 
                                                                scale(financials_industry_test_nn[,c(2,3,4)])))
#View(financials_industry_test_nn)

library(randomForest)

financials_industry_mod_rf <- randomForest(financial_industry ~ Año + Mes + Día, data = financials_stock_def_nn[financials_industry_train_nn, ],
                                       type = "regression", ntree = 500) #Probar ntree = 100


financials_industry_pred_rf <- predict(financials_industry_mod_rf, financials_industry_test_nn)

financials_industry_datos_rf <-  cbind(financials_industry_pred_rf, financials_industry_test_nn)


#View(energy_industry_datos_rf)

financials_industry_error_rf <-  RMSE(financials_industry_datos_rf$financial_industry, financials_industry_datos_rf$financials_industry_pred_rf, na.rm = TRUE)
print(financials_industry_error_rf)

financials_industry_error_por_rf <- financials_industry_error_rf / financials_industry_datos_rf[financials_industry_datos_rf$Date == max(na.omit(financials_industry_datos_rf)$Date),]$financial_industry
print(financials_industry_error_por_rf)

ggplot() + geom_line(data = financials_industry_datos_rf, aes(x = Date, y = financial_industry), color = "blue") + 
  geom_line(data = financials_industry_datos_rf, aes(x = Date, y = financials_industry_pred_rf), color = "red") +
  labs(title = "Predicción de Financials Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


colnames(financials_industry_datos_rf)


# Energy Industry - Random Forest -----------------------------------------

for (i in 1:2) {
  if ("energy_stock_def_scale" %in% ls()) {
    rm(energy_stock_def_scale)
    print("El dataframe energy_stock_def_scale ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  energy_stock_def$Date_dup <- energy_stock_def$Date
  energy_stock_def <- energy_stock_def %>% separate(Date_dup, c("Año", "Mes", "Día"))
  energy_stock_def$Año <- as.numeric(energy_stock_def$Año)
  energy_stock_def$Mes <- as.numeric(energy_stock_def$Mes)
  energy_stock_def$Día <- as.numeric(energy_stock_def$Día)
  
  energy_stock_def_scale <- as.data.frame(cbind(energy_stock_def$Date, scale(energy_stock_def[, c(23:25)])))
  names(energy_stock_def_scale)[1] <- "Date"
  energy_stock_def_scale$Date <- as.Date(energy_stock_def_scale$Date)
  
  energy_stock_def$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  energy_stock_def$Mes <- NULL
  energy_stock_def$Año <- NULL
  
  list_energy_def_nn <- list(energy_stock_def_scale, energy_stock_def)
  energy_stock_def_nn <- list_energy_def_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(energy_stock_def_nn)


#Separación de los datos

set.seed(2023)  

energy_industry_train_nn <-  createDataPartition(na.omit(subset(energy_stock_def_nn, energy_stock_def_nn$Date < today())) $energy_industry, 
                                                 p = 0.7, list = F)

energy_industry_test_nn <-  rbind(energy_stock_def_nn[-energy_industry_train_nn,], subset(energy_stock_def_nn, 
                                                                                          energy_stock_def_nn$energy_industry >= today()))

energy_industry_test_nn_scale <- as.data.frame(cbind.data.frame(energy_industry_test_nn$energy_industry, energy_industry_test_nn$Date, 
                                                                scale(energy_industry_test_nn[,c(2,3,4)])))
#View(energy_industry_test_nn)
library(randomForest)

energy_industry_mod_rf <- randomForest(energy_industry ~ Año + Mes + Día, data = energy_stock_def_nn[energy_industry_train_nn, ],
                                       type = "regression", ntree = 500) #Probar ntree = 100


energy_industry_pred_rf <- predict(energy_industry_mod_rf, energy_industry_test_nn)

energy_industry_datos_rf <-  cbind(energy_industry_pred_rf, energy_industry_test_nn)


#View(energy_industry_datos_rf)

energy_industry_error_rf <-  RMSE(energy_industry_datos_rf$energy_industry, energy_industry_datos_rf$energy_industry_pred_rf, na.rm = TRUE)
print(energy_industry_error_rf)

energy_industry_error_por_rf <- energy_industry_error_rf / energy_industry_datos_rf[energy_industry_datos_rf$Date == max(na.omit(energy_industry_datos_rf)$Date),]$energy_industry
print(energy_industry_error_por_rf)

ggplot() + geom_line(data = energy_industry_datos_rf, aes(x = Date, y = energy_industry), color = "blue") + 
  geom_line(data = energy_industry_datos_rf, aes(x = Date, y = energy_industry_pred_rf), color = "red") +
  labs(title = "Predicción de Energy Industry", x = "Fecha", y = "Valor") +
  theme_minimal()


colnames(energy_industry_datos_rf)


# MODELO EXTREME GRADING BOOST ---------------------------------------------



#https://www.r-bloggers.com/2021/02/machine-learning-with-r-a-complete-guide-to-gradient-boosting-and-xgboost/
library(xgboost)
library(caTools)
library(dplyr)
library(caret)


# Energy Industry - Extreme Grading Boost ---------------------------------

# Paso 1: Cargar los datos y dividirlos en conjuntos de entrenamiento y prueba

set.seed(2023) # Para reproducibilidad
energy_industry_train_index_egb <- sample(1:nrow(energy_stock_def), round(0.8*nrow(energy_stock_def)), replace = FALSE)
energy_industry_train_egb <- energy_stock_def[energy_industry_train_index_egb, ]
energy_industry_test_egb <- energy_stock_def[-energy_industry_train_index_egb, ]

colnames(energy_stock_def)
# Paso 2: Separar las variables predictoras y la variable de respuesta
energy_industry_x_train_egb <- energy_industry_train_egb[, -c(2)] # Todas las columnas excepto la primera (precio)
energy_industry_y_train_egb <- energy_industry_train_egb[, 2]     # La primera columna (precio)
energy_industry_x_test_egb <- energy_industry_test_egb[, -c(2)]
energy_industry_y_test_egb <- energy_industry_test_egb[, 2]

# Paso 3: Convertir los datos en una matriz DMatrix
energy_industry_dtrain_egb <- xgb.DMatrix(data = as.matrix(energy_industry_x_train_egb), label = energy_industry_y_train_egb)
energy_industry_dtest_egb <- xgb.DMatrix(data = as.matrix(energy_industry_x_test_egb), label = energy_industry_y_test_egb)

# Paso 4: Entrenar el modelo XGBoost
params <- list(
  objective = "reg:squarederror", # La función de pérdida que queremos minimizar
  eta = 0.3,                      # La tasa de aprendizaje
  max_depth = 6,                  # La profundidad máxima del árbol
  min_child_weight = 1,           # El peso mínimo de cada hoja del árbol
  subsample = 1,                  # La proporción de observaciones que se usan para entrenar cada árbol
  colsample_bytree = 1,           # La proporción de variables predictoras que se usan para entrenar cada árbol
  nrounds = 100                   # El número de iteraciones del algoritmo
)

model <- xgb.train(params = params, data = dtrain, nrounds = params$nrounds)

# Paso 5: Realizar predicciones y evaluar el modelo
predictions <- predict(model, dtest)
rmse <- sqrt(mean((predictions - y_test)^2)) # Raíz cuadrada del error cuadrático medio



# Energy Industry - Extreme Grading Boost (Model 2) -----------------------

library(xgboost)
library(caTools)
library(dplyr)
library(caret)

#Split
set.seed(0220)
energy_stock_def_egb <- energy_stock_def
energy_stock_def_egb$Date <-  NULL
sample_split <- sample.split(Y = energy_stock_def_egb$energy_industry, SplitRatio = 0.7)
energy_industry_train_egb_2 <- subset(x = energy_stock_def_egb, sample_split == TRUE)
energy_industry_test_egb_2 <- subset(x = energy_stock_def_egb, sample_split == FALSE)

energy_industry_y_train_egb_2 <- as.integer(energy_industry_train_egb_2$energy_industry) - 1
energy_industry_y_test_egb_2 <- as.integer(energy_industry_test_egb_2$energy_industry) - 1
energy_industry_x_train_egb_2 <- energy_industry_train_egb_2 %>% select(-energy_industry)
energy_industry_x_test_egb_2 <- energy_industry_test_egb_2 %>% select(-energy_industry)

#Modeling

energy_industry_xgb_train <- xgb.DMatrix(data = as.matrix(energy_industry_x_train_egb_2), label = energy_industry_y_train_egb_2)
energy_industry_xgb_test <- xgb.DMatrix(data = as.matrix(energy_industry_x_test_egb_2), label = energy_industry_y_test_egb_2)
energy_industry_xgb_params <- list(
  booster = "gbtree",
  eta = 0.01,
  max_depth = 8,
  gamma = 4,
  subsample = 0.75,
  colsample_bytree = 1,
  objective = "multi:softprob",
  eval_metric = "mlogloss",
  num_class = length(levels(energy_stock_def_egb$energy_industry))
)

energy_industry_xgb_model <- xgb.train(
  params = energy_industry_xgb_params,
  data = energy_industry_xgb_train,
  nrounds = 5000,
  verbose = 1
)
xgb_model

bstSparse <- xgboost(data = energy_industry_x_train_egb_2, label = energy_industry_y_train_egb_2, max.depth = 2, eta = 1, nthread = 2, nrounds = 2, objective = "binary:logistic")


# MODELO ECONOMÉTRICO  ----------------------------------------------------

library(readxl)
library(tseries)
library(forecast)
library(readxl)
library(lmtest)
library(tseries)
#library(aTSA) #Cargar Solo para Heterocedastic Test
library(dplyr)
library(forecast)
#library(ggpubr)


#Transformación previa de la Serie 

utilities_stock_log <-log(sp500_industry_mean$utilities_industry)



#Comprobación estacionariedad de los datos
#adf.test(sp500_industry_mean$utilities_industry)
adf.test(sp500_industry_mean$real_estate_industry)
adf.test(sp500_industry_mean$materials_industry)
adf.test(sp500_industry_mean$information_technology_industry)
adf.test(sp500_industry_mean$industrial_industry)
adf.test(sp500_industry_mean$health_care_industry)
#adf.test(sp500_industry_mean$financial_industry)
adf.test(sp500_industry_mean$energy_industry)
adf.test(sp500_industry_mean$communication_service_industry)
adf.test(sp500_industry_mean$consumer_discretionary_industry)
adf.test(sp500_industry_mean$consumer_staples_industry)



#Determinar el orden de diferenciación (d) para el modelo ARIMA
acf(diff(sp500_industry_mean$utilities_industry))
acf(diff(sp500_industry_mean$real_estate_industry))
acf(diff(sp500_industry_mean$materials_industry))
acf(diff(sp500_industry_mean$information_technology_industry))
acf(diff(sp500_industry_mean$industrial_industry))
acf(diff(sp500_industry_mean$health_care_industry))
acf(diff(sp500_industry_mean$financial_industry))
acf(diff(sp500_industry_mean$energy_industry))
acf(diff(sp500_industry_mean$communication_service_industry))
acf(diff(sp500_industry_mean$consumer_discretionary_industry))
acf(diff(sp500_industry_mean$consumer_staples_industry))


# MODELO MÉTODOS ESTADÍSTICOS ---------------------------------------------
library(tidyverse)
library(ggplot2)
library(rpart)
library(rpart.plot)
library(modeest)
library(dyplyr)
library(hrbrthemes)
library(rpart)
library(rpart.plot)
library(MASS)


#Árbol 
arbol_completo <-  rpart(price ~ .  ,
                         data = sp)
plot(arbol_completo)
text(arbol_completo)
rpart.plot::rpart.plot(arbol_completo)


# MODELO ARIMA - PRUEBAS --------------------------------------------------


#   https://www.section.io/engineering-ed
ucation/predicting-future-stock-prices-using-aima-model-in-r/#importing-yahoo-finance-data-in-r



  

# MODELO ARIMA 2  ---------------------------------------------------------

#https://rpubs.com/kevinTongam/arimaforecast


library(quantmod)



#Log Transformation Stock
energy_stock_arima2<- energy_stock_def
energy_stock_arima2$Date <-  NULL

indf_data <- getSymbols(Symbols = "INDF.JK", src = "yahoo", from = Sys.Date() - 1953, 
                        to = Sys.Date(), auto.assign = FALSE)

indf_data <- Cl(indf_data)

energy_stock_arima2_log <- log(energy_stock_arima2)

plot(energy_stock_arima2_log$energy_industry, main = "log indf_data chart")


# MODELO ARIMA 3 - ECONOMETRÍA CARMEN -------------------------------------
library(readxl)
library(tseries)
library(forecast)
library(readxl)
library(lmtest)
library(tseries)
#library(aTSA) #Cargar Solo para Heterocedastic Test
library(dplyr)
library(ggpubr)
library(quantmod)
library(TSstudio)
library(TSA)
library(Quandl)
library(car)


# Consumer Discretionary Industry - ARIMA ---------------------------------

#Estudiar la estacionariedad de la serie

consumer_discretionary_stock_arima <-  consumer_discretionary_stock_def
consumer_discretionary_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

consumer_discretionary_stock_arima_ts <-  ts(consumer_discretionary_stock_arima$consumer_discretionary_industry,start = 2015, end = 2023, frequency = 250)
ts_plot(consumer_discretionary_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Consumer Discretionary Industry (2015-2023)", 
        slider = FALSE)



media_consumer_discretionary_stock_arima <- mean(consumer_discretionary_stock_arima_ts)

#Transformación previa de la serie

log_consumer_discretionary_stock_arima_ts<-log(consumer_discretionary_stock_arima_ts)
ts_plot(log_consumer_discretionary_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($) ", 
        title ="Transformación Logarítmica Consumer Discretionary Industry (2015-2023)", 
        slider = FALSE)




#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_consumer_discretionary_stock_arima_ts ) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(consumer_discretionary_stock_arima_ts)
#ARIMA (0,1, 0)

#DIFERENCIAS Consumer Discretionary Stock
adf.test(log_consumer_discretionary_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_consumer_discretionary_stock_arima_ts<-diff(log_consumer_discretionary_stock_arima_ts)
adf.test(d_log_consumer_discretionary_stock_arima_ts)

#Correlograma Energy Stock
par(mfrow=c(1,1)) 
FAC_consumer_discretionary <- acf(log_consumer_discretionary_stock_arima_ts, main = "FAC - Consumer Discretionary Industry")# Correlograma FAC
FACP_consumer_discretionary <- pacf(log_consumer_discretionary_stock_arima_ts, main = "FACP - Consumer Discretionary Industry") #Correlograma FACP

#Mirando las gráficas, tenemos que es un modelo AR(1)
#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_consumer_discretionary <- ts(Zconsumer_discretionary_stock_arima_ts, start = c(2015,1), frequency = 250)
arima_consumer_discretionary_1 <- Arima(ts_data_consumer_discretionary, order = c(2,1,1))#, seasonal = list(order = c(1,1,2), period = 12))
print(arima_consumer_discretionary_1)
coeftest(arima_consumer_discretionary_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_consumer_discretionary_1)
coef(arima_consumer_discretionary_1)
AIC(arima_consumer_discretionary_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_consumer_discretionary_1 <-  residuals(arima_consumer_discretionary_1)
mean(error_consumer_discretionary_1)

#Correlación residuos - Energy Industry

residuos_consumer_discretionary_1 <- Box.test(residuals(arima_consumer_discretionary_1), type="Ljung-Box") 
residuos_consumer_discretionary_1


#Jarque Bera Test - Energy Industry

bera_test_consumer_discretionary_1 <- jarque.bera.test(error_consumer_discretionary_1)
bera_test_consumer_discretionary_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

consumer_discretionary_arima_forecast <-  forecast(arima_consumer_discretionary_1, h = 45, level=c(90))
library(scales)

autoplot(consumer_discretionary_arima_forecast) +
  autolayer(consumer_discretionary_stock_arima_ts, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor ($)") +
  ggtitle("Predicción Consumer Discretionary Industry ARIMA(2,0,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))


accuracy(arima_consumer_discretionary_1)

autoplot(forecast(arima_consumer_discretionary_1))

# Consumer Staples - ARIMA ------------------------------------------------

#Estudiar la estacionariedad de la serie

consumer_staples_stock_arima <-  consumer_staples_stock_def
consumer_staples_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

consumer_staples_stock_arima_ts <-  ts(consumer_staples_stock_arima$consumer_staples_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(consumer_staples_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Consumer Staples Industry (2015-2023)", 
        slider = FALSE)



media_consumer_staples_stock_arima <- mean(consumer_staples_stock_arima_ts)

#Transformación previa de la serie

log_consumer_staples_stock_arima_ts<-log(consumer_staples_stock_arima_ts)
ts_plot(log_consumer_staples_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($) ", 
        title ="Transformación Logarítmica Consumer Staples Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_consumer_staples_stock_arima_ts)
auto.arima(consumer_staples_stock_arima_ts)
#ARIMA (0,1, 0)

#DIFERENCIAS Energy Stock
adf.test(log_consumer_staples_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_consumer_staples_stock_arima_ts<-diff(log_consumer_staples_stock_arima_ts)
adf.test(d_log_consumer_staples_stock_arima_ts)


#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_consumer_staples <- acf(d_log_consumer_staples_stock_arima_ts, main = "FAC - Consumer Staples Industry")# Correlograma FAC
FACP_consumer_staples<- pacf(log_consumer_staples_stock_arima_ts, main = "FACP - Consumer Staples Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_consumer_staples <- ts(log_consumer_staples_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_consumer_staples_1 <- Arima(log_consumer_staples_stock_arima_ts, order = c(2,1,1), seasonal = list(order = c(2,1,1), period = 15))
print(arima_consumer_staples_1)
coeftest(arima_consumer_staples_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_consumer_staples_1)
coef(arima_consumer_staples_1)
AIC(arima_consumer_staples_1)





#Correlación residuos - Energy Industry

residuos_consumer_staples_1 <- Box.test(residuals(arima_consumer_staples_1), type="Ljung-Box") 
residuos_consumer_staples_1


#Jarque Bera Test - Energy Industry

bera_test_consumer_staples_1 <- jarque.bera.test(error_consumer_staples_1)
bera_test_consumer_staples_1 


#Shapiro Wilk Test 
shapiro.test(error_consumer_staples_1)

#Análisis de Residuos 


checkresiduals(arima_consumer_staples_1)


# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

consumer_staples_arima_forecast <-  forecast(arima_consumer_staples_1, h = 45, level=c(99.5))
autoplot(consumer_staples_arima_forecast) +
  autolayer(ts_data_consumer_staples, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Consumer Staples Industry ARIMA (4,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_consumer_staples_1)

autoplot(forecast(arima_consumer_staples_1))


# Health Care Industry - ARIMA --------------------------------------------
#Estudiar la estacionariedad de la serie

health_care_stock_arima <-  health_care_stock_def
health_care_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

health_care_stock_arima_ts <-  ts(health_care_stock_arima$health_care_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(health_care_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Health Care Industry (2015-2023)", 
        slider = FALSE)



media_health_care_stock_arima <- mean(health_care_stock_arima_ts)

#Transformación previa de la serie

log_health_care_stock_arima_ts<-log(health_care_stock_arima_ts)
ts_plot(log_health_care_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Health Care Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_health_care_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(health_care_stock_arima_ts)
#ARIMA (0,1, 0)

#DIFERENCIAS Energy Stock
adf.test(log_health_care_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_health_care_stock_arima_ts<-diff(log_health_care_stock_arima_ts)
adf.test(d_log_health_care_stock_arima_ts)


#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_health_care <- acf(d_log_health_care_stock_arima_ts, main = "FAC - Health Care Industry")# Correlograma FAC
FACP_health_care <- pacf(log_health_care_stock_arima_ts, main = "FACP - Health Care Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_health_care <- ts(log_health_care_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_health_care_1 <- Arima(ts_data_health_care, order = c(0,1,0), seasonal = list(order = c(2,1,0), period = 12))
print(arima_health_care_1)
coeftest(arima_health_care_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_health_care_1)
coef(arima_health_care_1)
AIC(arima_health_care_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_health_care_1 <-  residuals(arima_health_care_1)
mean(error_health_care_1)
plot(error_health_care_1, main = "Residuos ARIMA(2,1,2) - Health Care Industry",  xlab="Años",
     ylab="Error Model 1 - Health Care Industry") #NO FUNCCIONA, PREGUNTAR PABLO

par(mar=c(4,4,2,1)) # ajustar los márgenes
plot(error_health_care_1, main = "Residuos ARIMA(2,1,2) - Health Care Industry", xlab="Años",
     ylab="Error Model 1 - Health Care Industry") # trazar la gráfica

#Correlación residuos - Energy Industry

residuos_health_care_1 <- Box.test(residuals(arima_health_care_1), type="Ljung-Box") 
residuos_health_care_1


#Jarque Bera Test - Energy Industry

bera_test_health_care_1 <- jarque.bera.test(error_health_care_1)
bera_test_health_care_1 




# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

health_care_arima_forecast <-  forecast(arima_health_care_1, h = 50, level=c(99.5))
autoplot(health_care_arima_forecast) +
  autolayer(ts_data_health_care, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Health Care Industry ARIMA (0,1,0)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_health_care_1)

autoplot(forecast(arima_health_care_1))



# Industrials Industry - ARIMA --------------------------------------------

#Estudiar la estacionariedad de la serie

industrials_stock_arima <-  industrials_stock_def
industrials_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

industrials_stock_arima_ts <-  ts(industrials_stock_arima$industrial_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(industrials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Industrials Industry (2015-2023)", 
        slider = FALSE)



media_industrials_stock_arima <- mean(industrials_stock_arima_ts)

#Transformación previa de la serie

log_industrials_stock_arima_ts<-log(industrials_stock_arima_ts)
ts_plot(log_industrials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Industrials Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_industrials_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(industrials_stock_arima_ts)
#ARIMA (0,1, 0)

#DIFERENCIAS Energy Stock
adf.test(log_industrials_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_industrials_stock_arima_ts<-diff(log_industrials_stock_arima_ts)
adf.test(d_log_industrials_stock_arima_ts)


#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_industrials <- acf(d_log_industrials_stock_arima_ts, main = "FAC - Industrials Industry")# Correlograma FAC
FACP_industrials<- pacf(log_industrials_stock_arima_ts, main = "FACP - Industrials Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_industrials <- ts(log_industrials_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_industrials_1 <- Arima(ts_data_industrials, order = c(2,1,0), seasonal = list(order = c(2,1,0), period = 12))
print(arima_industrials_1)
coeftest(arima_industrials_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_industrials_1)
coef(arima_industrials_1)
AIC(arima_industrials_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_industrials_1 <-  residuals(arima_industrials_1)
mean(error_industrials_1)
plot(error_industrials_1, main = "Residuos ARIMA(2,1,2) - Industrials Industry",  xlab="Años",
     ylab="Error Model 1 - Industrials Industry") #NO FUNCCIONA, PREGUNTAR PABLO

par(mar=c(4,4,2,1)) # ajustar los márgenes
plot(error_industrials_1, main = "Residuos ARIMA(2,1,2) - Industrials Industry", xlab="Años",
     ylab="Error Model 1 - Industrials Industry") # trazar la gráfica

#Correlación residuos - Energy Industry

residuos_industrials_1 <- Box.test(residuals(arima_industrials_1), type="Ljung-Box") 
residuos_industrials_1


#Jarque Bera Test - Energy Industry

bera_test_industrials_1 <- jarque.bera.test(error_industrials_1)
bera_test_industrials_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

industrials_arima_forecast <-  forecast(arima_industrials_1, h = 50, level=c(99.5))
autoplot(industrials_arima_forecast) +
  autolayer(ts_data_industrials, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Industrials Industry ARIMA (1,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_industrials_1)

autoplot(forecast(arima_industrials_1))


# Information Technology Industry - ARIMA ---------------------------------
#Estudiar la estacionariedad de la serie

information_technology_stock_arima <-  information_technology_stock_def
information_technology_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

information_technology_stock_arima_ts <-  ts(information_technology_stock_arima$information_technology_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(information_technology_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Information Technology Industry (2015-2023)", 
        slider = FALSE)



media_information_technology_stock_arima <- mean(information_technology_stock_arima_ts)

#Transformación previa de la serie

log_information_technology_stock_arima_ts<-log(information_technology_stock_arima_ts)
ts_plot(log_information_technology_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Information Technology Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_information_technology_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(information_technology_stock_arima_ts)
#ARIMA (0,1, 0)

#DIFERENCIAS Energy Stock
adf.test(log_information_technology_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_information_technology_stock_arima_ts<-diff(log_information_technology_stock_arima_ts)
adf.test(d_log_information_technology_stock_arima_ts)


#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_information_technology <- acf(d_log_information_technology_stock_arima_ts, main = "FAC - Information Technology Industry")# Correlograma FAC
FACP_information_technology <- pacf(d_log_information_technology_stock_arima_ts, main = "FACP - Information Technology Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_information_technology <- ts(log_information_technology_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_information_technology_1 <- Arima(ts_data_information_technology, order = c(2,1,0), seasonal = list(order = c(2,1,0), period = 15))
print(arima_information_technology_1)
coeftest(arima_information_technology_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_information_technology_1)
coef(arima_information_technology_1)
AIC(arima_information_technology_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_information_technology_1 <-  residuals(arima_information_technology_1)
mean(error_information_technology_1)


#Correlación residuos - Energy Industry

residuos_information_technology_1 <- Box.test(residuals(arima_information_technology_1), type="Ljung-Box") 
residuos_information_technology_1


#Jarque Bera Test - Energy Industry

bera_test_information_technology_1 <- jarque.bera.test(error_information_technology_1)
bera_test_information_technology_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

information_technology_arima_forecast <-  forecast(arima_information_technology_1, h = 50, level=c(99.5))
autoplot(information_technology_arima_forecast) +
  autolayer(ts_data_information_technology, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Comparación de valores reales y predichos por ARIMA(2,0,1)(2,0,1)[350]") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_information_technology_1)

autoplot(forecast(arima_information_technology_1))


# Materials Industry - ARIMA ----------------------------------------------

#Estudiar la estacionariedad de la serie

materials_stock_arima <-  materials_stock_def
materials_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

materials_stock_arima_ts <-  ts(materials_stock_arima$materials_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(materials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Materials Industry (2015-2023)", 
        slider = FALSE)


#Transformación previa de la serie

log_materials_stock_arima_ts<-log(materials_stock_arima_ts)
ts_plot(log_materials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Materials Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_materials_stock_arima_ts)
auto.arima(materials_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_materials_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_materials_stock_arima_ts<-diff(log_materials_stock_arima_ts)
adf.test(d_log_materials_stock_arima_ts)


#Segunda diferencia
dd_log_materials_stock_arima_ts<-diff(d_log_materials_stock_arima_ts)
adf.test(dd_log_materials_stock_arima_ts)


#Tercera diferencia
ddd_log_materials_stock_arima_ts<-diff(dd_log_materials_stock_arima_ts)
adf.test(ddd_log_materials_stock_arima_ts)

#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_materials <- acf(d_log_materials_stock_arima_ts, main = "FAC - Materials Industry")# Correlograma FAC
FACP_materials<- pacf(log_materials_stock_arima_ts, main = "FACP - Materials Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_materials <- ts(log_materials_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_materials_1 <- Arima(ts_data, order = c(2,1,2), seasonal = list(order = c(2,1,2), period = 12))
print(arima_materials_1)
coeftest(arima_materials_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_materials_1)
coef(arima_materials_1)
AIC(arima_materials_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_materials_1 <-  residuals(arima_materials_1)
mean(error_materials_1)


#Correlación residuos - Energy Industry

residuos_materials_1 <- Box.test(residuals(arima_materials_1), type="Ljung-Box") 
residuos_materials_1


#Jarque Bera Test - Energy Industry

bera_test_materials_1 <- jarque.bera.test(error_materials_1)
bera_test_materials_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

materials_arima_forecast <-  forecast(arima_materials_1, h = 50, level=c(99.5))
autoplot(materials_arima_forecast) +
  autolayer(ts_data_materials, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Comparación de valores reales y predichos por ARIMA(2,0,1)(2,0,1)[350]") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_materials_1)

# Real Estate Industry - ARIMA --------------------------------------------

#Estudiar la estacionariedad de la serie

real_estate_stock_arima <-  real_estate_stock_def
real_estate_stock_arima$Date <- NULL 
colnames()
#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

real_estate_stock_arima_ts <-  ts(real_estate_stock_arima$real_estate_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(real_estate_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Comportamiento Real Estate Industry (2015-2023)", 
        slider = FALSE)




#Transformación previa de la serie

log_real_estate_stock_arima_ts<-log(real_estate_stock_arima_ts)
ts_plot(log_real_estate_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Real Estate Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_real_estate_stock_arima_ts) 
auto.arima(real_estate_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_real_estate_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_real_estate_stock_arima_ts<-diff(log_real_estate_stock_arima_ts)
adf.test(d_log_real_estate_stock_arima_ts)


#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_energy <- acf(d_log_real_estate_stock_arima_ts, main = "FAC - Energy Industry")# Correlograma FAC
FACP_energy<- pacf(log_real_estate_stock_arima_ts, main = "FACP - Energy Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_real_estate <- ts(log_real_estate_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_real_estate_1 <- Arima(ts_data_real_estate, order = c(2,1,2))
print(arima_real_estate_1)
coeftest(arima_real_estate_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_real_estate_1)
coef(arima_real_estate_1)
AIC(arima_real_estate_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_real_estate_1 <-  residuals(arima_real_estate_1)
mean(error_real_estate_1)


#Correlación residuos - Energy Industry

residuos_real_estate_1 <- Box.test(residuals(arima_real_estate_1), type="Ljung-Box") 
residuos_real_estate_1


#Jarque Bera Test - Energy Industry

bera_test_real_estate_1 <- jarque.bera.test(error_real_estate_1)
bera_test_real_estate_1 





# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

real_estate_arima_forecast <-  forecast(arima_real_estate_1, h = 50, level=c(99.5))
autoplot(real_estate_arima_forecast) +
  autolayer(ts_data_real_estate, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Real Estate Industry") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_real_estate_1)

autoplot(forecast(arima_real_estate_1))

# Communication Services Industry - ARIMA ---------------------------------

#Estudiar la estacionariedad de la serie

communication_service_arima <-  communication_service_stock_def
communication_service_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

communication_service_stock_arima_ts <-  ts(communication_service_arima$communication_service_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(communication_service_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Communication Services Industry (2015-2023)", 
        slider = FALSE)


#Transformación previa de la serie

log_communication_service_stock_arima_ts<-log(communication_service_stock_arima_ts)
ts_plot(log_communication_service_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Communication Services Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_communication_service_stock_arima_ts)
auto.arima(communication_service_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_communication_service_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_communication_service_stock_arima_ts<-diff(log_communication_service_stock_arima_ts)
adf.test(d_log_communication_service_stock_arima_ts)



#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_materials <- acf(d_log_communication_service_stock_arima_ts, main = "FAC - Materials Industry")# Correlograma FAC
FACP_materials<- pacf(log_communication_service_stock_arima_ts, main = "FACP - Materials Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_communication_service <- ts(log_communication_service_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_communication_service_1 <- Arima(ts_data_communication_service, order = c(2,1,0))
print(arima_communication_service_1)
coeftest(arima_communication_service_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_communication_service_1)
coef(arima_communication_service_1)
AIC(arima_communication_service_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_communication_service_1 <-  residuals(arima_communication_service_1)
mean(error_communication_service_1)


#Correlación residuos - Energy Industry

residuos_communication_service_1 <- Box.test(residuals(arima_communication_service_1), type="Ljung-Box") 
residuos_communication_service_1


#Jarque Bera Test - Energy Industry

bera_test_communication_service_1 <- jarque.bera.test(error_communication_service_1)
bera_test_communication_service_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

communication_service_arima_forecast <-  forecast(arima_communication_service_1, h = 50, level=c(99.5))
autoplot(communication_service_arima_forecast) +
  autolayer(ts_data_communication_service, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Communication Services Industry ARIMA (2,1,0)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_communication_service_1)


# Utilities Industry - ARIMA ----------------------------------------------

#Estudiar la estacionariedad de la serie

utilities_stock_arima <-  utilities_stock_def
utilities_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

utilities_stock_arima_ts <-  ts(utilities_stock_arima$utilities_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(utilities_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Utilities Industry (2015-2023)", 
        slider = FALSE)


#Transformación previa de la serie

log_utilities_stock_arima_ts<-log(utilities_stock_arima_ts)
ts_plot(log_utilities_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Utilities Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_utilities_stock_arima_ts)
auto.arima(utilities_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_utilities_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_utilities_stock_arima_ts<-diff(log_utilities_stock_arima_ts)
adf.test(d_log_utilities_stock_arima_ts)

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_utilities <- ts(log_utilities_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_utilities_1 <- Arima(ts_data_utilities, order = c(4,1,1), seasonal = list(order = c(4,1,1), period = 12))
print(arima_utilities_1)
coeftest(arima_utilities_1)


#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_utilities_1)
coef(arima_utilities_1)
AIC(arima_utilities_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_utilities_1 <-  residuals(arima_utilities_1)
mean(error_utilities_1)


#Correlación residuos - Energy Industry

residuos_utilities_1 <- Box.test(residuals(arima_utilities_1), type="Ljung-Box") 
residuos_utilities_1


#Jarque Bera Test - Energy Industry

bera_test_utilities_1 <- jarque.bera.test(error_utilities_1)
bera_test_utilities_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

utilities_arima_forecast <-  forecast(arima_utilities_1, h = 50, level=c(99.5))
autoplot(utilities_arima_forecast) +
  autolayer(ts_data_utilities, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Utilities Industry ARIMA (4,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_utilities_1)

# Financials Industry - ARIMA ---------------------------------------------

#Estudiar la estacionariedad de la serie

#Estudiar la estacionariedad de la serie

financials_stock_arima <-  financials_stock_def
financials_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

financials_stock_arima_ts <-  ts(financials_stock_arima$financial_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(financials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Financials Industry (2015-2023)", 
        slider = FALSE)


#Transformación previa de la serie

log_financials_stock_arima_ts<-log(financials_stock_arima_ts)
ts_plot(log_financials_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Financials Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_financials_stock_arima_ts)
auto.arima(financials_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_financials_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_financials_stock_arima_ts<-diff(log_financials_stock_arima_ts)
adf.test(d_log_financials_stock_arima_ts)

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_financials <- ts(log_financials_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_financials_1 <- Arima(ts_data_financials, order = c(2,1,0), seasonal = list(order = c(2,1,0), period = 15))
print(arima_financials_1)
coeftest(arima_financials_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_financials_1)
coef(arima_financials_1)
AIC(arima_financials_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_financials_1 <-  residuals(arima_financials_1)
mean(error_financials_1)


#Correlación residuos - Energy Industry

residuos_financials_1 <- Box.test(residuals(arima_financials_1), type="Ljung-Box") 
residuos_financials_1


#Jarque Bera Test - Energy Industry

bera_test_financials_1 <- jarque.bera.test(error_financials_1)
bera_test_financials_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

financials_arima_forecast <-  forecast(arima_financials_1, h = 50, level=c(99.5))
autoplot(financials_arima_forecast) +
  autolayer(ts_data_financials, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Financials Industry - ARIMA (,,)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_financials_1)


# Energy Industry - ARIMA -------------------------------------------------


#Estudiar la estacionariedad de la serie

energy_stock_arima <-  energy_stock_def
energy_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

energy_stock_arima_ts <-  ts(energy_stock_arima$energy_industry,start = 2015, end = 2023, frequency = 365)
ts_plot(energy_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones", 
        title ="Valor Energy Industry (2015-2023)", 
        slider = FALSE)


#Transformación previa de la serie

log_energy_stock_arima_ts<-log(energy_stock_arima_ts)
ts_plot(log_energy_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Energy Industry (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_energy_stock_arima_ts)
auto.arima(energy_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_energy_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_energy_stock_arima_ts<-diff(log_energy_stock_arima_ts)
adf.test(d_log_energy_stock_arima_ts)

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_energy <- ts(log_energy_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_energy_1 <- Arima(ts_data_energy, order = c(1,1,0), seasonal = list(order = c(1,1,0), period = 15))
print(arima_energy_1)
coeftest(arima_energy_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_energy_1)
coef(arima_energy_1)
AIC(arima_energy_1)




#DIAGNÓSTICO DE LOS RESIDUOS

error_energy_1 <-  residuals(arima_energy_1)
mean(error_energy_1)


#Correlación residuos - Energy Industry

residuos_energy_1 <- Box.test(residuals(arima_energy_1), type="Ljung-Box") 
residuos_energy_1


#Jarque Bera Test - Energy Industry

bera_test_energy_1 <- jarque.bera.test(error_energy_1)
bera_test_energy_1 

# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

energy_arima_forecast <-  forecast(arima_energy_1, h = 50, level=c(99.5))
autoplot(energy_arima_forecast) +
  autolayer(ts_data_energy, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor") +
  ggtitle("Predicción Energy Industry - ARIMA (,,)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_energy_1)











