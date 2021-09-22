class CreatePoll < ActiveRecord::Migration[5.2]
  def change
    create_table :polls do |t|
      t.string :question
      t.integer :ones, :default => 0
      t.integer :twos, :default => 0
      t.integer :threes, :default => 0
      t.integer :fours, :default => 0
      t.integer :fives, :default => 0
      t.timestamps
    end
  end
end
