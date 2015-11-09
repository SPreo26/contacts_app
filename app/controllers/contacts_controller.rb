class ContactsController < ApplicationController

def index

  @contacts_all = Contact.all

end

end
