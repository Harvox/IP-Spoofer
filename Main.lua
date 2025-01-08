local starterGui = cloneref(game:GetService("StarterGui")) or game:GetService("StarterGui")

getgenv().ipspoof = "Autism" 
if hookmetamethod then 
local x;
x= hookmetamethod(game, "__namecall", newcclosure(function(Self, ...)
local args = {...}
if getnamecallmethod() == "HttpGet" and Self == game then 
if typeof(args[1]) == 'string' and (string.find(string.lower(args[1]), "ip") or string.find(string.lower(args[1]), "v4")) then 
return getgenv().ipspoof
end
end
return x(Self, ...)
end))
starterGui:SetCore("SendNotification", {
    Title = "Harvox's IP Spoofer",
    Text = "Ip Succesfully spoofed to: " .. getgenv().ipspoof
})
else
starterGui:SetCore("SendNotification", {
    Title = "Harvox's IP Spoofer",
    Text = "Exploit not supported!"
})
end 
