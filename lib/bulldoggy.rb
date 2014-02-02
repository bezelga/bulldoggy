require "bulldoggy/version"
require 'bulldoggy/entities/task'
require 'bulldoggy/repository'
Dir[File.dirname(__FILE__) + "/bulldoggy/use_cases/**/*.rb"].each { |file| require file }

Bulldoggy::Repository.register :task, Bulldoggy::Repositories::InMemory::Tasks.new

module Bulldoggy
  class << self
    def add_task(description)
      UseCases::TaskAdder.new.add(description)
    end

    def remove_task(task_id)
      UseCases::TaskRemover.new.remove(task_id)
    end

    def fetch
      UseCases::TasksFetcher.new.fetch
    end

    def check_task(task_id)
      UseCases::TaskChecker.new(task_id).check
    end

    def uncheck_task(task_id)
      UseCases::TaskUnchecker.new(task_id).uncheck
    end
  end
end
