class CreateSkillsAndProjectsTables < ActiveRecord::Migration
  def change
    create_table :skills do |t|
    	t.column :name, :string
    	t.column :description, :string

    	t.timestamps
    end

    create_table :projects do |t|
    	t.column :name, :string
    	t.column :description, :string
    	t.column :link, :string

    	t.timestamps
    end
  end
end
