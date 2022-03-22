class Doctor < ApplicationRecord
    has_many :prescriptions , dependent: :destroy
end
