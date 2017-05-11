class Contact < ApplicationRecord
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
