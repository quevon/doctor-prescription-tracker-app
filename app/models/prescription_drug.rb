class PrescriptionDrug < ApplicationRecord
  belongs_to :prescription
  belongs_to :drug
  validates :quantity, presence:true
  validates :note, presence:true
  validates :discount, presence:true


end
