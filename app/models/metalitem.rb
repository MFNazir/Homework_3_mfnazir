class Metalitem < ApplicationRecord
    has_many :lineitems
    has_many :invoices, through: :lineitems
end
