local Root = script.Parent.Parent
local Types = require(Root.Types)

local EnumList: Types.UserEnums = {
	--Please write the Enum you want to add here.
	TestEnum = {"TestEnumItem1", "TestEnumItem2"},
	TestEnum2 = {"one", "two"},
}

return EnumList