 class CreateMathquests < ActiveRecord::Migration[5.2]
  def self.up
    create_table :mathquests do |t|
      t.integer :firstval, null:false
      t.string :mathoper, null:false
      t.integer :secondval, null:false
      t.boolean :iscorrect, default:false
      t.timestamps
    end
  end

  def self.down
     drop_table :mathquests
   end
end

