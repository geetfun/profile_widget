module ProfileWidget
  class SurveysController < ApplicationController

    before_action :set_profile, :find_or_initialize_response
    skip_before_action :check_onboarding

    def create
      @survey.key = params[:survey][:key]
      @survey.responses = params[:survey][:responses]
      @survey.save
      respond_to do |format|
        format.js
      end
    end

    private

    def set_profile
      @profile = current_user.profile
    end

    def find_or_initialize_response
      @survey = ProfileWidget::Survey.find_or_create_by(key: params[:survey][:key], profile_widget_profile_id: @profile.id)
    end

  end
end