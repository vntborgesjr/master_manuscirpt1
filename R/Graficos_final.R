
# Amphibia-Reptilia -----------------------------------

# Figure 1 --------------------------------------------

tiff(filename = "fig1.tiff", width = 139, height = 139, units = "mm", res = 600)

ggplot(data = densidades) + geom_point(mapping = aes(x = Month, y = AbundR1), shape = 1) + geom_smooth(mapping = aes(x = tempo, y = AbundR1), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = AbundR2), shape = 2) + geom_smooth(mapping = aes(x = tempo, y = AbundR2), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = Rainfall/6), shape = 7) + geom_line(data = densidades2, mapping = aes(x = month, y = abundance, color = lines, group = lines), linetype = 2) + scale_y_continuous(name = "Number of tadpoles", sec.axis = sec_axis(~. * 6, name = bquote("Rainfall" ~ (mm)), breaks = c(0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500))) + scale_x_discrete(name = "Months") + scale_color_manual("lines", values = c("R1" = "black", "R2" = "dark gray", "Rainfall" = "light gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), , axis.title = element_text(size = 9, family = "Arial"), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial")) + guides(color = FALSE)

dev.off()


# Figure 2 - count of tadpoles per month - facet class + stream --------

tiff(filename = "fig2.tiff", width = 139, height = 139, units = "mm", res = 600)
class(abund$Stream)
ggplot(data = abund) + geom_bar(mapping = aes(x = Months, y = Abundance), position = "dodge", stat = "identity") + facet_wrap(~ Class + Stream, nrow = 4, scales = "free_y") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 80), breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80)) + scale_x_discrete(name = "Months") + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_rect(), axis.line = element_line(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.title = element_text(size = 9, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial"), strip.text = element_blank())

dev.off()


# Figure 3 - body length per class per month - --------

tiff(filename = "fig3.tiff", width = 139, height = 139, units = "mm", res = 600)

ggplot(data = bd.length, mapping = aes(x = Months, y = `Body length`)) + geom_point(data = bd.length, aes(shape = Class, color = Class), na.rm = TRUE) + facet_wrap(~ Stream, nrow = 2, scales = "free_y") + scale_y_continuous(name = "Body length (mm)", limits = c(0, 18), breaks = c(0:18)) + scale_x_discrete(name = "Months") + scale_colour_grey() + theme_bw() + theme(panel.border = element_rect(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line.x = element_line(linetype = 1), axis.line.y = element_line(), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.title = element_text(size = 9, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial"), strip.background = element_blank(), strip.text = element_blank(), axis.title.y.right = element_text(size = 7, family = "Arial"), legend.title = element_text(size = 9, family = "Arial"), legend.text = element_text(size = 9, family = "Arial")) 

dev.off()


# Herpetology Notes -----------------------------------

# Figure 1 --------------------------------------------

tiff(filename = "fig1.tiff", width = 200, height = 100, units = "mm", res = 600)

ggplot(data = densidades) + geom_point(mapping = aes(x = Month, y = AbundR1), shape = 1) + geom_smooth(mapping = aes(x = tempo, y = AbundR1), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = AbundR2), shape = 2) + geom_smooth(mapping = aes(x = tempo, y = AbundR2), method = "lm", se = FALSE, colour = "black", linetype = 1) + geom_point(mapping = aes(x = Month, y = Rainfall/6), shape = 7) + geom_line(data = densidades2, mapping = aes(x = month, y = abundance, color = lines, group = lines), linetype = 2) + scale_y_continuous(name = "Number of tadpoles", sec.axis = sec_axis(~. * 6, name = bquote("Rainfall" ~ (mm)), breaks = c(0, 50, 100, 150, 200, 250, 300, 350, 400, 450, 500))) + scale_x_discrete(name = "Months") + scale_color_manual("lines", values = c("R1" = "black", "R2" = "dark gray", "Rainfall" = "light gray")) + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_blank(), axis.line.x = element_line(), axis.line.y = element_line(), , axis.title = element_text(size = 9, family = "Arial"), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial")) + guides(color = FALSE)

dev.off()


# Figure 2 - count of tadpoles per month - facet class + stream --------
# fazer ua para cada riacho
tiff(filename = "fig2.tiff", width = 200, height = 100, units = "mm", res = 600)
class(abund$Stream)
ggplot(data = abund) + geom_bar(mapping = aes(x = Months, y = Abundance), position = "dodge", stat = "identity") + facet_wrap(~ Class + Stream, nrow = 4, scales = "free_y") + scale_y_continuous(name = "Count of tadpoles", limits = c(0, 80), breaks = c(0, 10, 20, 30, 40, 50, 60, 70, 80)) + scale_x_discrete(name = "Months") + theme_bw() + theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.border = element_rect(), axis.line = element_line(), axis.line.x = element_line(), axis.line.y = element_line(), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.title = element_text(size = 9, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial"), strip.text = element_blank())

dev.off()


# Figure 3 - body length per class per month - --------

tiff(filename = "fig3.tiff", width = 200, height = 100, units = "mm", res = 600)

ggplot(data = bd.length, mapping = aes(x = Months, y = `Body length`)) + geom_point(data = bd.length, aes(shape = Class, color = Class), na.rm = TRUE) + facet_wrap(~ Stream, nrow = 2, scales = "free_y") + scale_y_continuous(name = "Body length (mm)", limits = c(0, 18), breaks = c(0:18)) + scale_x_discrete(name = "Months") + scale_colour_grey() + theme_bw() + theme(panel.border = element_rect(), panel.grid.major = element_blank(), panel.grid.minor = element_blank(), axis.line.x = element_line(linetype = 1), axis.line.y = element_line(), axis.text.x = element_text(angle = 90, size = 7, family = "Arial"), axis.title = element_text(size = 9, family = "Arial"), axis.text.y = element_text(size = 7, family = "Arial"), strip.background = element_blank(), strip.text = element_blank(), axis.title.y.right = element_text(size = 7, family = "Arial"), legend.title = element_text(size = 9, family = "Arial"), legend.text = element_text(size = 9, family = "Arial")) 

dev.off()


