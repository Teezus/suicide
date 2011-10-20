class CreateLeagues < ActiveRecord::Migration
  def self.up
    create_table :leagues do |t|
      t.integer :admin
      t.boolean :repick

      t.timestamps
    end
  end

  def self.down
    drop_table :leagues
  end
end