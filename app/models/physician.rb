class Physician < ApplicationRecord
    has_many :offices
    has_many :appointments
    has_many :patients, through: :appointments
end
