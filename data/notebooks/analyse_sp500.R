# ============================================
# EXPLORATION DES DONNÉES - S&P 500
# ============================================

# Charger le fichier
data <- read.csv("C:/Users/UTILISATEUR/OneDrive/Documents/dataset/csv/A.csv")

# 1. Dimensions du dataset
dim(data)

# 2. Noms des colonnes
colnames(data)

# 3. Résumé statistique
summary(data)

# 4. Vérifier les valeurs manquantes
colSums(is.na(data))
# ============================================
# VISUALISATION - EVOLUTION DU PRIX
# ============================================

# Convertir la date en format date
data$Date <- as.Date(data$Date, format = "%d-%m-%Y")

# Graphique de l'évolution du prix de clôture
plot(data$Date, data$Close,
     type = "l",
     col = "blue",
     main = "Evolution du prix de clôture - Action A",
     xlab = "Date",
     ylab = "Prix de clôture ($)")
# ============================================
# VISUALISATION - VOLUME DES ÉCHANGES
# ============================================

# Diviser l'écran en 2 graphiques
par(mfrow = c(2, 1))

# Graphique 1 - Prix de clôture
plot(data$Date, data$Close,
     type = "l",
     col = "blue",
     main = "Evolution du prix de clôture - Action A",
     xlab = "Date",
     ylab = "Prix ($)")

# Graphique 2 - Volume
plot(data$Date, data$Volume,
     type = "l",
     col = "red",
     main = "Volume des échanges - Action A",
     xlab = "Date",
     ylab = "Volume")
# ============================================
# SAUVEGARDER LES GRAPHIQUES
# ============================================

# Sauvegarder le graphique
png("C:/Users/UTILISATEUR/OneDrive/Documents/dataset/visualizations.png", 
    width = 800, height = 600)

par(mfrow = c(2, 1))

plot(data$Date, data$Close,
     type = "l",
     col = "blue",
     main = "Evolution du prix de clôture - Action A",
     xlab = "Date",
     ylab = "Prix ($)")

plot(data$Date, data$Volume,
     type = "l",
     col = "red",
     main = "Volume des échanges - Action A",
     xlab = "Date",
     ylab = "Volume")

dev.off()