# carregar pacotes --------------------------------------------------------

require(readxl)
require(ggplot2)
require(tidyverse)

# carregar arquivos -------------------------------------------------------

bd.length <- read_excel("Workbook1.xlsx", col_names = TRUE, sheet = 1)
abund <- read_excel("Workbook1.xlsx", col_names = TRUE, sheet = 2)

riacho1 <- abund[abund$Stream == 1, ]
View(bd.length)
riacho.bar <- 
        
        
riacho2 <- abund[abund$Stream == 2, ]
riacho2.bar <- read_excel("Workbook1.xlsx", col_names = TRUE, sheet = 6)
densidades <- read.table("Rainfall_Ilha_Grande.txt", header = TRUE)
densidades2 <- data.frame(month = rep(densidades$Month, 3), abundance = c(densidades$Rainfall/6, densidades$AbundR1, densidades$AbundR2), lines = c(rep(c("Rainfall", "R1", "R2"), each = 36)))
riachos <- read_excel("streams.xlsx", col_names = TRUE, sheet = 1)
# visualizar arquivos -----------------------------------------------------

str(bd.length)
bd.length$Months <- factor(bd.length$Months, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)
bd.length$Class <- factor(bd.length$Class, levels = c("I.1", "I.2", "II", "III"))
bd.length$Season <- factor(bd.length$Season, levels = c("dry", "rainy"))
bd.length$Year <- factor(bd.length$Year, levels = c("1", "2", "3"))
bd.length$Stream <- factor(bd.length$Stream, levels = c("1", "2"))
bd.length1 <- bd.length[bd.length$Stream == 1, ]
bd.length1$`Body length` <- as.double(bd.length1$`Body length`)
bd.length1$`Body length` <- round(x = bd.length1$`Body length`, digits = 1) 
View(bd.length1)

bd.length2 <- bd.length[bd.length$Stream == 2, ]
bd.length2$`Body length` <- as.double(bd.length2$`Body length`)
bd.length2$`Body length` <- round(x = bd.length2$`Body length`, digits = 1) 
View(bd.length2)

str(bd.length)

str(abund)
abund$Months <- factor(abund$Months, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)
abund$Class <- factor(abund$Class, levels = c("I.1", "I.2", "II", "III"))
abund$Season <- factor(abund$Season, levels = c("dry", "rainy"))
abund$Year <- factor(abund$Year, levels = c("1", "2", "3"))
abund$Stream <- factor(abund$Stream, levels = c("1", "2"))
abund$ind.abund <- abund$Abundance/30
str(abund)

View(riacho1)

names(riacho1)
str(riacho1)
riacho1$`Body length` <- as.double(riacho1$`Body length`["Stream" == 1])
riacho1$`Body length` <- round(x = riacho1$`Body length`, digits = 1)
riacho1$Class <- as.factor(riacho1$Class)
riacho1$Months <- factor(riacho1$Months, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)

View(riacho1.bar)
names(riacho1.bar)
str(riacho1.bar)
riacho1$Class <- as.factor(riacho1$Class)
riacho1$Abundance <- as.integer(riacho1$Abundance)
riacho1$Months <- factor(riacho1$Months, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)

View(riacho2)
names(riacho2)
str(riacho2)
riacho2$`Body length` <- as.double(riacho2$`Body length`)
riacho2$`Body length` <- round(x = riacho2$`Body length`, digits = 1)
riacho2$Months. <- factor(riacho2$Months., levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)

View(riacho2.bar)
names(riacho2.bar)
str(riacho2.bar)
riacho2$Class <- as.factor(riacho2$Class)
riacho2$Months <- factor(riacho2$Months, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)
riacho2$Abundance <- as.integer(riacho2$Abundance)

View(densidades)
names(densidades)
densidades$Month <- factor(densidades$Month, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)
densidades$Rainfall <- as.double(densidades$Rainfall)
densidades$DensityR1 <- as.double(densidades$DensityR1)
densidades$DensityR2 <- as.double(densidades$DensityR2)

View(desnidades2)
names(densidades2)
str(densidades2)
densidades2$month <- factor(densidades$Month, levels = c("Apr-02", "May-02", "Jun-02", "Jul-02", "Aug-02", "Sep-02", "Oct-02", "Nov-02", "Dec-02", "Jan-03", "Feb-03", "Mar-03", "Apr-03", "May-03", "Jun-03", "Jul-03", "Aug-03", "Sep-03", "Oct-03", "Nov-03", "Dec-03", "Jan-04", "Feb-04", "Mar-04", "Apr-04", "May-04", "Jun-04", "Jul-04", "Aug-04", "Sep-04", "Oct-04", "Nov-04", "Dec-04", "Jan-05", "Feb-05", "Mar-05"), exclude = NA)

str(riachos)
riachos$Riacho <- as.factor(riachos$Riacho)

# gráficos tamanho corporal x meses ---------------------------------------

# riacho 1

tiff(filename = "fig4.tiff", width = 139, height = 139, units = "mm", res = 300)
par(mfrow = c(2, 1))
ggplot(data = bd.length1, mapping = aes(x = Months, y = `Body length`)) + geom_point(data = bd.length1, aes(shape = Class, color = Class), na.rm = TRUE) + scale_y_continuous(name = "Body length (mm)", limits = c(0, 18), breaks = c(0:18)) + scale_x_discrete(name = "Months") + scale_colour_grey() + theme_bw() +  theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

dev.off()

# riacho 2

tiff(filename = "fig5.tiff", width = 139, height = 139, units = "mm", res = 300)

ggplot(data = bd.length2, mapping = aes(x = Months, y = `Body length`)) + geom_point(data = bd.length2, aes(shape = Class, color = Class), na.rm = TRUE) + scale_y_continuous(name = "Body length (mm)", limits = c(0, 18), breaks = c(0:18)) + scale_x_discrete(name = "Months") + scale_colour_grey() + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90)) 

dev.off()

# gráficos abundância por classe x meses ----------------------------------

# riacho 1 - barras superpostas

tiff(filename = "Bars_R1.tiff", width = 6, height = 6, units = "in", res = 300)

ggplot(data = riacho1) + geom_bar(mapping = aes(x = Months, y = Abundance, fill = Class), position = "identity", stat = "identity") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 80), breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80)) + scale_x_discrete(name = "Months") + scale_fill_manual("Class", values = c("I.1" = "red", "I.2" = "black", "II" = "light gray", "III" = "dark gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

dev.off()

# riacho 1 - barras lado a lado

ggplot(data = riacho1.bar) + geom_bar(mapping = aes(x = Months, y = Abundance, fill = Class), position = "dodge", stat = "identity") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 80), breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80)) + scale_x_discrete(name = "Months") + scale_fill_manual("Class", values = c("I" = "black", "II" = "light gray", "III" = "dark gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

# riacho 1 - barras em diferentes gráficos

tiff(filename = "fig2.tiff", width = 139, height = 139, units = "mm", res = 300)

ggplot(data = riacho1) + geom_bar(mapping = aes(x = Months, y = Abundance), position = "dodge", stat = "identity") + facet_wrap(~ Class, nrow = 2) + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 80), breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80)) + scale_x_discrete(name = "Months") + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

dev.off()

# riacho 2 - barras superpostas

tiff(filename = "Bars_R2.tiff", width = 6, height = 6, units = "in", res = 300)

ggplot(data = riacho2) + geom_bar(mapping = aes(x = Months, y = Abundance, fill = Class), position = "identity", stat = "identity") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 20), breaks = c(0, 5, 10, 15, 20)) + scale_x_discrete(name = "Months") + scale_fill_manual("Class", values = c("I.1" = "red", "I.2" = "black", "II" = "light gray", "III" = "dark gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

dev.off()

# riacho 2 - barras lado a lado

ggplot(data = riacho2.bar) + geom_bar(mapping = aes(x = Months, y = Abundance, fill = Class), na.rm = TRUE, position = "dodge", stat = "identity") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 20), breaks = c(0, 5, 10, 15, 20)) + scale_x_discrete(name = "Months") + scale_fill_manual("Class", values = c("I" = "black", "II" = "light gray", "III" = "dark gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

# riacho 2 - barras em diferentes gráficos

tiff(filename = "Fig3.tiff", width = 139, height = 139, units = "mm", res = 300)

ggplot(data = riacho2) + geom_bar(mapping = aes(x = Months, y = Abundance), position = "dodge", stat = "identity") + facet_wrap(~ Class) + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 20), breaks = c(0, 5, 10, 15, 20)) + scale_x_discrete(name = "Months") + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90))

dev.off()


# grafico densidade x pluviosidade --------------------
names(densidades)

tiff(filename = "fig1.tiff", width = 139, height = 139, units = "mm", res = 300)

ggplot(data = densidades) + geom_point(mapping = aes(x = Month, y = AbundR1), shape = 1) + geom_smooth(mapping = aes(x = tempo, y = AbundR1), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = AbundR2), shape = 2) + geom_smooth(mapping = aes(x = tempo, y = AbundR2), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = Rainfall/6), shape = 7) + geom_line(data = densidades2, mapping = aes(x = month, y = abundance, color = lines, group = lines), linetype = 2) + scale_y_continuous(name = "Number of tadpoles", sec.axis = sec_axis(~. * 6, name = bquote("Rainfall" ~ (mm)), breaks = c(0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500))) + scale_x_discrete(name = "Months") + scale_color_manual("lines", values = c("R1" = "black", "R2" = "dark gray", "Rainfall" = "light gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90)) + guides(color = FALSE)

dev.off()

# grafico abundancia x pluviosidade * classes --------------------
names(riacho1)
names(densidades2)

ggplot(data = riacho1) + geom_line(mapping = aes(x = Rainfall, y = Abundance, group = Class, col = Class)) + geom_point(mapping = aes(x = Rainfall, y = Abundance, shape = Class, col = Class)) + geom_point(mapping = aes(x = Months, y = Rainfall/148), shape = 7) + geom_line(data = densidades2, mapping = aes(x = month, y = abundance, color = lines, group = lines)) + scale_y_continuous(name = "Density (ind/m of stream)", limits = c(0, 3.5), breaks = c(0, 0.5, 1.0, 1.5, 2.0, 2.5, 3.0, 3.5), sec.axis = sec_axis(~. * 148, name = bquote("Rainfall" ~ (mm^2)), breaks = c(0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500))) + scale_x_discrete(name = "Months") + scale_color_manual("lines", values = c("R1" = "black", "R2" = "dark gray", "Rainfall" = "light gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90)) + guides(color = FALSE)

dev.off()

# gráfico abundancia x pluviosidade
# riacho 1
par(mfrow = c(2, 1))
plot(riacho1$Rainfall, riacho1$Abundance, xlab = "Rainfall (mm)", ylab = "Number of tadpoles", main = "Stream 1", bty = "L")
abline(glm.stream1)

#riacho 2
plot(riacho2$Rainfall, riacho2$Abundance, xlab = "Rainfall (mm)", ylab = "Number of tadpoles", main = "Stream 2", bty = "L")
abline(glm.stream2)

tempo <- 1:36
tempo.r1 <- glm(abundR1 ~ tempo)
summary(tempo.r1)
plot(y = abundR1, x = tempo)
abline(tempo.r1)
plot(tempo.r1)
resid.r1 <- resid(tempo.r1)
chuva.r1 <- glm(resid.r1 ~ chuva)
plot(chuva.r1)
plot(y = resid.r1, x = tempo, type = "line")
abline(chuva.r1)

tempo.r2 <- glm(abundR2 ~ tempo)
summary(tempo.r2)
plot(tempo.r2)
plot(y = abundR2, x = tempo, type = "line")
abline(tempo.r2)
resid.r2 <- resid(tempo.r2)
chuva.r2 <- glm(resid.r2 ~ chuva)
plot(chuva.r2)
plot(y = resid.r2, x = tempo, type = "line")
abline(chuva.r2)


# ANOVA profundidade e temperatura ----------------------------------

names(riachos)
profundidade <- aov(`prof media` ~ Riacho, data = riachos)
summary(profundidade)
plot(profundidade)
kruskal.test(`prof media` ~ Riacho, data = riachos)

temperatura <- aov(`temp media` ~ Riacho, data = riachos)
summary(temperatura)
plot(temperatura)
kruskal.test(`temp media` ~ Riacho, data = riachos)
``
# rm(list = ls())
