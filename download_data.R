
#### DOWNLOAD_DATA.R

download_data <- function(wd){ 

#### Then run the following lines:

message("Downloading Mt. Sinai lung cancer CITEseq dataset")

if(!dir.exists(wd)){
  dir.create(wd)
}
if(!dir.exists(file.path(wd,"data"))){
  dir.create(file.path(wd,"data"))
}


if(!file.exists(file.path(wd,"data/lung_ldm.rd"))){
data_url <- "https://www.dropbox.com/s/vjbide8ro5iwrfh/lung_ldm.rd?dl=1"
if(Sys.info()["sysname"]=="Windows"){
  download.file(url = data_url,destfile = file.path(wd,"data/lung_ldm.rd"),mode="wb")
}else{
  download.file(url = data_url,destfile = file.path(wd,"data/lung_ldm.rd"))
}
download_check <- try(load(file.path(wd,"data/lung_ldm.rd")))
if(download_check!="lung_ldm"){stop("Error using download.file(), due to operating system?-- please manually download dataset from https://www.dropbox.com/s/vjbide8ro5iwrfh/lung_ldm.rd?dl=1 and place in [working directory]/data/ and remove this chunk of code")}
}
# zilionis projection
  message("Downloading projection of Zilionis et al. public dataset")
  
  if(!file.exists(file.path(wd,"data/lambrechts_ldm_200519.rd"))){
    data_url <- "https://www.dropbox.com/s/puv3ds5b9ty0rn4/zilionis_ldm.rd?dl=1"
    if(Sys.info()["sysname"]=="Windows"){
      download.file(url = data_url,destfile = file.path(wd,"data/zilionis_ldm.rd"),mode="wb")
    }else{
      download.file(url = data_url,destfile = file.path(wd,"data/zilionis_ldm.rd"))
    }
    download_check <- try(load(file.path(wd,"data/zilionis_ldm.rd")))
    if(download_check!="lung_ldm_zili"){stop("Error using download.file(), due to operating system?-- please manually download dataset from https://www.dropbox.com/s/puv3ds5b9ty0rn4/zilionis_ldm.rd?dl=1 and place in [working directory]/data/ and remove this chunk of code")}
  }
  
  
# Lambrechts projection
  message("Downloading projection of Lambrechts et al. public dataset")
  
  if(!file.exists(file.path(wd,"data/lambrechts_ldm_200519.rd"))){
    data_url <- "https://www.dropbox.com/s/7ksics3xe4igsu8/lambrechts_ldm_200519.rd?dl=1"
    if(Sys.info()["sysname"]=="Windows"){
      download.file(url = data_url,destfile = file.path(wd,"data/lambrechts_ldm_200519.rd"),mode="wb")
    }else{
      download.file(url = data_url,destfile = file.path(wd,"data/lambrechts_ldm_200519.rd"))
    }
    download_check <- try(load(file.path(wd,"data/lambrechts_ldm_200519.rd")))
    if(download_check!="lambrechts_ldm"){stop("Error using download.file(), due to operating system?-- please manually download dataset from https://www.dropbox.com/s/7ksics3xe4igsu8/lambrechts_ldm_200519.rd?dl=1 and place in [working directory]/data/ and remove this chunk of code")}
  }
  
  
# TCR and 5' data
# TCGA analysis data

}