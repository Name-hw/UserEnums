# UserEnums
A user-created, autocomplete recreation of Roblox's Enum.

## Features

- If used correctly, you can create and use auto-complete Enums.
- You can create Enums that can be used in multiple scripts.
- It’s almost identical to Enums created by Roblox.

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
