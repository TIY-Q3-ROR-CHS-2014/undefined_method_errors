class AddEmailToVolunteers < ActiveRecord::Migration
	def change
		## Database authenticatable
		add_column :volunteers, :email, :string, null: false, default: ""
		add_column :volunteers, :encrypted_password, :string, null: false, default: ""

		## Recoverable
		add_column	:volunteers,	:reset_password_token, :string
		add_column	:volunteers, :reset_password_sent_at, :string	

		## Rememberable
		add_column	:volunteers,	:remember_created_at, :datetime

		## Trackable
		add_column	:volunteers, :sign_in_count, :integer,	default: 0, null: false
		add_column	:volunteers,	:current_sign_in_at, :datetime
		add_column	:volunteers,	:last_sign_in_at, :datetime
		add_column	:volunteers, :current_sign_in_ip, :string
		add_column	:volunteers,	:last_sign_in_ip, :string

  	add_index :volunteers, :email,                unique: true
  	add_index :volunteers, :reset_password_token, unique: true

 	end
end