require 'spec_helper'

describe Bulldoggy::Entities::List do
  subject(:list) { described_class }

  describe 'instantiating a new list' do
    let(:name) { 'my awesome list name' }

    it 'instantiates a new list with a name' do
      list.new(name).should be_kind_of(list)
    end
  end
end
