module Bulldoggy
  module UseCases
    class TaskChecker
      def initialize(task_id)
        @task_id = task_id
      end

      def check
        task_repo.check(@task_id)
      end

      private

      def task_repo
        Repository.for(:task)
      end
    end
  end
end
