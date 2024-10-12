local Types = require("Types")

type UserEnums = Types.UserEnums
type UserEnum = Types.UserEnum
type UserEnumItem = Types.UserEnumItem

local EnumList = {
	--Please write the Enum you want to add here.

	TestEnum = {
		TestEnumItem1 = {},
		TestEnumItem2 = {},
	},
	TestEnum2 = {
		one = {},
		two = {},
	},
}

return EnumList
