module Bulldog
  module Repositories
    module InMemory
      class Lists
        def initialize
          @lists = {}
          @next_id = 1
        end

        def save(list)
          list.id = @next_id
          @lists[@next_id] = list
          @next_id += 1
          list
        end

        def all
          @lists
        end

        def first
          first_key = @lists.keys.sort.first
          @lists[first_key]
        end

        def last
          last_key = @lists.keys.sort.last
          @lists[last_key]
        end
      end
    end
  end
end
