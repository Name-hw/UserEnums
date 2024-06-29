--!strict
local Types = {}

export type UserEnums = {
	GetEnums: (self: UserEnums) -> {[string]: Enum},
	
	--Please write the Enum Type you want to add here.
	TestEnum: {TestEnumItem1: EnumItem, TestEnumItem2: EnumItem},
	TestEnum2: {one: EnumItem, two: Vector3},
}

return Types