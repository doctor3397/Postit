class AddCategoriesTable < ActiveRecord::Migration
	def change
		create_table :categories do |t|
			t.string :title
		end

		create_table :connections do |t|
			t.integer :category_id
			t.integer :post_id
		end
	end
end
