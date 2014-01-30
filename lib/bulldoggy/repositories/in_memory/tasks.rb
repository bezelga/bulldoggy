module Bulldoggy
  module Repositories
    module InMemory
      class Tasks
        def initialize
          @tasks = {}
          @next_id = 1
        end

        def save(task)
          task.id = @next_id
          @tasks[@next_id] = task
          @next_id += 1
          task
        end

        def find(id)
          @tasks[id]
        end

        def all
          @tasks
        end

        def delete_all
          @tasks = {}
          @next_id = 1
        end

        def first
          first_key = @tasks.keys.sort.first
          @tasks[first_key]
        end

        def last
          last_key = @tasks.keys.sort.last
          @tasks[last_key]
        end
      end
    end
  end
end
