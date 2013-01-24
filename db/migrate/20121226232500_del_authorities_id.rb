class DelAuthoritiesId < ActiveRecord::Migration
  def change
    #外部キー追加　
       remove_column  :mst_jinins, :authorities_id
       add_column  :mst_jinins, :authority_id,:integer,:null => false,:default => 1
  end
end