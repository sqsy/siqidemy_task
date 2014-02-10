require 'siqidemy_task/plugin'

module SiqidemyTask
  class Engine < Rails::Engine

    engine_name 'siqidemy_task'

    initializer "siqidemy_task.configure_rails_initialization" do |app|

      app.config.after_initialize do
        SiqidemyPluginRegistry.setup(SiqidemyTask::Plugin)
      end

      app.config.to_prepare do
        SiqidemyTask::Plugin.include_mixins
      end
    end

  end
end
