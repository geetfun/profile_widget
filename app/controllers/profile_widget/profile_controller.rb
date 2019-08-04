module ProfileWidget
  class ProfileController < ApplicationController

    before_action :set_profile
    skip_before_action :check_onboarding

    def show
      respond_to do |format|
        format.json { render "profile" }
      end
    end

    def update
      if @profile.update(profile_params)
        @event_to_call = "profile_widget.update_success"
      else
        @event_to_call = "profile_widget.update_failure"
      end
      respond_to do |format|
        format.js
        format.json { render "profile" }
      end
    end

    private

    def set_profile
      @profile = current_user.profile
    end

    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :name)
    end

  end
end
