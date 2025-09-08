local function req(url)
    return loadstring(game:HttpGet(url))()
end
local items = {
  Disabler = "",
  randomUtils = "https://raw.githubusercontent.com/Player01010111Cheater/AternosBypass/refs/heads/main/utils/randomUtils.lua",
  urls = ""
}

local utils = {}

for name, item in pairs(items) do
    if type(item) == "string" and item:match("^https?://") then
        utils[name] = function(...)
            local f = req(item)
            utils[name] = f
            return f(...)
        end
    else
        utils[name] = item
    end
end

return utils
