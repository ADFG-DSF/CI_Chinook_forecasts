# 2023 Kenai ER PI

# Author: Adam Reimer
# Version: 2025-01-21

# Packages
packs <- c("Packages")
lapply(packs, require, character.only = TRUE)
  
# When the 2023 forecast came out the normal CI RObert was using included 0 so they published the memo wo a PI.
# Tony wanted in on the 2025 memo and asked me to do it on the log scale.
# My recomendation was to leave them as publised but he rejected that.

# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# Read data ---------------------------------------------------------------
forecast_errors <- 
  read.csv("..//..//forecast_error.csv", 
           colClasses = c("integer", "character", "integer", "integer", "integer"))

# Analysis ----------------------------------------------------------------
errors <-
  forecast_errors %>% 
  filter(run == "Kenai early", year %in% (2022 - 4):2022) %>%
  mutate(errors_ln = log(forecast / estimate))


forecast <-   
  forecast_errors %>% 
  filter(run == "Kenai early", year == 2023) %>%
  select(forecast) %>%
  as.numeric()

# rmse 80% bounds
(forecast_CI <- exp(sqrt(mean(errors$errors_ln^2)) * c(qt(.1, 5), qt(.9, 5))) * forecast)
