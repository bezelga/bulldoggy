module Bulldoggy
  module UseCases
    class TasksFetcher
      def fetch
        Bulldoggy::Repository.for(:task).all.map do |id, task|
          # IMPROVE: create a TaskSerializer to do this job
          { id: id, description: task.description }
        end
      end
    end
  end
end
