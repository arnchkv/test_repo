class CreateSchoolRegisters < ActiveRecord::Migration[5.1]
  def change
    create_table :school_registers do |t|
      t.integer :roll
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
