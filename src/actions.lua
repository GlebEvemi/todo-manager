local tasks = require("data.tasks")

actions = {
    ["1"] = function()
        for i, task in ipairs(tasks) do
            print("Task number: " .. i)
            print("Text: " .. task.text)
            print("Status: " .. task.status)
            print("+++++++++++++++++++++++++++++++")
        end
        
    end,
    ["2"] = function()
        print("Selected: Add task")
        
    end,
    ["3"] = function()
        print("Exiting the program...")
        os.exit()
    end
}


return actions