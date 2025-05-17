# Polyphosphate in yeast vs microalgae_bibliometrics
Data and code repository for the paper titled:

**A Bibliometric Comparison of Polyphosphate Research in Yeasts and Microalgae (2000–2025)**

---

## 📄 General Information

**Title of Dataset:**  
polyP-bibliometric-review

**Brief Dataset Description:**  
This GitHub repository includes bibliographic data, R scripts, and visual outputs associated with a review comparing publication trends in **yeast** and **microalgae** research related to **polyphosphate (polyP)**. The project uses data exported from **Web of Science** and is analyzed using the `bibliometrix` R package.

**Contact Information:**  
Name: Dahbi yassine  
Institution: University Mohammed VI Polytechnic
Email: yassine.dahbi@um6p.ma  
Role: Author 

**Date of Data Collection:**  
All data were downloaded from Web of Science on 24/04/2025.

**Geographic location of data collection:**  
No geographic limits; global dataset based on Web of Science-indexed literature.

---

##  Sharing and Access

**License:**  
This dataset and code are shared under the MIT License. Please see the [LICENSE.md](./LICENSE.md) file.

**Citation:**  
See the [CITATION.md](./CITATION.md) file for how to cite this repository and the associated review paper.

**Publication (forthcoming):**  
Manuscript in preparation for submission to a peer-reviewed journal. Link will be updated upon publication.

---

##  Repository Contents

| File / Folder                | Description                                                                 |
|-----------------------------|-----------------------------------------------------------------------------|
| `data/`                     | Raw Web of Science exports (`yeast_polyP.txt`, `microalgae_polyP.txt`)     |
| `figures/`                  | Output plots (e.g., `Figure_S2_publication_trend.png`)                     |
| `summary_report.txt`        | Bibliometric summary for Table S1                                          |
| `biblio_analysis.R`         | Main R script to load, analyze, and visualize the data                     |
| `README.md`                 | This file                                                                  |
| `LICENSE.md`                | Licensing terms (MIT or CC-BY 4.0)                                          |
| `CITATION.md`               | How to cite this work                                                       |

---

##  Software & R Environment

All analyses were conducted using:

- R (v4.x.x)
- RStudio Desktop (v20xx.x.x)
- R Packages:
  - `bibliometrix`
  - `dplyr`
  - `ggplot2`

---

##  Methodological Information

**Data Collection:**  
Web of Science Core Collection was searched using two queries:

- **Yeasts:**  
  `TS = (polyphosphate OR "poly-P" OR "polyphosphates") AND (yeast OR yeasts)`

- **Microalgae:**  
  `TS = (polyphosphate OR "poly-P" OR "polyphosphates") AND (microalgae OR microalga OR phytoplankton OR microphyte)`

Each query was limited to the years **2000–2025** and exported as **Full Record and Cited References (Plain Text)**.

**Data Analysis Steps (see `biblio_analysis.R`):**
1. Load and convert `.txt` data with `convert2df()`
2. Clean and align datasets
3. Merge and label by organism group
4. Run descriptive `biblioAnalysis()`
5. Plot annual publication trends using `ggplot2`

---

##  Figures & Tables

-  **Figure S2**: Line graph showing the annual number of publications related to polyphosphate for yeasts vs. microalgae (2000–2025).  
  *(Saved as: `figures/Figure_S2_publication_trend.png`)*

-  **Table S1**: Bibliometric summary report (total publications, top authors, keywords, annual growth rate, etc.).  
  *(Saved as: `summary_report.txt`)*

---

##  Dependencies (Optional: Use renv for reproducibility)

To restore the R environment:

```r
install.packages("renv")
library(renv)
renv::restore()
