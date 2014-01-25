require 'spec_helper'

describe UseCases::ListCreator do
  subject(:creator) { described_class }

  describe '.create' do
    subject(:create) { creator.create(name) }

    let(:name) { 'Learning Clean Architecture' }
    let(:list_repo) { Repository.for(:list) }

    it 'creates a list' do
      expect { create }.to change { list_repo.all.size }.by(1)
    end

    it 'responds the list id' do
      create.should == list_repo.all.size
    end
  end
end
