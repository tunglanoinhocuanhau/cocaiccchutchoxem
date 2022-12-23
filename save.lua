

local  function  savel()
	makefolder("kocmoct")
for i,v in pairs(kocmoc) do
local json = game:GetService("HttpService"):JSONEncode(v )
local qi = i .. ".txt"
       writefile('kocmoct/'..qi,json)	
end

end

local function loadl()

for i,v in pairs(kocmoc) do

	kocmoc[i] = game:GetService("HttpService"):JSONDecode(
       readfile('kocmoct/'.. i .. '.txt')	)	 
	

end
end
repeat task.wait(0.1) until game:IsLoaded()
loadl()
