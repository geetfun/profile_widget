module ProfileWidget
  class Admin::HomeController < Admin::BaseController

    def index
      respond_to do |format|
        format.html
      end
    end

  end
end