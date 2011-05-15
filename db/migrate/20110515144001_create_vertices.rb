class CreateVertices < ActiveRecord::Migration
  def self.up
    create_table :vertices do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :vertices
  end
end
