class CreateTermsOfUses < ActiveRecord::Migration
  def change
    create_table :terms_of_uses do |t|
      t.text :descriptions

      t.timestamps
    end
  end
end
