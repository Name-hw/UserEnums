# UserEnums

A user-created, autocomplete recreation of Roblox's Enum.

## Features

- Auto-complete Enums.
- You can create Enums that can be used in multiple scripts.
- Almost identical to Enums created by Roblox.
- Also available on Lune.

## How to use

- First, write EnumList in the EnumList module script under Enums.
- Second, require Enums in the script you want to use.

### Example

When you want to create Enums called Enum.TestEnum.TestEnumItem1 and Enum.TestEnum.TestEnumItem2

Enums.EnumList:

```luau
TestEnum = {
 TestEnumItem1 = {} :: UserEnumItem,
 TestEnumItem2 = {} :: UserEnumItem,
}
```

Script:

```luau
local Enums = require(Location of Enums)
```
