# An example code to illustrate table generation using kableExtra package

# Tianchen Qian
# 2020.06.15

library(reshape)
library(kableExtra)
library(knitr)

table <- read.csv("simulation_result.csv")

casted <- cast(table, est + ss ~ beta + measure, value = "value")
casted <- casted[, c(1,2,3,6,7,5,4,8,11,12,10,9)] # re-order columns

# name estimators
casted$est[casted$est == 1] <- "Eff"
casted$est[casted$est == 2] <- "WCLS"
casted$est[casted$est == 3] <- "BRM"
casted$est[casted$est == 4] <- "GEE"

# generate a temporary txt file
sink("table_tmp.txt", append=FALSE)
mycaption <- "caption for simulation"
latex_code <- kable(casted, format = "latex", booktabs = T, align = "c", caption = mycaption) %>%
    add_header_above(c(" ", " ", "beta0" = 5, "beta1" = 5)) %>%
    collapse_rows(columns = 1, latex_hline = "major") %>%
    kable_styling(latex_options = c("scale_down"))
print(latex_code)
sink()

# then run replace_text_table.py to replace certain text in the output table
