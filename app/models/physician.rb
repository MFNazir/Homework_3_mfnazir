class Physician < ApplicationRecord
    has_many :offices, inverse_of: :physician
    has_many :appointments
    has_many :patients, through: :appointments
    accepts_nested_attributes_for :offices, reject_if: :all_blank, allow_destroy: true
end
