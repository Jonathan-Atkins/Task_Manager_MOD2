class TaskSerializer
    def self.format_tasks(tasks)
      tasks.map do |task|
        {
          id: task.id,
          title: task.title,
          description: task.description
        }
      end
    end

    def self.format_task(task)
        {
          id: task.id,
          title: task.title,
          description: task.description
        }
    end  

    def self.format_created_task(task)
        {
      message: "Task successfully created!",
      task: {
        id: task.id,
        title: task.title,
        description: task.description
      }
    }
    end
  end