class AddCommentsTable < ActiveRecord::Migration
	def change
		create_table :comments do |t|
			t.text   	:content
			t.integer 	:post_id
			t.integer	:user_id

			t.timestamp
		end

	end
end
