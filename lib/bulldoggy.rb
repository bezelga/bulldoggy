require "bulldoggy/version"

require 'bulldoggy/use_cases/task_adder'
require 'bulldoggy/entities/task'
require 'bulldoggy/repository'

Bulldoggy::Repository.register :task, Bulldoggy::Repositories::InMemory::Tasks.new

module Bulldoggy
  class << self
    def add_task(description)
      UseCases::TaskAdder.new.add(description)
    end
  end
end

