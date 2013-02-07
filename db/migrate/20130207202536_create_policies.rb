class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :video_id
      t.integer :country_id
      t.string :type

      t.timestamps
    end
  end
end
