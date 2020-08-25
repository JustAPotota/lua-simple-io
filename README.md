# lua-simple-io
Simple Lua I/O Library

# Usage
```lua
local sio = require("sio")

local data = "This is a test"

sio.write("./test.txt", data)

sio.read("./test.txt")
```
