--!strict
local UserEnums_Class = require("UserEnums")
local UserEnum_Class = require("UserEnum")
local UserEnumItem_Class = require("UserEnumItem")
local EnumList = require("EnumList")
local Types = require("Types")

assert(EnumList, "Please write a module script for 'EnumList'")

export type UserEnums = Types.UserEnums
export type UserEnum = Types.UserEnum
export type UserEnumItem = Types.UserEnumItem

local Enums, Enums_Metatable = UserEnums_Class.new()

for enumName: string, enumItemNames in pairs(EnumList :: any) do
	local newUserEnum: UserEnum, newUserEnum_Metatable: Types.UserEnum_Metatable = UserEnum_Class.new(Enums_Metatable)
	local order = 0

	for name: string, _ in pairs(enumItemNames :: any) do
		local newUserEnumItem: UserEnumItem, newUserEnumItem_Metatable = UserEnumItem_Class.new()

		rawset(newUserEnumItem_Metatable :: any, "Name", name)
		rawset(newUserEnumItem_Metatable :: any, "Value", order)
		rawset(newUserEnumItem_Metatable :: any, "EnumType", newUserEnum)

		rawset(newUserEnum_Metatable, name, newUserEnumItem)

		order += 1
	end

	rawset(Enums_Metatable, enumName, newUserEnum)
end

return Enums :: UserEnums & typeof(EnumList)
