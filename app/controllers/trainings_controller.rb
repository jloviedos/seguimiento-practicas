class TrainingsController < ApplicationController
  respond_to :html, :json
  before_filter :authenticate_instructor!
  

  def index
    instructor = current_instructor
    @trainings = instructor.trainings
    respond_with @trainings
  end

  def show
    instructor = current_instructor
    @training = instructor.trainings.find params[:id]
    respond_with @training
  end
end
