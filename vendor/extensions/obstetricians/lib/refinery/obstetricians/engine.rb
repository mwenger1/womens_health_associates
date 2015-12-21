module Refinery
  module Obstetricians
    class Engine < Rails::Engine
      extend Refinery::Engine
      isolate_namespace Refinery::Obstetricians

      engine_name :refinery_obstetricians

      before_inclusion do
        Refinery::Plugin.register do |plugin|
          plugin.name = "obstetricians"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.obstetricians_admin_obstetricians_path }
          plugin.pathname = root
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::Obstetricians)
      end
    end
  end
end
