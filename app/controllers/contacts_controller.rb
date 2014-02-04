class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Дякоємо вам за повідомлення!'
    else
      flash.now[:error] = 'Неможу відіслати повідомлення.'
      render :new
    end
  end
end
