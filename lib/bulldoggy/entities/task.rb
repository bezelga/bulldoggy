module Bulldoggy
  module Entities
    class Task
      attr_accessor :id, :description, :done

      def initialize(description)
        @description = description
        @done = false
      end
    end
  end
end
