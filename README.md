# UserEnums
A user-created, autocomplete recreation of Roblox's Enum.

## How to use

- First, write the type of Enum you want to create in Types.
- Second, write EnumList in the EnumList module script under Enums.
- Third, require Enums along with Types in the script you want to use.

Example) When you want to create Enums called Enum.TestEnum.TestEnumItem1 and Enum.TestEnum.TestEnumItem2

Types:
```
TestEnum: {TestEnumItem1: EnumItem, TestEnumItem2: EnumItem}
```

EnumList:
```
TestEnum = {"TestEnumItem1", "TestEnumItem2"}
```

Script:
```
local Types = require((Location of Types))
local Enums: Types.UserEnums = require(Location of Enums)
```
