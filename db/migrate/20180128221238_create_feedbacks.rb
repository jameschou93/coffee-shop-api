class CreateFeedbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :feedbacks do |t|
      t.integer :user_id
      t.integer :business_id
      t.text :comment
      t.integer :coffee_score
      t.integer :satisfaction_score
      t.integer :noise_level

      t.timestamps
    end
  end
end
