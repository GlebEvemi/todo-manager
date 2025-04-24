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
        local file = io.open("data/tasks.lua", "w")
        if file == nil then
            return 
        end
        print("Selected: Add task")
        local text, status
        print("Write the task description")
        io.write("> ")
        text = io.read()
        print("Write the status")
        io.write(">")
        status = io.read()
        table.insert(tasks, { text = text, status = status })

        file:write("return {\n")
        for _, task in ipairs(tasks) do
        file:write(string.format(
            "  { text = %q, status = %q },\n",
            task.text, task.status
        ))
    end
    file:write("}\n")
    file:close()

    print("Task saved successfully!")
        
    end,
    ["3"] = function()
        print("Exiting the program...")
        os.exit()
    end
}


return actions