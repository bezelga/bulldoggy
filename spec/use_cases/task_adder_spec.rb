require 'spec_helper'

describe TaskAdder do
  subject(:adder) { described_class }

  describe '.add' do
    subject(:add) { adder.add(description, list_id) }

    let(:description) { 'Create an app with clean architecture' }
    let(:id) { 1 }

    context 'when the list exists' do
      xit 'adds a task to the list' do
        add.should be_true
      end
    end
  end
end
