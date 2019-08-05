module ProfileWidget
  class Admin::SurveysController < Admin::BaseController

    before_action :set_survey, only: [:show, :edit, :update, :destroy]

    def index
      @surveys = ProfileWidget::Survey.page(params[:page]).per(10)
      respond_to do |format|
        format.html
      end
    end

    def new
      @survey = ProfileWidget::Survey.new
      respond_to do |format|
        format.html
      end
    end

    def create

    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def set_survey

    end

    def survey_params
      params.require(:survey).permit(:title, questions_attributes: [:id, :title, :_destroy])
    end

  end
end