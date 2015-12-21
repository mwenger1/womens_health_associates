module Refinery
  module Midwives
    class MidwivesController < ::ApplicationController

      before_action :find_all_midwives
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @midwife in the line below:
        present(@page)
      end

      def show
        @midwife = Midwife.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @midwife in the line below:
        present(@page)
      end

    protected

      def find_all_midwives
        @midwives = Midwife.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/midwives").first
      end

    end
  end
end
