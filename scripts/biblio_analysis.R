# Load packages
install.packages("bibliometrix")
install.packages("dplyr")
install.packages("ggplot2")

library(bibliometrix)
library(dplyr)
library(ggplot2)

# Set working directory 
setwd("C:/Users/YourName/Documents/polyP-bibliometric-review/data")

# Load Web of Science data
yeast_data <- convert2df("yeast_polyP.txt", dbsource = "wos", format = "plaintext")
microalgae_data <- convert2df("microalgae_polyP.txt", dbsource = "wos", format = "plaintext")

# Align column names
common_cols <- intersect(colnames(yeast_data), colnames(microalgae_data))
yeast_data <- yeast_data[, common_cols]
microalgae_data <- microalgae_data[, common_cols]

# Tag each dataset
yeast_data$Organism <- "Yeast"
microalgae_data$Organism <- "Microalgae"

# Combine
combined_data <- rbind(yeast_data, microalgae_data)

# Summary for Table S1
biblio_summary <- biblioAnalysis(combined_data)
capture.output(summary(biblio_summary), file = "../summary_report.txt")

# Plot for Figure S2
combined_data %>%
  group_by(PY, Organism) %>%
  summarise(Publications = n(), .groups = "drop") %>%
  ggplot(aes(x = PY, y = Publications, color = Organism)) +
  geom_line(linewidth = 1.2) +
  labs(title = "Polyphosphate Research: Yeasts vs. Microalgae (2000–2025)",
       x = "Year", y = "Number of Publications") +
  theme_minimal()

# Save plot
ggsave("../figures/Figure_S2_publication_trend.png", width = 8, height = 5, dpi = 300)

