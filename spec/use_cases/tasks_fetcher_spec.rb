require 'spec_helper'

module Bulldoggy
  module UseCases
    describe TasksFetcher do
      subject(:fetcher) { described_class.new }

      describe '#fetch' do
        subject(:fetch) { fetcher.fetch }

        let(:task_repo) { Repository.for(:task) }

        context 'when there are no tasks yet' do
          it { should == [] }
        end

        context 'when there are 2 tasks' do
          before do
            2.times do |n|
              Bulldoggy.add_task("task##{n}")
            end
          end

          let(:task1) { { id: 1, description: 'task#0', :done => false }  }
          let(:task2) { { id: 2, description: 'task#1', :done => false } }

          it { should == [task1, task2] }
        end
      end
    end
  end
end
