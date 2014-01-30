module Bulldoggy
  module UseCases
    class TaskChecker
      def initialize(task_id)
        @task_id = task_id
      end

      def check
        return :task_not_found unless task
        task.done = true
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
