module Bulldoggy
  module UseCases
    class TaskUnchecker
      def initialize(task_id)
        @task_id = task_id
      end

      def uncheck
        task_repo.uncheck(@task_id)
      end

      private

      def task_repo
        Repository.for(:task)
      end
    end
  end
end
