require 'test_helper'

class HtscdtTest < ActiveSupport::TestCase
	fixtures :htscdt

	test "product attributes must not be empty" do
		htscdt = Htscdt.new
		assert htscdt.invalid?
		assert htscdt.errors[:htsus].any?
		assert htscdt.errors[:date].any?
		assert htscdt.errors[:author].any?
		assert htscdt.errors[:inv_description].any?
		assert htscdt.errors[:gen_eng_description].any?
		assert htscdt.errors[:gen_esp_description].any?
		assert htscdt.errors[:early_triggers].any?
		assert htscdt.errors[:legal_authority].any?
		assert htscdt.errors[:comments].any?
		assert htscdt.errors[:confidence].any?
	end

	def new_product(image_url)
		Htscdt.new(
							htsus:"0000.00.0000",
							date:"2013-01-01",
							author:"lorem ipsun",
							verified_by:"lorem ipsun",
							inv_description:"lorem ipsun",
							gen_eng_description:"lorem ipsun",
							gen_esp_description:"lorem ipsun",
							early_triggers:"lorem ipsun",
							legal_authority:"lorem ipsun",
							la_link:"lorem ipsun",
							other_link:"lorem ipsun",
							comments:"lorem ipsun",
							confidence:"lorem ipsun",
							image_url: image_url
							)
		end
		test "image url" do
		ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
		http://a.b.c/x/y/z/fred.gif }
		bad = %w{ fred.doc fred.gif/more fred.gif.more }
		ok.each do |name|
		assert new_htscdt(name).valid?, "#{name} should be valid"
		end
		bad.each do |name|
		assert new_htscdt(name).invalid?, "#{name} shouldn't be valid"
		end
	end

	test "htscdt is not valid without a unique htsus" do
		htsus = Htscdt.new(
							htsus:"0000.00.0000",
							date:"2013-01-01",
							author:"lorem ipsun",
							verified_by:"lorem ipsun",
							inv_description:"lorem ipsun",
							gen_eng_description:"lorem ipsun",
							gen_esp_description:"lorem ipsun",
							early_triggers:"lorem ipsun",
							legal_authority:"lorem ipsun",
							la_link:"lorem ipsun",
							other_link:"lorem ipsun",
							comments:"lorem ipsun",
							confidence:"lorem ipsun",
							image_url: image_url
							)
		assert htsus.invalid?
		assert_equal [I18n.translate('errors.messages.taken')], product.errors[:htsus]
	end

end
