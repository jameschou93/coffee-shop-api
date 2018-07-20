class AddImageToBusiness < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :img_url, :string
  end
end
