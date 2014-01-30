module Bulldoggy
  module UseCases
    class TaskUnchecker
      def initialize(task_id)
        @task_id = task_id
      end

      def uncheck
        return :task_not_found unless task
        task.done = false
        task
      end

      private

      def task_repo
        Repository.for(:task)
      end

      def task
        @task ||= task_repo.find(@task_id)
      end
    end
  end
end
