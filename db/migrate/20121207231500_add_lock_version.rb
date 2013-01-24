class AddLockVersion < ActiveRecord::Migration
  def change
  #ロック用フィールド追加　
  add_column  :mst_jinins, :lock_version,:integer,:null =>false,:default => 0

  end
end