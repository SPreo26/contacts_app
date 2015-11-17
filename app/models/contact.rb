class Contact < ActiveRecord::Base

  def first_last_name
      first_name + last_name
  end

end
