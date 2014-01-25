require "bulldog/version"

require 'bulldog/use_cases/list_creator'
require 'bulldog/entities/list'
require 'bulldog/repository'
require 'bulldog/repositories/in_memory/lists'

module Bulldog
  # Your code goes here...
end

Repository.register :list, Repositories::InMemory::Lists.new
