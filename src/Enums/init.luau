local Root = script.Parent
local Types = require(Root.Types)
local UserEnums = require(script.UserEnums)

local Enums: Types.UserEnums = setmetatable(require(script.EnumList), UserEnums)

local UserEnum: Enum = require(script.UserEnum)
local UserEnumItem: EnumItem = require(script.UserEnumItem)

for enumName: string, enumItemNames: {string} in pairs(Enums) do
	local newUserEnum: Enum = setmetatable({}, UserEnum)

	for order, name in ipairs(enumItemNames) do
		local newUserEnumItem: EnumItem = setmetatable({Name = name, Value = order - 1, EnumType = newUserEnum}, UserEnumItem)

		newUserEnum[name] = newUserEnumItem
	end

	Enums[enumName] = newUserEnum
end

return Enums