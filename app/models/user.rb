class User < ActiveRecord::Base
  validates :username, :presence => true, :uniqueness => true

  has_many :contacts,
    foreign_key: :user_id,
    class_name: "Contact"

  has_many :contact_shares,
    foreign_key: :user_id,
    class_name: "ContactShare"

  has_many :shared_contacts,
    through: :contact_shares,
    source: :contact

end
