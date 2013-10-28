class CreateHtscdts < ActiveRecord::Migration
  def change
    create_table :htscdts do |t|
      t.string :htsus
      t.date :date
      t.string :author
      t.string :verified_by
      t.string :inv_description
      t.string :gen_eng_description
      t.string :gen_esp_description
      t.string :early_triggers
      t.string :legal_authority
      t.text :comments
      t.string :confidence
      t.string :image_url

      t.timestamps
    end
  end
end
