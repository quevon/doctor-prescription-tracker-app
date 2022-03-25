class Doctor < ApplicationRecord
    has_many :prescriptions , dependent: :destroy
    validates :doctor_name, presence:true
    validates :doctor_num, presence:true, length: { is: 11 }
end
