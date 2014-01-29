module Bulldoggy
  module Entities
    class Task
      attr_accessor :id, :description

      def initialize(description)
        @description = description
      end
    end
  end
end
