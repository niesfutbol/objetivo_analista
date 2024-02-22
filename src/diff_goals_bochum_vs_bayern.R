diff_gol <- rpois(2000, 2.65) - rpois(2000, 1.64)
xp_Bayer <- mean(diff_gol > 0)*3 + mean(diff_gol == 0)
xp_Bochum <- mean(diff_gol < 0)*3 + mean(diff_gol == 0)

xg_bochum_nies <- 1.9446820000000002
xg_bayer_nies <- 2.471421