PROTOCOL = "ZTMP" -- Zwixxel Turtle Mining Protocol
HOSTNAME = "Miner["..os.getComputerID().."]"
NETSIDE  = "right"
SERVER   = "MiningServer"
print("Press and hold CTRL + T to terminate.\n")

function online()
   print("Registering ",HOSTNAME," on Zwixxel Turtle Mining Protocol")
   rednet.open(NETSIDE)
   rednet.host(PROTOCOL,HOSTNAME)
end

function offline()
    rednet.unhost(PROTOCOL,HOSTNAME)
    rednet.close(NETSIDE)
end

function locateServer()
    local serverID
    serverID = rednet.lookup(PROTOCOL,SERVER)
    return serverID
end

function operate(serverFilter)
    
end

function main()
    local serverID = -1
    online()
    serverID = locateServer()
    print("Returned ",serverID)
    offline()
end



main()


-- Register on the mining network
-- while true do
--   local event,id,msg = os.pullEvent("rednet_message")


