class Drug < ApplicationRecord
    has_many :prescription_drugs, dependent: :destroy
end
