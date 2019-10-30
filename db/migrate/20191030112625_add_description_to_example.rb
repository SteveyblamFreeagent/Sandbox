class AddDescriptionToExample < ActiveRecord::Migration[6.0]
  def change
    add_column :examples, :description, :text
  end
end
