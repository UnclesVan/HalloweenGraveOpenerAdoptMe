local Fsys = require(game.ReplicatedStorage:WaitForChild("Fsys")).load
--DEHASH REMOTES
local function rename(remotename, hashedremote)
    hashedremote.Name = remotename
end
table.foreach(getupvalue(Fsys("RouterClient").init, 4), rename)

for i = 1, 18 do
    local args = { [1] = i }
    game:GetService("ReplicatedStorage").API:FindFirstChild("HalloweenAPI/PushGravestone"):InvokeServer(unpack(args))
    wait(0.25)
end
