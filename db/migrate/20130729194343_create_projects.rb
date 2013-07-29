class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, :null => false

      t.timestamps
      
      t.index(:name, {unique: true})
    end
  end
end
