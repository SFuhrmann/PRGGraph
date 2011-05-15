class CreateGraphs < ActiveRecord::Migration
  def self.up
    create_table :graphs do |t|
      t.integer :vertex1_id
      t.integer :vertex2_id
      t.integer :edge_length

      t.timestamps
    end
  end

  def self.down
    drop_table :graphs
  end
end
