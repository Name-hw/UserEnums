local CEnumItem = {}
CEnumItem.__index = CEnumItem
CEnumItem.__tostring = function(self)
	return "Enum." .. tostring(self.EnumType) .. "." .. self.Name
end

return CEnumItem