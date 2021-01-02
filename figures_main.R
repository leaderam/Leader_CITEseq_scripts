# PACKAGES
# Matrix
# matrixStats
# seriation
# scales
# scDissector


#### FIGURES_MAIN.R

#### SET THE LOCATION OF YOUR WORKING DIRECTORY HERE:
wd <- "/users/andrew leader/Downloads/Leader_et_al_scripts/"

### PATH TO WHERE YOU HAVE DOWNLOADED THE scClustering directory (link) --
### The scripts in this directory are required for:
### - implementing the clustering scripts (not required to reproduce the figures from the data provided)
### - running the module analysis in XX figures
scClustering_dir <- "/users/andrew leader/Documents/GitHub/scClustering/"

setwd(wd)
source("download_data.r")
lapply(list.files("figure_scripts",full.names = TRUE),source)

# Download the datasets used in the paper (give it a little time)
#download_data(wd)
#load("/users/andrew leader/Dropbox/PAPER_DATA_REPO/Leader_et_al/lung_ldm.rd")

# Perform CITEseq normalization across batches
source("analysis_scripts/normalize_adt_data.R")

# Figure 1, S1
figure_1cde()

#Figure 2, S2
figure_2ab()
figure_2c_s2c()
figure_2g_s2de()
figure_s2fghi()

#Figure 3, S3
figure_3a()
figure_3b()
figure_s3a()
figure_s3b()
figure_3def_s3i()
figure_3g()

#Figure 4, S4
figure_4ab()
figure_4fg()


#Figure 5, S5
figure_5abcd_s5a()

#Figure 6, S6
# FIGURE_6A-J_S6A-S
# FIGURE_6IL_STU
