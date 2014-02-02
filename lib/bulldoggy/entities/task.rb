module Bulldoggy
  module Entities
    class Task
      attr_accessor :id, :description, :done

      def initialize(description, done=false)
        @description = description
        @done = done
      end
    end
  end
end
