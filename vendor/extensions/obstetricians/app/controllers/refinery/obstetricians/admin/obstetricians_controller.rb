module Refinery
  module Obstetricians
    module Admin
      class ObstetriciansController < ::Refinery::AdminController

        crudify :'refinery/obstetricians/obstetrician',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def obstetrician_params
          params.require(:obstetrician).permit(:name, :title, :description, :quote, :photo_id)
        end
      end
    end
  end
end
