class MstJinin < ActiveRecord::Base
  belongs_to :authority
  
  attr_accessible :authority_id,:authoritylevel, :contact1, :contact2, :contact3,:id,
   :kana_mei, :kana_sei, :mailaddress1, :mailaddress2,:mailaddress3,
    :name_sei, :neme_mei, :password, :punchnotify,:registdate, :registuser, :sendareamail, :updatedate, :updateuser,
    :lock_version,:password_confirmation
    
  
#　バリデート
  # 漢字　姓名
  validates :name_sei, :neme_mei, :length=>1..10
  # カナ　姓名
  validates :kana_sei, :kana_mei, :length=>1..10
  
  # 連絡先1
  validates :contact1, :length=>1..16 ,
                       :format=>(/^[0-9]+$/)
    
  # 連絡先2,連絡先3
  validates :contact2, :contact3, 
                       :length=>1..16 ,
                       :format=>(/^[0-9]+$/),
                       :allow_blank=>true
  
 #メールアドレス１ 
  validates :mailaddress1,
#            :length => 0..20, 
            :format=>(/^[a-zA-Z0-9_.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$/)

 #メールアドレス2,3
  validates :mailaddress2,:mailaddress3,
            :length => 0..20,
            :allow_blank => true,
            :format => (/^[a-zA-Z0-9_.-]+@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,4}$/)

  validates :password,
            :length => 4..20

 
  validates_confirmation_of :password
    
end
