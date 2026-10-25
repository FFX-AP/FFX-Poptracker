function hasOffensiveRecipes()
    local customize_recipes = Tracker:FindObjectForCode("customizerecipessettings").CurrentStage

    if customize_recipes <= 1 then
        return ACCESS_NORMAL
    elseif customize_recipes == 2 then
        if ((Tracker:FindObjectForCode("customizerecipefirststrike").Active and
            Tracker:FindObjectForCode("customizerecipeautohaste").Active and
            Tracker:FindObjectForCode("customizerecipebdl").Active) and
            (Tracker:FindObjectForCode("customizerecipee&c").Active or
            Tracker:FindObjectForCode("customizerecipemagiccounter").Active)) then
            return ACCESS_NORMAL
        end
    end
    return ACCESS_SEQUENCEBREAK
end

function hasDefensiveRecipes()
    local customize_recipes = Tracker:FindObjectForCode("customizerecipessettings").CurrentStage

    if customize_recipes <= 1 then
        return ACCESS_NORMAL
    elseif customize_recipes == 2 then
        if  ((Tracker:FindObjectForCode("customizereciperibbon").Active or
            (Tracker:FindObjectForCode("customizerecipestoneproof").Active and
            Tracker:FindObjectForCode("customizerecipeconfuseproof").Active)) and
            (Tracker:FindObjectForCode("customizerecipeautophoenix").Active or
            (Tracker:FindObjectForCode("customizerecipebhpl").Active and
            Tracker:FindObjectForCode("customizerecipeautopotion").Active)) and
            Tracker:FindObjectForCode("customizerecipeautoprotect").Active and
            Tracker:FindObjectForCode("customizerecipeautoshell").Active) then
            return ACCESS_NORMAL
        end
    end
    return ACCESS_SEQUENCEBREAK
end

function hasLategameRecipes()
    local customize_recipes = Tracker:FindObjectForCode("customizerecipessettings").CurrentStage

    if customize_recipes <= 1 then
        return ACCESS_NORMAL
    elseif customize_recipes == 2 then
        if (hasOffensiveRecipes() == ACCESS_NORMAL and hasDefensiveRecipes() == ACCESS_NORMAL) then
            return ACCESS_NORMAL
        end
    end
    return ACCESS_SEQUENCEBREAK
end