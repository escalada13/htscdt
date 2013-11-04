class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def add_htscdt(htscdt_id)
		current_item = line_items.find_by(htscdt_id: htscdt_id)
		if current_item
			current_item.quantity += 1
		else
			current_item = line_items.build(htscdt_id: htscdt_id)
		end
		current_item
	end

end
