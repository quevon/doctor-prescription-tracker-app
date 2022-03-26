class Drug < ApplicationRecord
    has_many :prescription_drugs, dependent: :destroy
    validates :drug_name, presence:true , uniqueness: true
    validates :drug_price, presence:true
end
