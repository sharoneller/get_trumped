class AddMoreFieldsToCandidates < ActiveRecord::Migration
  def change
    add_column :candidates, :image_file_name, :string
  end
end
