Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :obstetricians do
    resources :obstetricians, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :obstetricians, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :obstetricians, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
