class ChangePhraseToText < ActiveRecord::Migration
  def change
  	change_column :quotes, :phrase,  :text
  end
end
