class Prescription < ApplicationRecord
  has_many :prescription_drugs
  belongs_to :doctor
end
