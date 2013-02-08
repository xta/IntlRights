class AddIndexTables < ActiveRecord::Migration
    add_index :countries, [:name, :alpha2, :alpha3, :numeric], :name => 'country_first_index'
    add_index :policies, [:video_id, :country_id, :rights], :name => 'policy_first_index'
    add_index :videos, [:vid], :name => 'video_first_index'
end
