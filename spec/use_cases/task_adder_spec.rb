require 'spec_helper'

describe Bulldoggy::UseCases::TaskAdder do
  subject(:adder) { described_class.new }

  describe '.add' do
    subject(:add) { adder.add(description) }

    let(:task_repo) { Bulldoggy::Repository.for(:task) }
    let(:description) { 'Create an app with clean architecture' }
    #let(:id) { 1 }

    it 'adds the task' do
      expect { add }.to change { task_repo.all.size }.by(1)
    end
  end
end
