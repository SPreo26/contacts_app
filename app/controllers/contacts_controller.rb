class ContactsController < ApplicationController

def index


  @contact_visible_attrs = [:first_name, :middle_name, :last_name, :email, :phone, :bio]

  info_is_empty = true

  @contact_visible_attrs.each do |contact_attr_symbol|

      if params[contact_attr_symbol] != ""
        info_is_empty = false
      end

  end

  if !info_is_empty #this is to prevent empty form submissions from creating a contact
    

    @contact_visible_attrs.each do |contact_attr_symbol,index|

      Contact.last.update\
                    ( {contact_attr_symbol => \
                     params[contact_attr_symbol] }) #index+1 skips id and starts with first name

    end
  
  end

  @contacts_all = Contact.all

end

def new_contact_form
    
end

end
