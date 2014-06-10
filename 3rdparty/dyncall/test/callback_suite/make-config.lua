require "config"

function fromConfig()
  local defs = {
    MAXARGS = maxargs,
    NSIGS   = nsigs,
    API     = api
  }
  return defs
end

function fromDesignFile()
  local defs = { 
    MAXARGS = maxargs,
    NSIGS   = 5,
    API     = api
  }
  return defs
end

local defs 

if mode == "designed" then
  defs = fromDesignFile()
else
  defs = fromConfig()
end

for k,v in pairs(defs) do
  io.write("#define CONFIG_" .. k .. " " .. v .. "\n" )
end
io.flush()

