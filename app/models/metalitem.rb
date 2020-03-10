class Metalitem < ApplicationRecord
    has_many :lineitems
    has_many :invoices, through: :lineitems

   #<% # def item_total
        # self.quantity  ||= 0  
        #self.unit_price  ||= 0               
        #self.quantity * self.unit_price
   #end 
   #%>
end
