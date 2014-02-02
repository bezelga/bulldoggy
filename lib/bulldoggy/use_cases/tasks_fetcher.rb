module Bulldoggy
  module UseCases
    class TasksFetcher
      def fetch
        Bulldoggy::Repository.for(:task).all.map do |task|
          # IMPROVE: create a TaskSerializer to do this job
          { id: task.id, description: task.description, :done => task.done }
        end
      end
    end
  end
end
