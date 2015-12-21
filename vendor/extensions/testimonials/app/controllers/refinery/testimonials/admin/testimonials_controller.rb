module Refinery
  module Testimonials
    module Admin
      class TestimonialsController < ::Refinery::AdminController

        crudify :'refinery/testimonials/testimonial',
                :title_attribute => 'name'

        private

        # Only allow a trusted parameter "white list" through.
        def testimonial_params
          params.require(:testimonial).permit(:name, :location, :quote, :photo_id)
        end
      end
    end
  end
end
