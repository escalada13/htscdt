class Htscdt < ActiveRecord::Base
	has_many :line_items

	before_destroy :ensure_not_referenced_by_any_line_item

	validates :htsus, :date, :author, :inv_description, :gen_eng_description, :gen_esp_description, :early_triggers, :legal_authority, :comments, :confidence, :image_url, 
						presence: true
	validates :image_url, 
						format: {
							with: %r{\.(gif|jpg|png)\Z}i, 
							message: 'must be a URL for GIF, JPG or PNG image.'
						}
	validates :htsus, uniqueness: true
	validates :htsus, format: { with: /\d{4}\.\d{2}\.\d{4}/, message: 'The HTSUS format is not correct' }
	validates :htsus, length: {is: 12, message: 'The HTSUS format is 12 characters max'}

	def self.latest
		Htscdt.order(:updated_at).last
	end

	private
		# ensure that there are no line items referencing this product
		def ensure_not_referenced_by_any_line_item
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
		end
	end
	
end
