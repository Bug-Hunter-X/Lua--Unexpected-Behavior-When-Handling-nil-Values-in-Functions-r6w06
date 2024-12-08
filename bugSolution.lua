local function foo(a)
  if a == nil then
    return nil  -- Correct handling of nil
  end
  return a + 1
end

local function bar(a)
  if a == nil then
    return nil  -- Corrected to return nil
  --Alternatively, you could handle it differently
  --error("Input cannot be nil")
  end
  return a + 1
end

local result = foo(nil)
print(result)  -- Output: nil

result = foo(5)
print(result)  -- Output: 6

result = bar(nil)
print(result)  -- Output: nil

result = bar(5)
print(result)  -- Output: 6