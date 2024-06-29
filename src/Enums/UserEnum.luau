local CEnum = {}
CEnum.__index = CEnum
CEnum.__tostring = function(self)
	local EnumName: string

	for name: string, enum: Enum in pairs(require(script.Parent)) do
		if enum == self then
			EnumName = name
		end
	end

	return EnumName
end

function CEnum:GetEnumItems()
	local self = table.clone(self)
	
	return self
end

return CEnum