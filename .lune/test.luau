local Enums = require("Enums/init.luau")

--Indices
print(tostring(Enums)) -- UserEnums
print(tostring(Enums.TestEnum)) -- TestEnum
print(tostring(Enums.TestEnum.TestEnumItem1)) -- Enum.TestEnum.TestEnumItem1
print(tostring(Enums.TestEnum.TestEnumItem1.Value), tostring(Enums.TestEnum.TestEnumItem1.Name), tostring(Enums.TestEnum.TestEnumItem1.EnumType)) -- 0 TestEnumItem1 TestEnum
print(tostring(Enums.TestEnum.TestEnumItem2.Value), tostring(Enums.TestEnum.TestEnumItem2.Name), tostring(Enums.TestEnum.TestEnumItem2.EnumType)) -- 1 TestEnumItem2 TestEnum

--Methods
for i, v in Enums.TestEnum:GetEnumItems() do
	print(tostring(i), tostring(v)) -- 1 Enum.TestEnum.TestEnumItem1, 2 Enum.TestEnum.TestEnumItem2
end

for i, v in pairs(Enums:GetEnums()) do
	print(tostring(i), tostring(v)) -- 1 TestEnum, 2 TestEnum2
end

--Error, etc
print(getmetatable(Enums)) -- The metatable is locked
print(Enums.sdf) -- error, sdf is not a valid member of "Enums"
