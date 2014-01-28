require "bulldoggy/version"

require 'bulldoggy/use_cases/list_creator'
require 'bulldoggy/use_cases/task_adder'
require 'bulldoggy/entities/list'
require 'bulldoggy/entities/task'
require 'bulldoggy/repository'

module Bulldoggy
  # Your code goes here...
end

Bulldoggy::Repository.register :list, Bulldoggy::Repositories::InMemory::Lists.new
Bulldoggy::Repository.register :task, Bulldoggy::Repositories::InMemory::Lists.new
