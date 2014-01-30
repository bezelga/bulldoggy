require 'spec_helper'

module Bulldoggy
  module UseCases
    describe TaskChecker do
      subject(:checker) { described_class.new(task_id) }

      describe '#check' do
        subject(:check) { checker.check }
        let(:task) { Bulldoggy.add_task('hi') }
        let(:task_id) { task.id }

        context 'when the task with the given id exists' do
          it 'checks the task' do
            expect { check }.to change { task.done }.from(false).to(true)
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
