# UserEnums
A user-created, autocomplete recreation of Roblox's Enum.

## Features

- You can use auto-complete Enums.
- You can create Enums that can be used in multiple scripts.
- It’s almost identical to Enums created by Roblox.

## How to use

- First, write EnumList in the EnumList module script under Enums.
- Second, require Enums in the script you want to use.

### Example 

When you want to create Enums called Enum.TestEnum.TestEnumItem1 and Enum.TestEnum.TestEnumItem2

Enums.EnumList:
```
TestEnum = {
	TestEnumItem1 = {} :: UserEnumItem,
	TestEnumItem2 = {} :: UserEnumItem,
}
```

Script:
```
local Enums = require(Location of Enums)
```
