local UserEnums = {}
UserEnums.__index = function(self, index)
	if index == "GetEnums" then
		return UserEnums.GetEnums
	elseif typeof(index) == "string" then
		warn(index .. " is not a valid member of " .. "UserEnums")
		return nil
	else
		return rawget(self, tostring(index))
	end
end
UserEnums.__tostring = function(self)
	return "UserEnums"
end

function UserEnums:GetEnums()
	local self = table.clone(self)

	return self
end


return UserEnums