module Bulldoggy
  module Repositories
    module InMemory
      class Tasks
        def initialize
          @tasks = {}
          @next_id = 1
        end

        def all
          @tasks.values
        end

        def find(id)
          @tasks[id]
        end

        def check(id)
          task = @tasks[id]
          return :task_not_found unless task
          task.done = true
          task
        end

        def uncheck(id)
          task = @tasks[id]
          return :task_not_found unless task
          task.done = false
          task
        end

        def save(task)
          task.id = @next_id
          @tasks[@next_id] = task
          @next_id += 1
          task
        end

        def delete_all
          @tasks = {}
          @next_id = 1
        end

        def delete(id)
          @tasks.delete id
        end
      end
    end
  end
end
