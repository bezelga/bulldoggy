module Bulldoggy
  module UseCases
    class TaskAdder
      def add(description)
        task_repo.save new_task(description)
      end

      private

      def new_task(description)
        Entities::Task.new(description)
      end

      def task_repo
        Repository.for(:task)
      end
    end
  end
end
