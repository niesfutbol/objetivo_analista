library(tidyverse)

laliga <- read_csv("tests/data/league_140_2023.csv", show_col_types = FALSE)

get_away_xP <- function(league, id_team) {
  league |> filter(away_id == id_team) %>% .$away_xPoints
}

get_home_xP <- function(league, id_team) {
  league |> filter(home_id == id_team) %>% .$home_xPoints
}

barcelona_id <- 529
home_xP <- laliga |> get_home_xP(id_team = barcelona_id)
away_xP <- laliga |> get_away_xP(id_team = barcelona_id)
xpoint_barca <- c(home_xP, away_xP)

real_madrid_id <- 541
home_xP <- laliga |> get_home_xP(id_team = real_madrid_id)
away_xP <- laliga |> get_away_xP(id_team = real_madrid_id)
xpoint_real_madrid <- c(home_xP, away_xP)



real_madrid <- to_vec(for(i in 1:2000) mean(sample(xpoint_real_madrid, replace = TRUE)))
barca <- to_vec(for(i in 1:2000) mean(sample(xpoint_barca, replace = TRUE)))

mean(barca - real_madrid > 0 )