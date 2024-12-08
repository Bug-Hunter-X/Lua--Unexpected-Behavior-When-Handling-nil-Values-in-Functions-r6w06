local function foo(a)
  if a == nil then
    return nil  -- Correct handling of nil
  end
  return a + 1
end

local result = foo(nil)
print(result)  -- Output: nil

result = foo(5)
print(result)  -- Output: 6

-- The bug:
local function bar(a)
  if a == nil then
    return 0  -- Incorrect handling of nil; should return nil or handle appropriately
  end
  return a + 1
end

result = bar(nil)
print(result)  -- Output: 0 (Incorrect behavior)

result = bar(5)
print(result)  -- Output: 6