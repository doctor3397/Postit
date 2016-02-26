class AddUsersTable < ActiveRecord::Migration
	def change
		create_table :users do |t|
			t.string :name
			t.string :email

			t.timestamp
		end
	end
end
