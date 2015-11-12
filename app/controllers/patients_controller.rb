class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    render json: @patient, :include => [:conditions]
  end

  def index
    render json: Patient.all, :include => [:conditions]
  end
end
