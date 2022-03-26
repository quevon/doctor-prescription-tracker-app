class Prescription < ApplicationRecord
  has_many :prescription_drugs , dependent: :destroy
  belongs_to :doctor
  validates :prescription_date, presence:true

end
