class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
    	t.belongs_to :user, index: true
    	t.text :description

    	t.timestamps
    end
  end
end
