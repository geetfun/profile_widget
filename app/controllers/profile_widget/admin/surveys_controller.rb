module ProfileWidget
  class Admin::SurveysController < Admin::BaseController

    before_action :set_survey, only: [:show, :edit, :update, :destroy]

    def index
      @surveys = ProfileWidget::Survey.page(params[:page]).per(10)
      respond_to do |format|
        format.html
      end
    end

    def active
      @surveys = ProfileWidget::Survey.where(active: true).page(params[:page]).per(10)
      respond_to do |format|
        format.html { render "index" }
      end
    end

    def inactive
      @surveys = ProfileWidget::Survey.where(active: false).page(params[:page]).per(10)
      respond_to do |format|
        format.html { render "index" }
      end
    end

    def new
      @survey = ProfileWidget::Survey.new
      respond_to do |format|
        format.html
      end
    end

    def create
      @survey = ProfileWidget::Survey.new(survey_params)
      respond_to do |format|
        if @survey.save
          format.html { redirect_to admin_survey_path(@survey), notice: "Survey created" }
        else
          flash.now[:alert] = "Please try again"
          format.html { render "new" }
        end
      end
    end

    def show
      respond_to do |format|
        format.html
      end
    end

    def edit
      respond_to do |format|
        format.html
      end
    end

    def update
      respond_to do |format|
        if @survey.update(survey_params)
          format.html { redirect_to admin_survey_path(@survey), notice: "Survey created" }
        else
          flash.now[:alert] = "Please try again"
          format.html { render "new" }
        end
      end
    end

    def destroy
      @survey.destroy
      respond_to do |format|
        format.html { redirect_to admin_surveys_path, notice: "Survey destroyed" }
      end
    end

    private

    def set_survey
      @survey = ProfileWidget::Survey.find(params[:id])
    end

    def survey_params
      params.require(:survey).permit(:title, questions_attributes: [:id, :title, :_destroy])
    end

  end
end