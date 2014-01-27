require 'spec_helper'

describe Bulldoggy::Repositories::InMemory::Lists do
  subject(:lists) { described_class.new }

  describe '#save' do
    let(:list) { Bulldoggy::Entities::List.new('hello world list') }

    it 'saves the list' do
      lists.save(list)
      expect { lists.save(list) }.to change { lists.all.size }.by(1)
    end
  end
end
