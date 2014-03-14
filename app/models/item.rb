class Item < ActiveRecord::Base
  belongs_to :invoice

  def total
    self.qty * self.unit_price
  end
end
