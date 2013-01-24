class CreateMstJinins < ActiveRecord::Migration
  def change
    create_table :mst_jinins do |t|
      t.string :id
      t.string :name_sei
      t.string :neme_mei
      t.string :kana_sei
      t.string :kana_mei
      t.string :contact1
      t.string :contact2
      t.string :contact3
      t.string :mailaddress1
      t.string :mailaddress2
      t.string :mailaddress3
      t.integer :authoritylevel
      t.string :password
      t.boolean :punchnotify
      t.boolean :sendareamail
      t.string :registuser
      t.timestamp :registdate
      t.string :updateuser
      t.timestamp :updatedate

      t.timestamps
    end
  end
end
