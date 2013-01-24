class CreateAuthorities < ActiveRecord::Migration
  def change
    create_table :authorities do |t|
      t.string :authority_name
      t.string :registuser
      t.string :updateuser
      t.string :create_user
      t.string :update_user
      t.integer :lock_version

      t.timestamps
    end
  end
end
