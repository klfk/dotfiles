-- Test Lua file to check if LSP is working
local test_table = {
    hello = "world",
    number = 42
}

function test_function()
    print("Hello from Lua!")
    return test_table.hello
end

-- Try hovering over 'test_function' or 'test_table' to see if LSP works
test_function()