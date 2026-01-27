function updateBattleLogic(encounter, value)
    if (encounter == "Zu") then
        Tracker:FindObjectForCode("zuboss").Active = value
        print("LOGIC: ZU = " .. value)
    end
end