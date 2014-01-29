require "bulldoggy/version"

require 'bulldoggy/entities/task'
require 'bulldoggy/repository'

require 'bulldoggy/use_cases/task_adder'
require 'bulldoggy/use_cases/tasks_fetcher'

Bulldoggy::Repository.register :task, Bulldoggy::Repositories::InMemory::Tasks.new

module Bulldoggy
  class << self
    # TODO: test me
    def add_task(description)
      UseCases::TaskAdder.new.add(description)
    end

    def fetch
      UseCases::TasksFetcher.new.fetch
    end
  end
end

