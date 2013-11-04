class LineItem < ActiveRecord::Base
  belongs_to :htscdt
  belongs_to :cart
end
