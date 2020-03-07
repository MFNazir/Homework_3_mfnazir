class Lineitem < ApplicationRecord
  belongs_to :invoice
  belongs_to :metalitem
end
