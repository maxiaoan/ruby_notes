class CreateIndex < ActiveRecord::Migration[5.2]
	def up
		add_index :products, :name
	end

	def down
		remove_index :products, :name
	end

end

