class AddAltToExt < ActiveRecord::Migration
  def change
    add_column :exteriors, :alt_inter, :string
    add_column :exteriors, :title_inter, :string
    add_column :exteriors, :desc_inter, :text

    add_column :exteriors, :alt_struct, :string
    add_column :exteriors, :title_struct, :string
    add_column :exteriors, :desc_struct, :text

    add_column :exteriors, :alt_per, :string
    add_column :exteriors, :title_per, :string
    add_column :exteriors, :desc_per, :text
  end
end
