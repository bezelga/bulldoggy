module Bulldoggy
  module Repositories
    module InMemory
      class Tasks
        def initialize
          @tasks = {}
          @next_id = 1
        end

        def all
          @tasks
        end

        def find(id)
          @tasks[id]
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
