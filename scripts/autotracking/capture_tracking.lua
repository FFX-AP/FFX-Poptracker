-- key = Slot:1:FFX_CAPTURE:54
function updateCaptures(key, value)
    local arena_idx = tonumber(string.match(string.match(string.match(key, ":(.*)"), ":(.*)"), ":(.*)"))
    local fiend = Tracker:FindObjectForCode(AllCaptures[arena_idx])
    
    if fiend ~= nil and value ~= 0 then
        fiend.AcquiredCount = value
        print("ARENA_IDX: " .. arena_idx .. " | QTY: " .. value)    
    end
end