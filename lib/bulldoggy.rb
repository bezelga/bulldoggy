require "bulldoggy/version"

require 'bulldoggy/entities/task'
require 'bulldoggy/repository'

require 'bulldoggy/use_cases/task_adder'
require 'bulldoggy/use_cases/tasks_fetcher'
require 'bulldoggy/use_cases/task_checker'

Bulldoggy::Repository.register :task, Bulldoggy::Repositories::InMemory::Tasks.new

module Bulldoggy
  class << self
    def add_task(description)
      UseCases::TaskAdder.new.add(description)
    end

    def fetch
      UseCases::TasksFetcher.new.fetch
    end

    def check_task(task_id)
      UseCases::TaskChecker.new(task_id).check
    end
  end
end
