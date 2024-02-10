local component = require("component")
local thread = require("thread")
local modem = component.modem
local tunnel = component.tunnel
if filesystem.exists("/etc/TCS-SF.conf") then
    dofile("/etc/TCS-SF.conf")
else
    local cfg_port=8888
    local cfg_timeout=10
end
modem.open(cfg_port)
function message_processer()
end
local message_processer_thread = tread.create(message_processer)
