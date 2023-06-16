#ÍNDICES BURSÁTILES - DAMIÁN GARCÍA

# Carga de datos ----------------------------------------------------------
#setwd("Data/")

library(tidyverse)
library(tidyquery)
library(dplyr)
library(ggplot2)

#Daily Stocks
sp500 <- read_csv("Data/S&P 500 Daily.csv")
nasdaq <- read_csv("Data/Nasdaq 100 Daily.csv")
moex <- read_csv("Data/MOEX Russia Daily.csv")
pfts <- read_csv("Data/PFTS Daily.csv")
csi <-  read_csv("Data/CSI 1000 Daily.csv")

#Monthly Stocks
sp500_month <- read_csv("Data/S&P 500 Monthly.csv")
nasdaq_month <- read_csv("Data/Nasdaq 100 Monthly.csv")
moex_month <- read_csv("Data/MOEX Russia Monthly.csv")
pfts_month <- read_csv("Data/PFTS Monthly.csv")
csi_month <-  read_csv("Data/CSI 1000 Monthly.csv")

# Cambio de formato Fechas ------------------------------------------------

#Daily Stocks yyyy/mm/dd
sp500$Date <- as.Date(sp500$Date, format="%m/%d/%Y")
nasdaq$Date <- as.Date(nasdaq$Date, format="%m/%d/%Y")
moex$Date <- as.Date(moex$Date, format="%m/%d/%Y")
pfts$Date <- as.Date(pfts$Date, format="%m/%d/%Y")
csi$Date <- as.Date(csi$Date, format="%m/%d/%Y")

#View(sp500) #Viualización cambio en el formato de Date (Se realiza en todos los df)
class(sp500$Date)

#Monthly Stocks yyyy/mm/dd
sp500_month$Date <- as.Date(sp500_month$Date, format="%m/%d/%Y")
nasdaq_month$Date <- as.Date(nasdaq_month$Date, format="%m/%d/%Y")
moex_month$Date <- as.Date(moex_month$Date, format="%m/%d/%Y")
pfts_month$Date <- as.Date(pfts_month$Date, format="%m/%d/%Y")
csi_month$Date <- as.Date(csi_month$Date, format="%m/%d/%Y")

#View(sp500_month) #Viualización cambio en el formato de Date (Se realiza en todos los df)
class(sp500_month$Date)

#View(sp500)
# Eliminar Valores no necesarios ------------------------------------------

#Eliminamos Variable Volumen - Datos Daily
sp500$Vol. <- NULL 
nasdaq$Vol. <- NULL 
moex$Vol. <- NULL 
pfts$Vol. <- NULL 
csi$Vol. <-  NULL

#Eliminamos Variable Volumen - Datos Daily
sp500_month$Vol. <- NULL 
nasdaq_month$Vol. <- NULL 
moex_month$Vol. <- NULL 
pfts_month$Vol. <- NULL 
csi_month$Vol. <-  NULL



# Creación Dataframe Stocks -----------------------------------------------
#Primero Creamos Nuevos DF que contengan únicamente la fecha y el valor del índice
sp500_stock <- sp500
sp500_stock$Open <- NULL
sp500_stock$High <- NULL
sp500_stock$Low <- NULL
sp500_stock$`Change %` <- NULL

nasdaq_stock <- nasdaq
nasdaq_stock$Open <- NULL
nasdaq_stock$High <- NULL
nasdaq_stock$Low <- NULL
nasdaq_stock$`Change %` <- NULL

moex_stock <- moex
moex_stock$Open <- NULL
moex_stock$High <- NULL
moex_stock$Low <- NULL
moex_stock$`Change %` <- NULL

pfts_stock <- pfts
pfts_stock$Open <- NULL
pfts_stock$High <- NULL
pfts_stock$Low <- NULL
pfts_stock$`Change %` <- NULL

csi_stock <- csi
csi_stock$Open <- NULL
csi_stock$High <- NULL
csi_stock$Low <- NULL
csi_stock$`Change %` <- NULL



#Creamos el Dataframe con todos los índices

if ( "index_stocks" %in% ls()){
  rm(index_stocks)
} else {
  print("El dataframe no existe, por lo que no va a generar errores en su ejecución.")
}
list_index_stocks = list(stock_sp500 = sp500_stock,nasdaq_stock, moex_stock, pfts_stock, csi_stock)
index_stocks <- list_index_stocks %>% reduce(inner_join, by='Date') 

View(index_stocks)

#A continuación, vamos a modificar los nombres para permitir su mejor comprension

names(index_stocks) #Nombres de variables antes de modificar
index_stocks <- rename(index_stocks, SP500 = Price.x, NASDAQ100 = Price.y, MOEX_RUSSIA = Price.x.x, PFTS_UKRAINE = Price.y.y, 
       CSI_CHINA = Price)
names(index_stocks)

#View(index_stocks) #Se han modificado los nombres de las variables
print(index_stocks)
colnames(index_stocks)

write.table(index_stocks,file = "Data/global_index.csv" , sep = ";", dec = ",", row.names = FALSE )


ggplot(index_stocks, aes(x = Date)) +
  geom_line(aes(y = index_stocks$SP500 , color = "SP500")) +
  geom_line(aes(y = index_stocks$NASDAQ100, color = "NASDAQ100")) +
  geom_line(aes(y = index_stocks$MOEX_RUSSIA, color = "MOEX_RUSSIA")) +
  geom_line(aes(y = index_stocks$PFTS_UKRAINE, color = "PFTS_UKRAINE")) +
  geom_line(aes(y = index_stocks$CSI_CHINA, color = "CSI_CHINA")) +
  ggtitle("Variaciones de los índices bursátiles") +
  xlab("Fecha") +
  ylab("Valor del índice ($)") +
  scale_color_manual(values = c("SP500" = "blue", "NASDAQ100" = "red", "MOEX_RUSSIA" = "yellow", 
                                "PFTS_UKRAINE" = "black",  "CSI_CHINA" = "green")) +
  theme_classic()


library(ggplot2)

# Filtrar los datos para incluir solo desde 2021 hasta 2023
index_stocks_filtered <- index_stocks[index_stocks$Date >= as.Date("2021-01-01") & index_stocks$Date <= as.Date("2023-02-01"), ]

# Graficar los datos filtrados
ggplot(index_stocks_filtered, aes(x = Date)) +
  geom_line(aes(y = SP500 , color = "SP500")) +
  geom_line(aes(y = NASDAQ100, color = "NASDAQ100")) +
  geom_line(aes(y = MOEX_RUSSIA, color = "MOEX_RUSSIA")) +
  geom_line(aes(y = PFTS_UKRAINE, color = "PFTS_UKRAINE")) +
  geom_line(aes(y = CSI_CHINA, color = "CSI_CHINA")) +
  ggtitle("Variaciones de los índices bursátiles") +
  xlab("Fecha") +
  ylab("Valor del índice ($)") +
  scale_color_manual(values = c("SP500" = "blue", "NASDAQ100" = "red", "MOEX_RUSSIA" = "yellow", 
                                "PFTS_UKRAINE" = "black",  "CSI_CHINA" = "green")) +
  theme_classic()

# Red Neuronal ------------------------------------------------------------


library(quantmod)
library(lubridate)
library(dplyr)
library(tidyr)
library(ggplot2)
library(caret)


for (i in 1:2) {
  if ("index_stocks" %in% ls()) {
    #rm(index_stocks)
    print("El dataframe index_stocks ha sido eliminado para evitar posibles errores de ejecución. Posteriormente, se ha vuelto a ejecutar cargar estos datos")
  }
  
  index_stocks$Date_dup <- index_stocks$Date
  index_stocks <- index_stocks %>% separate(Date_dup, c("Año", "Mes", "Día"))
  index_stocks$Año <- as.numeric(index_stocks$Año)
  index_stocks$Mes <- as.numeric(index_stocks$Mes)
  index_stocks$Día <- as.numeric(index_stocks$Día)
  
  index_stocks_scale <- as.data.frame(cbind(index_stocks$Date, scale(index_stocks[, c(7:9)])))
  names(index_stocks_scale)[1] <- "Date"
  index_stocks_scale$Date <- as.Date(index_stocks_scale$Date)
  
  index_stocks$Día <- NULL #Eliminamos las variables para evitar duplicados en el nuevo dataframe creado
  index_stocks$Mes <- NULL
  index_stocks$Año <- NULL
  
  list_index_stock_nn <- list(index_stocks_scale, index_stocks)
  index_stock_def_nn <- list_index_stock_nn %>% reduce(inner_join, by='Date', copy = TRUE)
}
colnames(index_stock_def_nn)
colnames(index_stocks)
#Separación de los datos

set.seed(2023)  

index_stock_train_nn <-  createDataPartition(na.omit(subset(index_stock_def_nn, energy_stock_def_nn$Date < today())) $energy_industry, 
                                                 p = 0.7, list = F)

index_stock_test_nn <-  rbind(energy_stock_def_nn[-energy_industry_train_nn,], subset(energy_stock_def_nn, 
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
                                    hidden = 10, threshold = 0.01, stepmax = 1e+08, rep = 3, linear.output = TRUE)

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



# ARIMA -------------------------------------------------------------------

# ARIMA SP500 -------------------------------------------------------------


library(ggplot2)
#Estudiar la estacionariedad de la serie
#index_stock_arima <- read_excel("Data/global_index_excel.xlsx")

index_stock_arima <-  index_stocks
index_stock_arima$Date <- NULL 

#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

sp500_stock_arima_ts <-  ts(index_stock_arima$SP500,start = 2015, end = 2023, frequency = 300)
ts_plot(sp500_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Valor Índices Bursátiles Mundiales (2015-2023)", 
        slider = FALSE)




#Transformación previa de la serie

log_sp500_stock_arima_ts<-log(sp500_stock_arima_ts)
ts_plot(log_sp500_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Índices Bursátiles Mundiales (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_sp500_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG

auto.arima(sp500_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_sp500_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_sp500_stock_arima_ts<-diff(log_sp500_stock_arima_ts)
adf.test(d_log_sp500_stock_arima_ts)



#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_sp500 <- ts(log_sp500_stock_arima_ts, start = c(2015,1), frequency = 365)
arima_sp500_1 <- Arima(ts_data_sp500, order = c(2,1,0), seasonal = list(order = c(2,1,0), period = 12))
print(arima_sp500_1)
coeftest(arima_sp500_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_sp500_1)
coef(arima_sp500_1)
AIC(arima_sp500_1)

error_sp500_1 <-  residuals(arima_sp500_1)
mean(error_sp500_1)



#Correlación residuos - Energy Industry

residuos_sp500_1 <- Box.test(residuals(arima_sp500_1), type="Ljung-Box") 
residuos_sp500_1


#Jarque Bera Test - Energy Industry

bera_test_sp500_1 <- jarque.bera.test(error_sp500_1)
bera_test_sp500_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

sp500_arima_forecast <-  forecast(arima_sp500_1, h = 50, level=c(99.5))
autoplot(sp500_arima_forecast) +
  autolayer(ts_data_sp500, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor ($)") +
  ggtitle("Predicción SP500 ARIMA(2,1,0)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_sp500_1)

autoplot(forecast(arima_sp500_1))


# ARIMA NASDAQ100 ---------------------------------------------------------


library(ggplot2)
#Estudiar la estacionariedad de la serie
#index_stock_arima <- read_excel("Data/global_index_excel.xlsx")


#La siguiente gráfica se puede ajustar para encoger o aumentar el rango de vista de los datos

nasdaq100_stock_arima_ts <-  ts(index_stock_arima$NASDAQ100,start = 2015, end = 2023, frequency = 300)
ts_plot(nasdaq100_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Valor Índices Bursátiles Mundiales - NASDAQ100 (2015-2023)", 
        slider = FALSE)




#Transformación previa de la serie

log_nasdaq100_stock_arima_ts<-log(nasdaq100_stock_arima_ts)
ts_plot(log_nasdaq100_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Índices Bursátiles Mundiales - NASDAQ100 (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_nasdaq100_stock_arima_ts) 
auto.arima(nasdaq100_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_nasdaq100_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_nasdaq100_stock_arima_ts<-diff(log_nasdaq100_stock_arima_ts)
adf.test(d_log_nasdaq100_stock_arima_ts)



#Correlograma Energy Stock
par(mfrow=c(1,2)) 
FAC_consumer_discretionary <- acf(d_log_nasdaq100_stock_arima_ts, main = "FAC - Consumer Discretionary Industry")# Correlograma FAC
FACP_consumer_discretionary <- pacf(d_log_nasdaq100_stock_arima_ts, main = "FACP - Consumer Discretionary Industry") #Correlograma FACP

#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_nasdaq100 <- ts(log_nasdaq100_stock_arima_ts, start = c(2015,1), frequency = 300)
arima_nasdaq100_1 <- Arima(ts_data_nasdaq100, order = c(0,1,1), seasonal = list(order = c(0,1,1), period = 12))
print(arima_nasdaq100_1)
coeftest(arima_nasdaq100_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_nasdaq100_1)
coef(arima_nasdaq100_1)
AIC(arima_nasdaq100_1)

error_nasdaq100_1 <-  residuals(arima_nasdaq100_1)
mean(error_nasdaq100_1)



#Correlación residuos - Energy Industry

residuos_nasdaq100_1 <- Box.test(residuals(arima_nasdaq100_1), type="Ljung-Box") 
residuos_nasdaq100_1


#Jarque Bera Test - Energy Industry

bera_test_nasdaq100_1 <- jarque.bera.test(error_nasdaq100_1)
bera_test_nasdaq100_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

nasdaq100_arima_forecast <-  forecast(arima_nasdaq100_1, h = 45, level=c(99.5))
autoplot(nasdaq100_arima_forecast) +
  autolayer(ts_data_nasdaq100, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor ($)") +
  ggtitle("Predicción NASDAQ100 ARIMA(0,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_nasdaq100_1)

autoplot(forecast(arima_sp500_1, h= 50))


# ARIMA MOEX RUSSIA -------------------------------------------------------------

moex_stock_arima_ts <-  ts(index_stock_arima$MOEX_RUSSIA,start = 2015, end = 2023, frequency = 300)
ts_plot(moex_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Valor Índices Bursátiles Mundiales - MOEX_RUSSIA (2015-2023)", 
        slider = FALSE)




#Transformación previa de la serie

log_moex_stock_arima_ts<-log(moex_stock_arima_ts)
ts_plot(log_moex_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Índices Bursátiles Mundiales - MOEX_RUSSIA (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_moex_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(moex_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_moex_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_moex_stock_arima_ts<-diff(log_moex_stock_arima_ts)
adf.test(d_log_moex_stock_arima_ts)



#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_moex <- ts(log_moex_stock_arima_ts, start = c(2015,1), frequency = 300)
arima_moex_1 <- Arima(ts_data_moex, order = c(0,1,1), seasonal = list(order = c(0,1,1), period = 12))
print(arima_moex_1)
coeftest(arima_moex_1)



#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_moex_1)
coef(arima_moex_1)
AIC(arima_moex_1)

error_moex_1 <-  residuals(arima_moex_1)
mean(error_moex_1)



#Correlación residuos - Energy Industry

residuos_moex_1 <- Box.test(residuals(arima_moex_1), type="Ljung-Box") 
residuos_moex_1


#Jarque Bera Test - Energy Industry

bera_test_moex_1 <- jarque.bera.test(error_moex_1)
bera_test_moex_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

moex_arima_forecast <-  forecast(arima_moex_1, h = 45, level=c(90))
autoplot(moex_arima_forecast) +
  autolayer(ts_data_moex, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor ($)") +
  ggtitle("Predicción MOEX_RUSSIA ARIMA(0,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_moex_1)


# ARIMA CSI CHINA ---------------------------------------------------------

csi_stock_arima_ts <-  ts(index_stock_arima$CSI_CHINA,start = 2015, end = 2023, frequency = 300)
ts_plot(csi_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ($)", 
        title ="Valor Índices Bursátiles Mundiales - CSI_CHINA (2015-2023)", 
        slider = FALSE)




#Transformación previa de la serie

log_csi_stock_arima_ts<-log(csi_stock_arima_ts)
ts_plot(log_csi_stock_arima_ts, 
        Xtitle = "Fecha",
        Ytitle = "Valor Acciones ", 
        title ="Transformación Logarítmica Índices Bursátiles Mundiales - CSI_CHINA (2015-2023)", 
        slider = FALSE)

#View(log_energy_stock_arima_ts)

#Identificación del modelo
auto.arima(log_csi_stock_arima_ts) #PREGUNTAR LEÓN SI ESTO SE DEBE HACER CON DF NORMAL O LOG
auto.arima(csi_stock_arima_ts)


#DIFERENCIAS Energy Stock
adf.test(log_csi_stock_arima_ts) # p-value <= 0.01 #PREGNUNTAR PABLO, ESTOY REALIZANDO DIFERENCIAS Y NO CAMBIA EL P-VALUE

#Primera diferencia
d_log_csi_stock_arima_ts<-diff(log_csi_stock_arima_ts)
adf.test(d_log_csi_stock_arima_ts)



#FASE DE ESTIMACIÓN

#Analizando la FAC y la FACP
#arima_energy_1<-arima(d_log_energy_stock_arima_ts, order=c(2,3,1)) 
ts_data_csi <- ts(log_csi_stock_arima_ts, start = c(2015,1), frequency = 300)
arima_csi_1 <- Arima(ts_data_csi, order = c(0,1,2), seasonal = list(order = c(0,1,1), period = 12))
print(arima_csi_1)
coeftest(arima_csi_1)




#CONTRASTE DE VALIDEZ DEL MODELO

#Test de coeficiente
coeftest(arima_csi_1)
coef(arima_csi_1)
AIC(arima_csi_1)

error_csi_1 <-  residuals(arima_csi_1)
mean(error_csi_1)



#Correlación residuos - Energy Industry

residuos_csi_1 <- Box.test(residuals(arima_csi_1), type="Ljung-Box") 
residuos_csi_1


#Jarque Bera Test - Energy Industry

bera_test_csi_1 <- jarque.bera.test(error_csi_1)
bera_test_csi_1 



# cargar paquetes necesarios
library(forecast)

# cargar los datos y ajustar el modelo

csi_arima_forecast <-  forecast(arima_csi_1, h = 45, level=c(90))
autoplot(csi_arima_forecast) +
  autolayer(ts_data_csi, series = "Valores reales") +
  xlab("Año") +
  ylab("Valor ($)") +
  ggtitle("Predicción CSI_CHINA ARIMA(0,1,1)") +
  scale_y_continuous(labels = dollar_format(prefix = "$"))

accuracy(arima_csi_1)


# RANDOM FOREST -----------------------------------------------------------

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

colnames(financials_industry_datos_rf)

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



