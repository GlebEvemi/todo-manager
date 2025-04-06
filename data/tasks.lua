tasks = {
    {}
}


tasks[1].task = "task1"
tasks[1].text = "text1"

table.insert(tasks, 2, "task2")
table.insert(tasks, 2, "text2")


for i = 1, #tasks do
    print(tasks[i])
end