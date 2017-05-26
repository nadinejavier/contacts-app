class Contact < ApplicationRecord
  has_many :group_contacts
  has_many :groups, through: :group_contacts
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true    

  def friendly_updated_at
    updated_at.strftime("%e %b %Y %H:%M:%S%p")
  end

  def full_name
    first_name + " " + last_name
  end

  def jap_prefix
    "+81 #{phone_number}"
  end

end
