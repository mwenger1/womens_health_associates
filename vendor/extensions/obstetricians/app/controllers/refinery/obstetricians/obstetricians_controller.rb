module Refinery
  module Obstetricians
    class ObstetriciansController < ::ApplicationController

      before_action :find_all_obstetricians
      before_action :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @obstetrician in the line below:
        present(@page)
      end

      def show
        @obstetrician = Obstetrician.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @obstetrician in the line below:
        present(@page)
      end

    protected

      def find_all_obstetricians
        @obstetricians = Obstetrician.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/obstetricians").first
      end

    end
  end
end
