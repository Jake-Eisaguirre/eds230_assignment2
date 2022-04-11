almond_yield <- function(temp, precip, 
                         temp_min_coef_1 = -0.015,
                         temp_min_coef_2 = -0.0046,
                         percip_coeff_1 = -0.07,
                         percip_coeff_2 = 0.0043,
                         intercept = 0.28){
  
  harvest = (temp_min_coeff_1 * temperature) + (temp_min_coeff_2 * temperature^2) +
    (percip_coeff_1 * precipitation) + (percip_coeff_2 * precip^2) + intercept
  
  return(harvest)
  
}

