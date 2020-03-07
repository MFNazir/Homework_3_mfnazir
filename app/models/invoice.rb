class Invoice < ApplicationRecord
  has_many :lineitems
  has_many :metalitems, inverse_of: :invoice
  has_many :metalitems, through: :lineitems
  accepts_nested_attributes_for :metalitems, reject_if: :all_blank, allow_destroy: true

end
