require 'spec_helper'
require 'siqidemy_task/plugin'

describe SiqidemyTask::Plugin do

  let(:registry) { stub_everything }
  let(:plugin) { SiqidemyTask::Plugin.new(registry) }

  context '.setup' do

    it 'registers its js' do
      plugin.expects(:register_js).with('siqidemy_task')
      plugin.setup
    end

    it 'registers its css' do
      plugin.expects(:register_css).with('siqidemy_task')
      plugin.setup
    end

    it 'registers a task archetype' do
      plugin.expects(:register_archetype).with('task')
      plugin.setup
    end

  end

end
