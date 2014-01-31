module Bulldoggy
  module UseCases
    class TaskRemover

      def remove(task_id)
        task_repo.delete(task_id) || :task_not_found
      end

      private

      def task_repo
        Repository.for(:task)
      end
    end
  end
end
