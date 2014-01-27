require "bulldoggy/version"

require 'bulldoggy/use_cases/list_creator'
require 'bulldoggy/entities/list'
require 'bulldoggy/repository'
require 'bulldoggy/repositories/in_memory/lists'

module Bulldoggy
  # Your code goes here...
end

Bulldoggy::Repository.register :list, Bulldoggy::Repositories::InMemory::Lists.new
