module UseCases
  class ListCreator
    def self.create(name)
      params = { name: name }
      new(params).create
    end

    def initialize(params)
      @params = params
    end

    def create
      saved_list = list_repo.save(list)
      saved_list.id
    end

    private

    def list
      Entities::List.new(@params[:name])
    end

    def list_repo
      Repository.for(:list)
    end
  end
end