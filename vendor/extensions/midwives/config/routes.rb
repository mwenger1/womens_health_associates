Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :midwives do
    resources :midwives, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :midwives, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :midwives, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
