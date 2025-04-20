
local input
local actions = require("src.actions")



while true do
    print("--------------------------------------")
    print("1. Check all tasks")
    print("2. Add task")
    print("3. Exit")
    io.write("> ")
    input = io.read()

    local action = actions[input]
    if action then
        action()
    else
        print("Bad Input")
    end
    
end