module Admin
  class AdminController  < ApplicationController


    before_filter :kick

    def kick
      if not current_user then redirect_to root_path

      end
    end
  end
end