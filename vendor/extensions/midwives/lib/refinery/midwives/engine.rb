module Refinery
  module Midwives
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Midwives

      engine_name :refinery_midwives

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "midwives"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.midwives_admin_midwives_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Midwives)
      end
    end
  end
end
