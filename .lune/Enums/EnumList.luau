local UserEnums_Class = require("UserEnums")
local UserEnum_Class = require("UserEnum")
local UserEnumItem_Class = require("UserEnumItem")

type UserEnums = UserEnums_Class.UserEnums
type UserEnum = UserEnum_Class.UserEnum
type UserEnumItem = UserEnumItem_Class.UserEnumItem

local EnumList = {
	--Please write the Enum you want to add here.

	TestEnum = {
		TestEnumItem1 = {} :: UserEnumItem,
		TestEnumItem2 = {} :: UserEnumItem,
	},
	TestEnum2 = {
		one = {} :: UserEnumItem,
		two = {} :: UserEnumItem,
	},
}

return EnumList
