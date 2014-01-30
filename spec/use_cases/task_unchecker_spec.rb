require 'spec_helper'

module Bulldoggy
  module UseCases
    describe TaskUnchecker do
      subject(:unchecker) { described_class.new(task_id) }

      describe '#uncheck' do
        subject(:uncheck) { unchecker.uncheck }
        let(:task) { Bulldoggy.add_task('hi') }
        let(:task_id) { task.id }

        before do
          Bulldoggy.check_task(task_id)
        end

        context 'when the task with the given id exists' do
          it 'unchecks the task' do
            expect { uncheck }.to change { task.done }.from(true).to(false)
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
