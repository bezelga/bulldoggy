require 'spec_helper'

module Bulldoggy
  module UseCases
    describe TaskRemover do
      subject(:remover) { described_class.new }

      let(:task_repo) { Bulldoggy::Repository.for(:task) }

      describe '#remove' do
        subject(:remove) { remover.remove(task_id) }

        let(:task) { Bulldoggy.add_task('hi') }
        let(:task_id) { task.id }

        before { task }

        context 'when the task with the given id exists' do
          it 'removes the task' do
            expect { remove }.to change { task_repo.all.size }.by(-1)
          end
        end

        context 'when there is no task with this id' do
          let(:task_id) { 42 }
          it { should == :task_not_found }
        end
      end
    end
  end
end
