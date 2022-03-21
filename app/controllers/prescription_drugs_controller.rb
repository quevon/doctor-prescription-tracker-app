class PrescriptionDrugsController < ApplicationController
  def index
    @prescription = Prescription.find(params[:prescription_id])
    @prescription_drugs = @prescription.prescription_drugs
  end

  def new
  end

  def create
  end

  def edit
  end
end
