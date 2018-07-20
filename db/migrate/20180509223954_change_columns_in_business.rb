class ChangeColumnsInBusiness < ActiveRecord::Migration[5.1]
  def change
    change_column :businesses, :wifi, 'boolean USING CAST(false AS boolean)'
    change_column :businesses, :bathroom, 'boolean USING CAST(false AS boolean)'
  end
end
