json.array!(@htscdts) do |htscdt|
  json.extract! htscdt, :htsus, :date, :author, :verified_by, :inv_description, :gen_eng_description, :gen_esp_description, :early_triggers, :legal_authority, :la_link, :other_link, :comments, :confidence, :image_url
  json.url htscdt_url(htscdt, format: :json)
end
