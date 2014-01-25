class Repository
  def self.register(type, repo)
    repositories[type] = repo
  end

  def self.for(type)
    repositories[type]
  end

  def self.repositories
    @_repos ||= {}
  end
end
