--[[
key 1 -> bq:name:id (job ID counter)
arg 1 -> job id
]]

local jobId = ARGV[1]
if jobId == "" then
  jobId = "" .. redis.call("incr", KEYS[1])
end

return jobId

