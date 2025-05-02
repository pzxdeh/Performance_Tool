function V_max = calc_Vmax(T_Amax, W, CD0, K, rho, S)
    % Inputs:
    % T_Amax = Maximum available thrust (N)
    % W      = Aircraft weight (N)
    % CD0    = Zero-lift drag coefficient
    % K      = Induced drag factor
    % rho    = Air density (kg/m^3)
    % S      = Wing reference area (m^2)
  
    % Returns:
    % V_max  = Maximum velocity (m/s)

    % Calculate terms of the Vmax equation
    
    term1 = T_Amax;
    term2 = sqrt(T_Amax^2 - (4 * K * W^2 * CD0));
    
    % Calculate V_max
    V_max = sqrt((term1 + term2) / (rho * S * CD0));
end
