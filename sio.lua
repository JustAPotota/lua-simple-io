-- Simple I/O

--[[
MIT License

Copyright (c) 2020 JustAPotota

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

local M = {}

-- Change read format based on the version
-- "*a" for 5.2 and below, "a" for 5.3 and above
local read_format = "a"
if _VERSION:sub(-3) < "5.3" then
  read_format = "*a"
end

function M.read(filename)
  local file = assert(io.open(filename, "rb"))
  local data = file:read(read_format)
  file:close()
  return data
end

function M.write(filename, data)
  local file = assert(io.open(filename, "wb"))
  assert(file:write(data))
  file:close()
end

return M
