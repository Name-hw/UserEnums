# UserEnums

A user-created, autocomplete recreation of Roblox's Enum.

## Features

1. Auto-complete Enums.
2. You can create Enums that can be used in multiple scripts.
3. Almost identical to Enums created by Roblox.
4. Also available on Lune.

## How to use

- First, write EnumList in the EnumList module script under Enums.
- Second, require Enums in the script you want to use.

### Example

When you want to create Enums called Enum.TestEnum.TestEnumItem1 and Enum.TestEnum.TestEnumItem2

Enums.EnumList:

```luau
local EnumList = {
    TestEnum = {
        TestEnumItem1 = {},
        TestEnumItem2 = {},
    }
}
```

Script:

```luau
local Enums = require(Location of Enums)
```
