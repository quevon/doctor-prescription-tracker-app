class PrescriptionsController < ApplicationController
  def index
    @doctor = Doctor.find(params[:doctor_id])
    @prescriptions = @doctor.prescriptions
  end
  def new
      @doctor = Doctor.find(params[:doctor_id])
      @prescription = @doctor.prescriptions.build
  end
  def create
      @doctor = Doctor.find(params[:doctor_id])
      @prescription = @doctor.prescriptions.build(prescription_params)

      if @prescription.save
          redirect_to doctor_prescriptions_path(@doctor.id)
      else
          render :new
      end
  end
  def destroy
      @doctor = Doctor.find(params[:doctor_id])
      @prescription = Prescription.find(params[:id])
      @prescription.destroy
      redirect_to doctor_prescriptions_path(@doctor.id)
  end

  private

  def prescription_params
      params.require(:prescription).permit(:prescription_date,:doctor_id)
  end
end
