local json = require("scripts/libraries/dkjson")

function updateCaptures(value)
    local captures_table, i, err = json.decode(value)

    if captures_table then
        print("PARSE SUCCESS")
        print(captures_table.captures[1].arena_idx)
    else
        print("PARSE FAILED")
    end

end

-- Incoming json format --
-- {
--   "captures": [
--     {
--       "arena_idx": 13,
--       "captured": 5
--     },
--     {
--       "arena_idx": 33,
--       "captured": 5
--     },
--     {
--       "arena_idx": 4,
--       "captured": 2
--     },
--     {
--       "arena_idx": 19,
--       "captured": 1
--     },
--     {
--       "arena_idx": 55,
--       "captured": 1
--     },
--     {
--       "arena_idx": 57,
--       "captured": 1
--     }
--   ]
-- }