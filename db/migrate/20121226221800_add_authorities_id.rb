class AddAuthoritiesId < ActiveRecord::Migration
  def change
    #外部キー追加　
       add_column  :mst_jinins, :authorities_id,:integer,:null => false,:default => 1
  end
end