class AddColumnToTag < ActiveRecord::Migration[5.1]
  def change
    add_column :tags, :description, :string
  end
end
