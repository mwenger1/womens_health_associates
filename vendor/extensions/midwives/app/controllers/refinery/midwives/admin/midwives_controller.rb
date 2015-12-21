module Refinery
  module Midwives
    module Admin
      class MidwivesController < ::Refinery::AdminController

        crudify :'refinery/midwives/midwife',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def midwife_params
          params.require(:midwife).permit(:name, :title, :description, :photo_id)
        end
      end
    end
  end
end
